import { NextRequest, NextResponse } from 'next/server';
import { executeQuery } from '@/lib/db';

export async function GET(request: NextRequest) {
  try {
    // Primero probemos una consulta simple
    const testQuery = 'SELECT COUNT(*) as total FROM suplencias';
    const testResult = await executeQuery(testQuery);
    console.log('Test query result:', testResult);
    
    // Query con JOINs seguros y valores por defecto
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
        s.activo,
        COALESCE(p.numero_documento, CONCAT('DOC-', s.id_persona)) as dni,
        CONCAT(COALESCE(p.nombre, 'Persona'), ' ', COALESCE(p.apellido, CONCAT('ID-', s.id_persona))) as nombre_completo,
        COALESCE(p.nombre, 'Sin Nombre') as nombre,
        COALESCE(p.apellido, 'Sin Apellido') as apellido,
        COALESCE(ue.nombre, CONCAT('Establecimiento CUE-', s.cue)) as establecimiento,
        COALESCE(ue.radio, 'I') as radio,
        COALESCE(ue.nivel_educativo, 'Primario') as nivel_educativo,
        COALESCE(ue.ambito, 'Urbano') as ambito,
        COALESCE(ue.turno, 'Mañana') as turno,
        COALESCE(dc.denominacion, CONCAT('Cargo ID-', s.id_cargo)) as cargo,
        COALESCE(dep.nombre, 'Departamento N/A') as departamento
      FROM suplencias s
      LEFT JOIN personas p ON CAST(s.id_persona AS CHAR) = CAST(p.id_persona AS CHAR)
      LEFT JOIN unidades_educativas ue ON CAST(s.cue AS CHAR) = CAST(ue.cue AS CHAR)
      LEFT JOIN denominaciondecargos dc ON CAST(s.id_cargo AS CHAR) = CAST(dc.id_cargo AS CHAR)
      LEFT JOIN departamentos dep ON CAST(ue.id_departamento AS CHAR) = CAST(dep.id_departamento AS CHAR)
      WHERE s.activo = 1
      ORDER BY s.fecha_inicio DESC
      LIMIT 100
    `;

    const suplencias = await executeQuery(query) as any[];
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