// lib/db.ts
import mysql from "mysql2/promise";

// Configuración de la base de datos
const dbConfig = {
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USER || "root",
  password: process.env.DB_PASSWORD || "",
  database: process.env.DB_NAME || "juntaprimaria_db",
  port: parseInt(process.env.DB_PORT || "3306"),
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
  charset: "utf8mb4",
};

// Pool de conexiones para mejor rendimiento
let pool: mysql.Pool | null = null;

export const getPool = () => {
  if (!pool) {
    pool = mysql.createPool(dbConfig);
  }
  return pool;
};

// Función para obtener una conexión
export const getConnection = async () => {
  const pool = getPool();
  return await pool.getConnection();
};

// Función para ejecutar consultas
export const executeQuery = async (query: string, params?: any[]) => {
  const pool = getPool();
  try {
    const [rows] = await pool.execute(query, params);
    return rows;
  } catch (error) {
    console.error("Error executing query:", error);
    throw error;
  }
};

// Función para cerrar el pool (útil para testing)
export const closePool = async () => {
  if (pool) {
    await pool.end();
  }
};

// Tipos para TypeScript
export interface Usuario {
  id: number;
  username: string;
  email: string;
  password_hash: string;
  nombre: string;
  apellido: string;
  documento?: string;
  telefono?: string;
  rol_id: number;
  activo: boolean;
  ultimo_login?: Date;
  fecha_creacion: Date;
  fecha_actualizacion: Date;
}

export interface Rol {
  id: number;
  nombre: string;
  descripcion?: string;
  activo: boolean;
  fecha_creacion: Date;
  fecha_actualizacion: Date;
}

export interface UsuarioCompleto extends Usuario {
  rol_nombre: string;
  rol_descripcion?: string;
}

export default getPool;
