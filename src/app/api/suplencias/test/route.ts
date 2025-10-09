import { NextRequest, NextResponse } from "next/server";
import { executeQuery } from "@/lib/db";

export async function GET(request: NextRequest) {
  try {
    // Consulta simplificada para testing
    const query = `
      SELECT 
        s.id_suplencia,
        s.id_persona,
        s.cue,
        s.id_cargo,
        s.fecha_inicio,
        s.fecha_baja,
        s.primera_titularizacion,
        s.segunda_titularizacion,
        s.observaciones,
        s.activo
      FROM suplencias s
      ORDER BY s.fecha_inicio DESC
    `;

    const suplencias = await executeQuery(query);
    console.log("Suplencias simple query result:", suplencias);

    return NextResponse.json(suplencias, { status: 200 });
  } catch (error) {
    console.error("Error al obtener suplencias:", error);
    return NextResponse.json(
      { error: "Error interno del servidor", details: error instanceof Error ? error.message : "Unknown error" },
      { status: 500 },
    );
  }
}
