#!/usr/bin/env node

const mysql = require('mysql2/promise');

async function testConnection() {
  console.log('🔍 Probando conexión simple a MySQL...');
  
  try {
    // Configuración básica
    const connection = await mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      port: 3307
    });
    
    console.log('✅ Conexión básica exitosa');
    
    // Probar consulta simple
    const [rows] = await connection.execute('SHOW DATABASES');
    console.log('✅ Consulta exitosa, bases de datos encontradas:');
    rows.forEach(row => console.log(`   - ${row.Database}`));
    
    // Probar conexión a la base específica
    await connection.execute('USE juntaprimaria_db');
    console.log('✅ Conexión a juntaprimaria_db exitosa');
    
    // Verificar tablas
    const [tables] = await connection.execute('SHOW TABLES');
    console.log(`✅ Tablas encontradas: ${tables.length}`);
    
    await connection.end();
    console.log('✅ Conexión cerrada correctamente');
    
  } catch (error) {
    console.error('❌ Error:', error.message);
    console.error('   Código:', error.code);
  }
}

testConnection();
