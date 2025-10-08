import { NextRequest, NextResponse } from 'next/server';
import { createConnection } from '@/lib/database';

export async function POST(request: NextRequest) {
  try {
    const {
      id_persona,
      numero_documento,
      apellido,
      nombre,
      cue,
      id_cargo,
      establecimiento,
      radio,
      fecha_inicio,
      fecha_baja,
      primera_titularizacion,
      segunda_titularizacion,
      observaciones
    } = await request.json();

    console.log('Datos de suplencia recibidos:', {
      id_persona,
      numero_documento,
      apellido,
      nombre,
      cue,
      id_cargo,
      establecimiento,
      radio,
      fecha_inicio,
      fecha_baja,
      primera_titularizacion,
      segunda_titularizacion,
      observaciones
    });

    // Validaciones básicas
    if (!numero_documento || !apellido || !nombre || !fecha_inicio) {
      return NextResponse.json(
        { error: 'DNI, apellido, nombre y fecha de inicio son requeridos' },
        { status: 400 }
      );
    }

    // Validar formato de fechas
    const fechaInicio = new Date(fecha_inicio);
    if (isNaN(fechaInicio.getTime())) {
      return NextResponse.json(
        { error: 'Fecha de inicio no válida' },
        { status: 400 }
      );
    }

    const connection = await createConnection();

    try {
      // Primero, verificar si la persona existe, si no, crearla
      let personaId = id_persona;
      
      if (!personaId) {
        // Buscar si la persona ya existe
        const [existingPersons] = await connection.execute(
          'SELECT id_persona FROM personas WHERE numero_documento = ?',
          [numero_documento]
        );

        if (Array.isArray(existingPersons) && existingPersons.length > 0) {
          personaId = (existingPersons[0] as any).id_persona;
        } else {
          // Crear nueva persona
          const [insertResult] = await connection.execute(
            'INSERT INTO personas (numero_documento, apellido, nombre) VALUES (?, ?, ?)',
            [numero_documento, apellido, nombre]
          );
          personaId = (insertResult as any).insertId;
        }
      }

      // Verificar cuántas suplencias activas tiene esta persona (máximo 2 antes de titularización)
      const [suplenciasActivas] = await connection.execute(
        'SELECT COUNT(*) as count FROM suplencias WHERE id_persona = ? AND activo = 1 AND (primera_titularizacion IS NULL OR segunda_titularizacion IS NULL)',
        [personaId]
      );

      const countActivas = (suplenciasActivas as any)[0].count;
      
      if (countActivas >= 2) {
        await connection.end();
        return NextResponse.json(
          { error: 'Esta persona ya tiene el máximo de 2 suplencias activas. Debe titularizar antes de agregar más.' },
          { status: 400 }
        );
      }

      // Insertar en la tabla suplencias
      const insertQuery = `
        INSERT INTO suplencias (
          id_persona,
          cue,
          id_cargo,
          fecha_inicio,
          fecha_baja,
          primera_titularizacion,
          segunda_titularizacion,
          observaciones,
          activo
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
      `;

      const [result] = await connection.execute(insertQuery, [
        personaId,
        cue || null,
        id_cargo || null,
        fecha_inicio,
        fecha_baja || null,
        primera_titularizacion || null,
        segunda_titularizacion || null,
        observaciones || null,
        1 // activo por defecto
      ]);

      await connection.end();

      return NextResponse.json({
        success: true,
        message: 'Suplencia guardada exitosamente',
        data: {
          id_suplencia: (result as any).insertId,
          id_persona: personaId,
          suplencias_activas: countActivas + 1
        }
      });

    } catch (dbError) {
      await connection.end();
      console.error('Error en la base de datos:', dbError);
      return NextResponse.json(
        { error: 'Error al guardar en la base de datos: ' + (dbError as Error).message },
        { status: 500 }
      );
    }

  } catch (error) {
    console.error('Error en la API de suplencias:', error);
    return NextResponse.json(
      { error: 'Error interno del servidor: ' + (error as Error).message },
      { status: 500 }
    );
  }
}

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const dni = searchParams.get('dni');

    const connection = await createConnection();

    try {
      let query = `
        SELECT 
          s.id_suplencia,
          s.id_persona,
          p.numero_documento,
          p.apellido,
          p.nombre,
          s.cue,
          s.id_cargo,
          dc.denominacion as cargo_denominacion,
          s.fecha_inicio,
          s.fecha_baja,
          s.primera_titularizacion,
          s.segunda_titularizacion,
          s.observaciones,
          s.activo
        FROM suplencias s
        INNER JOIN personas p ON s.id_persona = p.id_persona
        LEFT JOIN denominaciondecargos dc ON s.id_cargo = dc.id_cargo
        WHERE s.activo = 1
      `;
      
      const params = [];
      
      if (dni) {
        query += ' AND p.numero_documento = ?';
        params.push(dni);
      }
      
      query += ' ORDER BY s.fecha_inicio DESC';

      const [rows] = await connection.execute(query, params);
      await connection.end();

      return NextResponse.json({
        success: true,
        data: rows
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