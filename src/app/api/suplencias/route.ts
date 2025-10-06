import { NextRequest, NextResponse } from 'next/server';
import { executeQuery } from '@/lib/db';

export async function GET(request: NextRequest) {
  try {
    // Primero probemos una consulta simple
    const testQuery = 'SELECT COUNT(*) as total FROM suplencias';
    const testResult = await executeQuery(testQuery);
    console.log('Test query result:', testResult);
    
    const query = `
      SELECT 
        s.id_suplencia,
        p.numero_documento as dni,
        CONCAT(p.nombre, ' ', p.apellido) as nombre_completo,
        p.nombre,
        p.apellido,
        ue.nombre as establecimiento,
        dc.denominacion as cargo,
        ue.radio,
        s.fecha_inicio,
        s.fecha_baja,
        s.primera_titularizacion,
        s.segunda_titularizacion,
        s.observaciones,
        s.activo,
        COALESCE(dep.nombre, 'N/A') as departamento,
        COALESCE(ue.nivel_educativo, 'N/A') as nivel_educativo,
        COALESCE(ue.ambito, 'N/A') as ambito,
        COALESCE(ue.turno, 'N/A') as turno
      FROM suplencias s
      INNER JOIN personas p ON s.id_persona = p.id_persona
      INNER JOIN unidades_educativas ue ON s.cue = ue.cue
      INNER JOIN denominaciondecargos dc ON s.id_cargo = dc.id_cargo
      LEFT JOIN departamentos dep ON ue.id_departamento = dep.id_departamento
      ORDER BY s.fecha_inicio DESC
    `;

    const suplencias = await executeQuery(query);
    console.log('Suplencias query result:', suplencias);

    return NextResponse.json(suplencias, { status: 200 });
  } catch (error) {
    console.error('Error al obtener suplencias:', error);
    return NextResponse.json(
      { error: 'Error interno del servidor', details: error instanceof Error ? error.message : 'Unknown error' },
      { status: 500 }
    );
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const {
      id_persona,
      cue,
      id_cargo,
      fecha_inicio,
      fecha_baja,
      primera_titularizacion,
      segunda_titularizacion,
      observaciones
    } = body;

    // Validaciones básicas
    if (!id_persona || !cue || !id_cargo || !fecha_inicio) {
      return NextResponse.json(
        { error: 'Faltan campos obligatorios' },
        { status: 400 }
      );
    }

    const query = `
      INSERT INTO suplencias (
        id_persona, 
        cue, 
        id_cargo, 
        fecha_inicio, 
        fecha_baja, 
        primera_titularizacion, 
        segunda_titularizacion, 
        observaciones
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?)
    `;

    const params = [
      id_persona,
      cue,
      id_cargo,
      fecha_inicio,
      fecha_baja || null,
      primera_titularizacion || null,
      segunda_titularizacion || null,
      observaciones || null
    ];

    const result = await executeQuery(query, params) as any;

    return NextResponse.json(
      { message: 'Suplencia creada exitosamente', id: result.insertId },
      { status: 201 }
    );
  } catch (error) {
    console.error('Error al crear suplencia:', error);
    return NextResponse.json(
      { error: 'Error interno del servidor' },
      { status: 500 }
    );
  }
}