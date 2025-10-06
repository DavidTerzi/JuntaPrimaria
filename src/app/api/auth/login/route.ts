// app/api/auth/login/route.ts
import { NextRequest, NextResponse } from "next/server";
import { validateLogin } from "@/lib/auth";

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { username, password } = body;

    // Validar que se proporcionaron los campos requeridos
    if (!username || !password) {
      return NextResponse.json(
        {
          success: false,
          message: "Username y password son requeridos",
        },
        { status: 400 },
      );
    }

    // Validar credenciales
    const result = await validateLogin({ username, password });

    if (result.success) {
      // Crear response con token en cookie httpOnly
      const response = NextResponse.json(
        {
          success: true,
          message: result.message,
          user: result.user,
        },
        { status: 200 },
      );

      // Configurar cookie con el token
      response.cookies.set("auth-token", result.token!, {
        httpOnly: true,
        secure: process.env.NODE_ENV === "production",
        sameSite: "lax",
        maxAge: 60 * 60 * 3, // 3 horas
        path: "/",
      });

      return response;
    } else {
      return NextResponse.json(
        {
          success: false,
          message: result.message,
        },
        { status: 401 },
      );
    }
  } catch (error) {
    console.error("Error en /api/auth/login:", error);
    return NextResponse.json(
      {
        success: false,
        message: "Error interno del servidor",
      },
      { status: 500 },
    );
  }
}
