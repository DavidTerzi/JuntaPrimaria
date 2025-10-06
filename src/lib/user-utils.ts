// lib/user-utils.ts
import { cookies } from "next/headers";
import { verifyToken, getUserById } from "./auth";

// Función para generar avatar aleatorio basado en el rol
export function generateAvatar(role: string): string {
  const avatars = [
    "/avatars/arhamkhnz.png",
    // Puedes agregar más avatares aquí cuando los tengas
  ];

  // Por ahora usamos el único avatar disponible
  return avatars[0];
}

// Función para obtener el usuario autenticado actual
export async function getCurrentUser() {
  try {
    const cookieStore = await cookies();
    const token = cookieStore.get("auth-token")?.value;

    if (!token) {
      return null;
    }

    const decoded = verifyToken(token) as any;
    if (!decoded) {
      return null;
    }

    const user = await getUserById(decoded.id);
    if (!user) {
      return null;
    }

    // Formatear datos para el componente
    return {
      id: user.id.toString(),
      name: `${user.nombre} ${user.apellido}`,
      email: user.email,
      avatar: generateAvatar(user.rol_nombre),
      role: user.rol_nombre,
    };
  } catch (error) {
    console.error("Error obteniendo usuario actual:", error);
    return null;
  }
}

// Datos de fallback para desarrollo
export const fallbackUser = {
  id: "1",
  name: "Usuario Invitado",
  email: "invitado@example.com",
  avatar: "/avatars/arhamkhnz.png",
  role: "usuario",
};
