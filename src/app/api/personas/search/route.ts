import { NextRequest, NextResponse } from "next/server";
import { createConnection } from "@/lib/database";

export async function POST(request: NextRequest) {
  try {
    const { dni } = await request.json();

    if (!dni) {
      return NextResponse.json({ error: "DNI es requerido" }, { status: 400 });
    }

    // Crear conexión a la base de datos con UTF-8
    const connection = await createConnection();

    try {
      // Buscar persona por DNI
      const [rows] = await connection.execute("SELECT * FROM personas WHERE numero_documento = ?", [dni]);

      await connection.end();

      // Si encontramos resultados, los devolvemos
      if (Array.isArray(rows) && rows.length > 0) {
        return NextResponse.json({
          success: true,
          data: rows,
        });
      } else {
        return NextResponse.json({
          success: false,
          message: "No se encontraron personas con ese DNI",
        });
      }
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
