// Tipos para el módulo de usuarios
export interface Usuario {
  id: number;
  username: string;
  email: string;
  password_hash?: string; // Opcional para seguridad
  nombre: string;
  apellido: string;
  documento?: string;
  telefono?: string;
  rol_id: number;
  activo: boolean;
  ultimo_login?: Date | null;
  fecha_creacion: Date;
  fecha_actualizacion: Date;
  // Campos adicionales desde JOIN con roles
  rol_nombre?: string;
  rol_descripcion?: string;
}

export interface Rol {
  id: number;
  nombre: string;
  descripcion?: string;
  activo: boolean;
  fecha_creacion: Date;
  fecha_actualizacion: Date;
}

export interface UsuarioFormData {
  username: string;
  email: string;
  password?: string;
  nombre: string;
  apellido: string;
  documento?: string;
  telefono?: string;
  rol_id: number;
  activo: boolean;
}

export interface UsuarioFilters {
  search: string;
  rol_id?: number;
  activo?: boolean;
}

export type UsuariosSortField = "nombre" | "email" | "username" | "rol_nombre" | "ultimo_login" | "fecha_creacion";
export type SortDirection = "asc" | "desc";
