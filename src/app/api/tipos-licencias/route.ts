import { NextRequest, NextResponse } from 'next/server';
import { createConnection } from '@/lib/database';

export async function GET(request: NextRequest) {
  try {
    const connection = await createConnection();

    try {
      // Verificar si existen tipos de licencia
      const [existingRows] = await connection.execute(
        'SELECT COUNT(*) as count FROM tipos_licencias'
      );
      
      const count = (existingRows as any)[0].count;
      
      // Si no hay tipos de licencia, crearlos
      if (count === 0) {
        console.log('No hay tipos de licencia, creando tipos básicos...');
        
        const tiposBasicos = [
          'Licencia por enfermedad',
          'Licencia por maternidad',
          'Licencia por paternidad', 
          'Licencia por estudio',
          'Licencia por razones particulares',
          'Licencia por duelo',
          'Licencia por accidente de trabajo',
          'Licencia anual ordinaria',
          'Licencia extraordinaria',
          'Licencia sin goce de haberes'
        ];

        for (const tipo of tiposBasicos) {
          await connection.execute(
            'INSERT INTO tipos_licencias (nombre) VALUES (?)',
            [tipo]
          );
        }
        
        console.log('Tipos de licencia creados exitosamente');
      }

      // Obtener todos los tipos de licencia
      const [rows] = await connection.execute(
        'SELECT id_tipo, nombre as descripcion FROM tipos_licencias ORDER BY nombre'
      );

      await connection.end();

      return NextResponse.json({
        success: true,
        data: rows
      });

    } catch (dbError) {
      await connection.end();
      console.error('Error en la consulta:', dbError);
      return NextResponse.json(
        { error: 'Error en la consulta a la base de datos: ' + (dbError as Error).message },
        { status: 500 }
      );
    }

  } catch (error) {
    console.error('Error en la API:', error);
    return NextResponse.json(
      { error: 'Error interno del servidor: ' + (error as Error).message },
      { status: 500 }
    );
  }
}