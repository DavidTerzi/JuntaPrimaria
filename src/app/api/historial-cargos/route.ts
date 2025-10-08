import { NextRequest, NextResponse } from "next/server";
import { createConnection } from "@/lib/database";

export async function POST(request: NextRequest) {
  try {
    const {
      id_persona,
      numero_documento,
      apellido,
      nombre,
      denominacion_cargo,
      fecha_titularizacion,
      fecha_traslado_baja,
      establecimiento,
      tipo_traslado,
      establecimiento_traslado,
      categoria,
      turno,
      radio,
      observaciones,
    } = await request.json();

    console.log("Datos recibidos:", {
      id_persona,
      numero_documento,
      apellido,
      nombre,
      denominacion_cargo,
      fecha_titularizacion,
      fecha_traslado_baja,
      establecimiento,
      tipo_traslado,
      establecimiento_traslado,
      categoria,
      turno,
      radio,
      observaciones,
    });

    // Validaciones básicas
    if (!numero_documento || !apellido || !nombre) {
      return NextResponse.json({ error: "DNI, apellido y nombre son requeridos" }, { status: 400 });
    }

    const connection = await createConnection();

    try {
      // Primero, verificar si la persona existe, si no, crearla
      let personaId = id_persona;

      if (!personaId) {
        // Buscar si la persona ya existe
        const [existingPersons] = await connection.execute(
          "SELECT id_persona FROM personas WHERE numero_documento = ?",
          [numero_documento],
        );

        if (Array.isArray(existingPersons) && existingPersons.length > 0) {
          personaId = (existingPersons[0] as any).id_persona;
        } else {
          // Crear nueva persona
          const [insertResult] = await connection.execute(
            "INSERT INTO personas (numero_documento, apellido, nombre) VALUES (?, ?, ?)",
            [numero_documento, apellido, nombre],
          );
          personaId = (insertResult as any).insertId;
        }
      }

      // Buscar o crear el cargo si es necesario
      let cargoId = null;
      if (denominacion_cargo) {
        const [existingCargos] = await connection.execute(
          "SELECT id_cargo FROM denominaciondecargos WHERE denominacion = ?",
          [denominacion_cargo],
        );

        if (Array.isArray(existingCargos) && existingCargos.length > 0) {
          cargoId = (existingCargos[0] as any).id_cargo;
        }
      }

      // Insertar en historial_cargos
      const insertQuery = `
        INSERT INTO historial_cargos (
          id_persona,
          id_cargo,
          fecha_inicio,
          fecha_fin,
          establecimiento,
          observaciones,
          activo,
          id_estado
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?)
      `;

      const [result] = await connection.execute(insertQuery, [
        personaId,
        cargoId,
        fecha_titularizacion || null,
        fecha_traslado_baja || null,
        establecimiento || null,
        observaciones || null,
        1, // activo por defecto
        5, // id_estado por defecto (según la imagen parece ser el estado "trasladado ordinario")
      ]);

      await connection.end();

      return NextResponse.json({
        success: true,
        message: "Historial de cargo guardado exitosamente",
        data: {
          id_historial: (result as any).insertId,
          id_persona: personaId,
        },
      });
    } catch (dbError) {
      await connection.end();
      console.error("Error en la base de datos:", dbError);
      return NextResponse.json(
        { error: "Error al guardar en la base de datos: " + (dbError as Error).message },
        { status: 500 },
      );
    }
  } catch (error) {
    console.error("Error en la API de historial de cargos:", error);
    return NextResponse.json({ error: "Error interno del servidor: " + (error as Error).message }, { status: 500 });
  }
}

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const dni = searchParams.get("dni");

    if (!dni) {
      return NextResponse.json({ error: "DNI es requerido" }, { status: 400 });
    }

    const connection = await createConnection();

    try {
      // Buscar historial de cargos de una persona por DNI
      const query = `
        SELECT 
          hc.id_historial,
          hc.id_persona,
          p.numero_documento,
          p.apellido,
          p.nombre,
          hc.id_cargo,
          dc.denominacion as denominacion_cargo,
          hc.fecha_inicio,
          hc.fecha_fin,
          hc.establecimiento,
          hc.observaciones,
          hc.activo,
          hc.id_estado
        FROM historial_cargos hc
        INNER JOIN personas p ON hc.id_persona = p.id_persona
        LEFT JOIN denominaciondecargos dc ON hc.id_cargo = dc.id_cargo
        WHERE p.numero_documento = ?
        ORDER BY hc.fecha_inicio DESC
      `;

      const [rows] = await connection.execute(query, [dni]);
      await connection.end();

      return NextResponse.json({
        success: true,
        data: rows,
      });
    } catch (dbError) {
      await connection.end();
      console.error("Error en la consulta:", dbError);
      return NextResponse.json({ error: "Error en la consulta a la base de datos" }, { status: 500 });
    }
  } catch (error) {
    console.error("Error en la API:", error);
    return NextResponse.json({ error: "Error interno del servidor" }, { status: 500 });
  }
}
