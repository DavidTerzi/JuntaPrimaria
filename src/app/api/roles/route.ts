import { NextRequest, NextResponse } from "next/server";
import { executeQuery } from "@/lib/db";

// GET - Obtener todos los roles
export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const activo = searchParams.get("activo");

    let query = "SELECT id, nombre, descripcion, activo, fecha_creacion, fecha_actualizacion FROM roles";
    let params: any[] = [];

    if (activo !== null && activo !== undefined && activo !== "") {
      query += " WHERE activo = ?";
      params.push(activo === "true" ? 1 : 0);
    }

    query += " ORDER BY nombre ASC";

    const roles = await executeQuery(query, params);

    return NextResponse.json(roles);
  } catch (error) {
    console.error("Error al obtener roles:", error);
    return NextResponse.json({ error: "Error interno del servidor" }, { status: 500 });
  }
}
