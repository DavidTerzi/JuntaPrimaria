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
        COALESCE(p.numero_documento, CONCAT('DOC', s.id_persona)) as dni,
        COALESCE(CONCAT(p.nombre, ' ', p.apellido), CONCAT('Persona ', s.id_persona)) as nombre_completo,
        COALESCE(p.nombre, 'Sin Nombre') as nombre,
        COALESCE(p.apellido, 'Sin Apellido') as apellido,
        COALESCE(ue.nombre, CONCAT('Establecimiento CUE-', s.cue)) as establecimiento,
        COALESCE(dc.denominacion, CONCAT('Cargo ', s.id_cargo)) as cargo,
        COALESCE(ue.radio, 'I') as radio,
        s.fecha_inicio,
        s.fecha_baja,
        s.primera_titularizacion,
        s.segunda_titularizacion,
        s.observaciones,
        s.activo,
        COALESCE(dep.nombre, 'N/A') as departamento,
        COALESCE(ue.nivel_educativo, 'Primario') as nivel_educativo,
        COALESCE(ue.ambito, 'Urbano') as ambito,
        COALESCE(ue.turno, 'Mañana') as turno
      FROM suplencias s
      LEFT JOIN personas p ON s.id_persona = p.id_persona
      LEFT JOIN unidades_educativas ue ON s.cue = ue.cue
      LEFT JOIN denominaciondecargos dc ON s.id_cargo = dc.id_cargo
      LEFT JOIN departamentos dep ON ue.id_departamento = dep.id_departamento
      WHERE s.activo = 1
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