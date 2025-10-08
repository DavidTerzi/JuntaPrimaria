#!/usr/bin/env node

/**
 * Script de Verificación de Conexión a Base de Datos
 * Junta Primaria - Sistema de Gestión
 * Fecha: 2025-10-08
 */

const mysql = require('mysql2/promise');

// Configuración de la base de datos (desde database.ts)
const dbConfig = {
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'juntaprimaria_db',
  port: 3307,
  charset: 'utf8mb4',
  multipleStatements: false,
  supportBigNumbers: true,
  bigNumberStrings: true,
  dateStrings: true
};

console.log('🔍 VERIFICACIÓN DE CONEXIÓN A BASE DE DATOS');
console.log('='.repeat(50));
console.log(`📅 Fecha: ${new Date().toLocaleString()}`);
console.log('='.repeat(50));

async function verificarConexion() {
  let connection = null;
  
  try {
    console.log('\n📡 Intentando conectar a MySQL...');
    console.log(`   Host: ${dbConfig.host}`);
    console.log(`   Puerto: ${dbConfig.port}`);
    console.log(`   Usuario: ${dbConfig.user}`);
    console.log(`   Base de datos: ${dbConfig.database}`);
    
    // Intentar conexión
    connection = await mysql.createConnection(dbConfig);
    console.log('✅ Conexión establecida exitosamente');
    
    // Establecer charset UTF-8
    await connection.execute('SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci');
    console.log('✅ Charset UTF-8 configurado');
    
    // Verificar versión de MySQL
    const [versionResult] = await connection.execute('SELECT VERSION() as version');
    console.log(`✅ Versión MySQL: ${versionResult[0].version}`);
    
    // Verificar que la base de datos existe
    const [dbResult] = await connection.execute('SELECT DATABASE() as current_db');
    console.log(`✅ Base de datos actual: ${dbResult[0].current_db}`);
    
    // Verificar tablas principales
    console.log('\n📋 Verificando tablas principales...');
    const [tablesResult] = await connection.execute(`
      SELECT TABLE_NAME, TABLE_ROWS, TABLE_COLLATION 
      FROM information_schema.TABLES 
      WHERE TABLE_SCHEMA = ? 
      ORDER BY TABLE_NAME
    `, [dbConfig.database]);
    
    if (tablesResult.length > 0) {
      console.log(`✅ Se encontraron ${tablesResult.length} tablas:`);
      tablesResult.forEach(table => {
        console.log(`   📄 ${table.TABLE_NAME} (${table.TABLE_ROWS || 0} filas) - ${table.TABLE_COLLATION}`);
      });
    } else {
      console.log('⚠️  No se encontraron tablas en la base de datos');
    }
    
    // Verificar usuarios del sistema
    console.log('\n👥 Verificando usuarios del sistema...');
    try {
      const [usersResult] = await connection.execute(`
        SELECT u.username, u.email, r.nombre as rol, u.activo 
        FROM usuarios u 
        INNER JOIN roles r ON u.rol_id = r.id 
        ORDER BY u.id
      `);
      
      if (usersResult.length > 0) {
        console.log(`✅ Se encontraron ${usersResult.length} usuarios:`);
        usersResult.forEach(user => {
          const status = user.activo ? '🟢' : '🔴';
          console.log(`   ${status} ${user.username} (${user.email}) - ${user.rol}`);
        });
      } else {
        console.log('⚠️  No se encontraron usuarios en el sistema');
      }
    } catch (error) {
      console.log('⚠️  Tabla de usuarios no encontrada o error al consultar');
    }
    
    // Probar procedimiento de login
    console.log('\n🔐 Probando procedimiento de login...');
    try {
      await connection.execute('CALL sp_validar_login(?, @user_id, @password_hash, @rol_nombre, @activo)', ['superadmin']);
      const [loginResult] = await connection.execute('SELECT @user_id as user_id, @password_hash as password_hash, @rol_nombre as rol, @activo as activo');
      
      if (loginResult[0].user_id) {
        console.log('✅ Procedimiento de login funciona correctamente');
        console.log(`   Usuario ID: ${loginResult[0].user_id}`);
        console.log(`   Rol: ${loginResult[0].rol}`);
        console.log(`   Activo: ${loginResult[0].activo ? 'Sí' : 'No'}`);
      } else {
        console.log('⚠️  Procedimiento de login no retornó resultados');
      }
    } catch (error) {
      console.log('⚠️  Procedimiento de login no encontrado o error al ejecutar');
    }
    
    // Verificar configuración de charset
    console.log('\n🔤 Verificando configuración de charset...');
    const [charsetResult] = await connection.execute(`
      SELECT 
        @@character_set_database as db_charset,
        @@collation_database as db_collation,
        @@character_set_connection as conn_charset,
        @@collation_connection as conn_collation
    `);
    
    console.log(`✅ Charset de BD: ${charsetResult[0].db_charset}`);
    console.log(`✅ Collation de BD: ${charsetResult[0].db_collation}`);
    console.log(`✅ Charset de conexión: ${charsetResult[0].conn_charset}`);
    console.log(`✅ Collation de conexión: ${charsetResult[0].conn_collation}`);
    
    console.log('\n🎉 VERIFICACIÓN COMPLETADA EXITOSAMENTE');
    console.log('='.repeat(50));
    
  } catch (error) {
    console.error('\n❌ ERROR EN LA CONEXIÓN:');
    console.error('='.repeat(50));
    
    if (error.code === 'ECONNREFUSED') {
      console.error('🚫 No se puede conectar al servidor MySQL');
      console.error('   - Verificar que MySQL esté ejecutándose');
      console.error('   - Verificar host y puerto');
    } else if (error.code === 'ER_ACCESS_DENIED_ERROR') {
      console.error('🚫 Acceso denegado');
      console.error('   - Verificar usuario y contraseña');
      console.error('   - Verificar permisos del usuario');
    } else if (error.code === 'ER_BAD_DB_ERROR') {
      console.error('🚫 Base de datos no encontrada');
      console.error('   - Verificar que la base de datos existe');
      console.error('   - Ejecutar el script de creación de BD');
    } else {
      console.error('🚫 Error desconocido:');
      console.error(`   Código: ${error.code}`);
      console.error(`   Mensaje: ${error.message}`);
    }
    
    console.error('\n🔧 POSIBLES SOLUCIONES:');
    console.error('1. Verificar que MySQL esté ejecutándose');
    console.error('2. Ejecutar: sudo systemctl start mysql');
    console.error('3. Verificar credenciales de conexión');
    console.error('4. Crear la base de datos si no existe');
    console.error('5. Ejecutar el script juntaprimaria_db_MEJORADA.sql');
    
  } finally {
    if (connection) {
      await connection.end();
      console.log('\n🔌 Conexión cerrada');
    }
  }
}

// Ejecutar verificación
verificarConexion().catch(console.error);
