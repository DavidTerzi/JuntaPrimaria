import { NextRequest, NextResponse } from 'next/server';
import { createConnection } from '@/lib/database';

export async function POST(request: NextRequest) {
  try {
    const { dni } = await request.json();

    if (!dni) {
      return NextResponse.json(
        { error: 'DNI es requerido' },
        { status: 400 }
      );
    }

    // Crear conexión a la base de datos con UTF-8
    const connection = await createConnection();

    try {
      // Primero obtener los datos del docente
      const [personaRows] = await connection.execute(
        'SELECT * FROM personas WHERE numero_documento = ?',
        [dni]
      );

      if (!Array.isArray(personaRows) || personaRows.length === 0) {
        await connection.end();
        return NextResponse.json({
          success: false,
          message: 'No se encontró persona con ese DNI'
        });
      }

      const persona = personaRows[0] as any;

      // Buscar historial de cargos del docente
      const [establecimientosRows] = await connection.execute(`
        SELECT 
          h.fecha_inicio as fecha_titularizacion,
          h.fecha_fin as fecha_traslado_baja,
          h.establecimiento,
          TIMESTAMPDIFF(YEAR, h.fecha_inicio, COALESCE(h.fecha_fin, NOW())) as anos,
          TIMESTAMPDIFF(MONTH, h.fecha_inicio, COALESCE(h.fecha_fin, NOW())) % 12 as meses,
          DATEDIFF(COALESCE(h.fecha_fin, NOW()), h.fecha_inicio) % 30 as dias,
          CASE 
            WHEN e.nombre = 'Trasladado' THEN 'Ordinario'
            WHEN e.nombre = 'Renunciado' THEN 'Renuncia'
            ELSE 'Ordinario'
          END as tipo_traslado,
          d.denominacion as cargo,
          e.nombre as estado
        FROM historial_cargos h
        LEFT JOIN denominaciondecargos d ON h.id_cargo = d.id_cargo
        LEFT JOIN estados_cargos e ON h.id_estado = e.id_estado
        WHERE h.id_persona = ?
        ORDER BY h.fecha_inicio DESC
      `, [persona.id_persona]);

      const establecimientosHistorial = Array.isArray(establecimientosRows) ? establecimientosRows : [];

      await connection.end();

      return NextResponse.json({
        success: true,
        data: {
          persona: persona,
          establecimientos: establecimientosHistorial
        }
      });

    } catch (dbError) {
      await connection.end();
      console.error('Error en la consulta:', dbError);
      return NextResponse.json(
        { error: 'Error en la consulta a la base de datos' },
        { status: 500 }
      );
    }

  } catch (error) {
    console.error('Error en la API:', error);
    return NextResponse.json(
      { error: 'Error interno del servidor' },
      { status: 500 }
    );
  }
}