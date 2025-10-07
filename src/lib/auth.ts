// lib/auth.ts
import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";

import { executeQuery, UsuarioCompleto } from "./db";

const JWT_SECRET = process.env.JWT_SECRET ?? "fallback-secret-key";
const JWT_EXPIRES_IN = process.env.JWT_EXPIRES_IN ?? "3h";

export interface LoginCredentials {
  username: string;
  password: string;
}

export interface AuthResponse {
  success: boolean;
  message: string;
  user?: UsuarioCompleto;
  token?: string;
}

// Función para validar credenciales de login
export async function validateLogin(credentials: LoginCredentials): Promise<AuthResponse> {
  try {
    // Buscar usuario por username o email
    const users = (await executeQuery(
      `SELECT 
        u.id, u.username, u.email, u.password_hash, u.nombre, u.apellido, 
        u.documento, u.telefono, u.rol_id, u.activo, u.ultimo_login,
        u.fecha_creacion, u.fecha_actualizacion,
        r.nombre as rol_nombre, r.descripcion as rol_descripcion
      FROM usuarios u
      INNER JOIN roles r ON u.rol_id = r.id
      WHERE (u.username = ? OR u.email = ?) AND u.activo = 1`,
      [credentials.username, credentials.username],
    )) as UsuarioCompleto[];

    if (users.length === 0) {
      return {
        success: false,
        message: "Usuario no encontrado o inactivo",
      };
    }

    const user = users[0];

    // Verificar password
    const isValidPassword = await bcrypt.compare(credentials.password, user.password_hash);

    if (!isValidPassword) {
      return {
        success: false,
        message: "Contraseña incorrecta",
      };
    }

    // Actualizar último login
    await executeQuery("UPDATE usuarios SET ultimo_login = CURRENT_TIMESTAMP WHERE id = ?", [user.id]);

    // Generar token JWT
    const token = jwt.sign(
      {
        id: user.id,
        username: user.username,
        email: user.email,
        rol: user.rol_nombre,
      },
      JWT_SECRET,
      { expiresIn: JWT_EXPIRES_IN } as jwt.SignOptions,
    );

    // Remover password_hash de la respuesta
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const { password_hash, ...userWithoutPassword } = user;

    return {
      success: true,
      message: "Login exitoso",
      user: userWithoutPassword as UsuarioCompleto,
      token,
    };
  } catch (error) {
    console.error("Error en validateLogin:", error);
    return {
      success: false,
      message: "Error interno del servidor",
    };
  }
}

// Función para verificar token JWT
export function verifyToken(token: string) {
  try {
    return jwt.verify(token, JWT_SECRET);
  } catch {
    return null;
  }
}

// Función para hash de password
export async function hashPassword(password: string): Promise<string> {
  const saltRounds = 10;
  return await bcrypt.hash(password, saltRounds);
}

// Función para obtener usuario por ID
export async function getUserById(id: number): Promise<UsuarioCompleto | null> {
  try {
    const users = (await executeQuery(
      `SELECT 
        u.id, u.username, u.email, u.nombre, u.apellido, 
        u.documento, u.telefono, u.rol_id, u.activo, u.ultimo_login,
        u.fecha_creacion, u.fecha_actualizacion,
        r.nombre as rol_nombre, r.descripcion as rol_descripcion
      FROM usuarios u
      INNER JOIN roles r ON u.rol_id = r.id
      WHERE u.id = ? AND u.activo = 1`,
      [id],
    )) as UsuarioCompleto[];

    return users.length > 0 ? users[0] : null;
  } catch (error) {
    console.error("Error en getUserById:", error);
    return null;
  }
}

// Función para crear nuevo usuario
export async function createUser(userData: {
  username: string;
  email: string;
  password: string;
  nombre: string;
  apellido: string;
  documento?: string;
  telefono?: string;
  rol_id: number;
}): Promise<AuthResponse> {
  try {
    // Verificar si el usuario ya existe
    const existingUsers = (await executeQuery("SELECT id FROM usuarios WHERE username = ? OR email = ?", [
      userData.username,
      userData.email,
    ])) as UsuarioCompleto[];

    if (existingUsers.length > 0) {
      return {
        success: false,
        message: "El usuario o email ya existe",
      };
    }

    // Hash del password
    const passwordHash = await hashPassword(userData.password);

    // Insertar nuevo usuario
    const result = (await executeQuery(
      `INSERT INTO usuarios (username, email, password_hash, nombre, apellido, documento, telefono, rol_id)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
      [
        userData.username,
        userData.email,
        passwordHash,
        userData.nombre,
        userData.apellido,
        userData.documento,
        userData.telefono,
        userData.rol_id,
      ],
    )) as unknown;

    // Obtener el usuario recién creado
    const newUser = await getUserById((result as { insertId: number }).insertId);

    return {
      success: true,
      message: "Usuario creado exitosamente",
      user: newUser ?? undefined,
    };
  } catch (error) {
    console.error("Error en createUser:", error);
    return {
      success: false,
      message: "Error al crear usuario",
    };
  }
}
