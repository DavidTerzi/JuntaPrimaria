import { NextRequest, NextResponse } from 'next/server';
import { createConnection } from '@/lib/database';

export async function POST(request: NextRequest) {
  try {
    const {
      id_persona,
      numero_documento,
      apellido,
      nombre,
      fecha_inicio,
      fecha_fin,
      observaciones,
      id_tipo // Para diferentes tipos de licencia si es necesario
    } = await request.json();

    console.log('Datos de licencia recibidos:', {
      id_persona,
      numero_documento,
      apellido,
      nombre,
      fecha_inicio,
      fecha_fin,
      observaciones,
      id_tipo
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

    if (fecha_fin) {
      const fechaFin = new Date(fecha_fin);
      if (isNaN(fechaFin.getTime())) {
        return NextResponse.json(
          { error: 'Fecha de finalización no válida' },
          { status: 400 }
        );
      }
      
      if (fechaFin <= fechaInicio) {
        return NextResponse.json(
          { error: 'La fecha de finalización debe ser posterior a la fecha de inicio' },
          { status: 400 }
        );
      }
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

      // Primero verificar/crear tipos de licencia básicos
      let tipoLicenciaId = id_tipo;
      
      if (!tipoLicenciaId) {
        // Verificar si existe algún tipo de licencia
        const [tiposExistentes] = await connection.execute(
          'SELECT id_tipo FROM tipos_licencias LIMIT 1'
        );

        if (Array.isArray(tiposExistentes) && tiposExistentes.length > 0) {
          // Usar el primer tipo disponible
          tipoLicenciaId = (tiposExistentes[0] as any).id_tipo;
        } else {
          // Crear tipos de licencia básicos
          const tiposBasicos = [
            'Licencia por enfermedad',
            'Licencia por maternidad', 
            'Licencia por estudio',
            'Licencia anual ordinaria',
            'Licencia por razones particulares'
          ];

          for (const tipo of tiposBasicos) {
            await connection.execute(
              'INSERT INTO tipos_licencias (descripcion) VALUES (?)',
              [tipo]
            );
          }

          // Usar el primer tipo creado
          tipoLicenciaId = 1;
        }
      }

      // Insertar en la tabla licencias
      const insertQuery = `
        INSERT INTO licencias (
          id_persona,
          id_tipo,
          fecha_inicio,
          fecha_fin,
          observaciones,
          activo
        ) VALUES (?, ?, ?, ?, ?, ?)
      `;

      const [result] = await connection.execute(insertQuery, [
        personaId,
        tipoLicenciaId,
        fecha_inicio,
        fecha_fin || null,
        observaciones || null,
        1 // activo por defecto
      ]);

      await connection.end();

      return NextResponse.json({
        success: true,
        message: 'Licencia guardada exitosamente',
        data: {
          id_licencia: (result as any).insertId,
          id_persona: personaId
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
    console.error('Error en la API de licencias:', error);
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
          l.id_licencia,
          l.id_persona,
          p.numero_documento,
          p.apellido,
          p.nombre,
          l.id_tipo,
          l.fecha_inicio,
          l.fecha_fin,
          l.observaciones,
          l.activo
        FROM licencias l
        INNER JOIN personas p ON l.id_persona = p.id_persona
        WHERE l.activo = 1
      `;
      
      const params = [];
      
      if (dni) {
        query += ' AND p.numero_documento = ?';
        params.push(dni);
      }
      
      query += ' ORDER BY l.fecha_inicio DESC';

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