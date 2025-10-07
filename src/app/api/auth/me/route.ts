// app/api/auth/me/route.ts
import { NextRequest, NextResponse } from "next/server";
import { verifyToken, getUserById } from "@/lib/auth";

export async function GET(request: NextRequest) {
  try {
    // Obtener token de la cookie
    const token = request.cookies.get("auth-token")?.value;

    if (!token) {
      return NextResponse.json(
        {
          success: false,
          message: "Token no encontrado",
        },
        { status: 401 },
      );
    }

    // Verificar token
    const decoded = verifyToken(token) as any;

    if (!decoded) {
      return NextResponse.json(
        {
          success: false,
          message: "Token inválido",
        },
        { status: 401 },
      );
    }

    // Obtener información actualizada del usuario
    const user = await getUserById(decoded.id);

    if (!user) {
      return NextResponse.json(
        {
          success: false,
          message: "Usuario no encontrado",
        },
        { status: 404 },
      );
    }

    return NextResponse.json(
      {
        success: true,
        user: user,
      },
      { status: 200 },
    );
  } catch (error) {
    console.error("Error en /api/auth/me:", error);
    return NextResponse.json(
      {
        success: false,
        message: "Error interno del servidor",
      },
      { status: 500 },
    );
  }
}
