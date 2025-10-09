import { NextRequest, NextResponse } from "next/server";
import bcrypt from "bcrypt";
import { executeQuery } from "@/lib/db";

// GET - Obtener todos los usuarios con información de roles
export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const search = searchParams.get("search") || "";
    const rol_id = searchParams.get("rol_id");
    const activo = searchParams.get("activo");
    const page = parseInt(searchParams.get("page") || "1");
    const limit = parseInt(searchParams.get("limit") || "10");
    const sortFieldParam = searchParams.get("sortField") || "fecha_creacion";
    const sortDirection = searchParams.get("sortDirection") || "desc";

    // Validar campo de ordenamiento para prevenir SQL injection
    const validSortFields = [
      "id",
      "username",
      "email",
      "nombre",
      "apellido",
      "documento",
      "fecha_creacion",
      "fecha_actualizacion",
    ];
    const sortField = validSortFields.includes(sortFieldParam) ? sortFieldParam : "fecha_creacion";

    // Construir condiciones WHERE
    let whereConditions = ["1=1"];
    let queryParams: any[] = [];

    if (search) {
      whereConditions.push(
        "(u.nombre LIKE ? OR u.apellido LIKE ? OR u.email LIKE ? OR u.username LIKE ? OR u.documento LIKE ?)",
      );
      const searchTerm = `%${search}%`;
      queryParams.push(searchTerm, searchTerm, searchTerm, searchTerm, searchTerm);
    }

    if (rol_id) {
      whereConditions.push("u.rol_id = ?");
      queryParams.push(rol_id);
    }

    if (activo !== null && activo !== undefined && activo !== "") {
      whereConditions.push("u.activo = ?");
      queryParams.push(activo === "true" ? "1" : "0");
    }

    const whereClause = whereConditions.join(" AND ");
    const offset = (page - 1) * limit;

    // Query simplificada sin LIMIT para debug
    const query = `SELECT * FROM usuarios LIMIT 10`;
    const usuarios = (await executeQuery(query, [])) as any[];

    // Query para contar total simplificada
    const countQuery = `SELECT COUNT(*) as total FROM usuarios`;
    const totalResult = (await executeQuery(countQuery, [])) as any[];
    const total = totalResult[0]?.total || 0;

    return NextResponse.json({
      usuarios,
      pagination: {
        page,
        limit,
        total,
        totalPages: Math.ceil(total / limit),
      },
    });
  } catch (error) {
    console.error("Error al obtener usuarios:", error);
    return NextResponse.json({ error: "Error interno del servidor" }, { status: 500 });
  }
}

// POST - Crear nuevo usuario
export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { username, email, password, nombre, apellido, documento, telefono, rol_id, activo } = body;

    // Validaciones básicas
    if (!username || !email || !password || !nombre || !apellido || !rol_id) {
      return NextResponse.json({ error: "Campos requeridos faltantes" }, { status: 400 });
    }

    // Verificar si el usuario ya existe
    const existingUser = (await executeQuery("SELECT id FROM usuarios WHERE username = ? OR email = ?", [
      username,
      email,
    ])) as any[];

    if (existingUser.length > 0) {
      return NextResponse.json({ error: "El usuario o email ya existe" }, { status: 409 });
    }

    // Encriptar contraseña
    const saltRounds = 10;
    const password_hash = await bcrypt.hash(password, saltRounds);

    // Insertar usuario
    const insertQuery = `
      INSERT INTO usuarios (username, email, password_hash, nombre, apellido, documento, telefono, rol_id, activo)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
    `;

    const result = (await executeQuery(insertQuery, [
      username,
      email,
      password_hash,
      nombre,
      apellido,
      documento || null,
      telefono || null,
      rol_id,
      activo ? 1 : 0,
    ])) as any;

    return NextResponse.json(
      {
        message: "Usuario creado exitosamente",
        id: result.insertId,
      },
      { status: 201 },
    );
  } catch (error) {
    console.error("Error al crear usuario:", error);
    return NextResponse.json({ error: "Error interno del servidor" }, { status: 500 });
  }
}

// PUT - Actualizar usuario
export async function PUT(request: NextRequest) {
  try {
    const body = await request.json();
    const { id, username, email, password, nombre, apellido, documento, telefono, rol_id, activo } = body;

    if (!id) {
      return NextResponse.json({ error: "ID de usuario requerido" }, { status: 400 });
    }

    // Verificar si el usuario existe
    const existingUser = (await executeQuery("SELECT id FROM usuarios WHERE id = ?", [id])) as any[];

    if (existingUser.length === 0) {
      return NextResponse.json({ error: "Usuario no encontrado" }, { status: 404 });
    }

    // Verificar duplicados (excluyendo el usuario actual)
    const duplicateCheck = (await executeQuery(
      "SELECT id FROM usuarios WHERE (username = ? OR email = ?) AND id != ?",
      [username, email, id],
    )) as any[];

    if (duplicateCheck.length > 0) {
      return NextResponse.json({ error: "El usuario o email ya existe" }, { status: 409 });
    }

    // Construir query de actualización
    let updateFields = [];
    let updateParams = [];

    if (username) {
      updateFields.push("username = ?");
      updateParams.push(username);
    }
    if (email) {
      updateFields.push("email = ?");
      updateParams.push(email);
    }
    if (password) {
      const saltRounds = 10;
      const password_hash = await bcrypt.hash(password, saltRounds);
      updateFields.push("password_hash = ?");
      updateParams.push(password_hash);
    }
    if (nombre) {
      updateFields.push("nombre = ?");
      updateParams.push(nombre);
    }
    if (apellido) {
      updateFields.push("apellido = ?");
      updateParams.push(apellido);
    }
    if (documento !== undefined) {
      updateFields.push("documento = ?");
      updateParams.push(documento || null);
    }
    if (telefono !== undefined) {
      updateFields.push("telefono = ?");
      updateParams.push(telefono || null);
    }
    if (rol_id) {
      updateFields.push("rol_id = ?");
      updateParams.push(rol_id);
    }
    if (activo !== undefined) {
      updateFields.push("activo = ?");
      updateParams.push(activo ? 1 : 0);
    }

    if (updateFields.length === 0) {
      return NextResponse.json({ error: "No hay campos para actualizar" }, { status: 400 });
    }

    updateFields.push("fecha_actualizacion = NOW()");
    updateParams.push(id);

    const updateQuery = `
      UPDATE usuarios 
      SET ${updateFields.join(", ")}
      WHERE id = ?
    `;

    await executeQuery(updateQuery, updateParams);

    return NextResponse.json({
      message: "Usuario actualizado exitosamente",
    });
  } catch (error) {
    console.error("Error al actualizar usuario:", error);
    return NextResponse.json({ error: "Error interno del servidor" }, { status: 500 });
  }
}

// DELETE - Eliminar usuario
export async function DELETE(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const id = searchParams.get("id");

    if (!id) {
      return NextResponse.json({ error: "ID de usuario requerido" }, { status: 400 });
    }

    // Verificar si el usuario existe
    const existingUser = (await executeQuery("SELECT id FROM usuarios WHERE id = ?", [id])) as any[];

    if (existingUser.length === 0) {
      return NextResponse.json({ error: "Usuario no encontrado" }, { status: 404 });
    }

    // Eliminar usuario
    await executeQuery("DELETE FROM usuarios WHERE id = ?", [id]);

    return NextResponse.json({
      message: "Usuario eliminado exitosamente",
    });
  } catch (error) {
    console.error("Error al eliminar usuario:", error);
    return NextResponse.json({ error: "Error interno del servidor" }, { status: 500 });
  }
}
