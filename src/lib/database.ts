// Configuración compartida de base de datos con UTF-8
import mysql from 'mysql2/promise';

export const createConnection = async () => {
  const connection = await mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'juntaprimaria_db',
    port: 3306,
    charset: 'utf8mb4',
    // Configuraciones adicionales para UTF-8
    multipleStatements: false,
    supportBigNumbers: true,
    bigNumberStrings: true,
    dateStrings: true,
    typeCast: function (field: any, next: () => any) {
      if (field.type === 'DATETIME' || field.type === 'DATE') {
        return field.string();
      }
      return next();
    }
  });

  // Establecer charset UTF-8 explícitamente
  await connection.execute('SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci');
  
  return connection;
};

export const dbConfig = {
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'juntaprimaria_db',
  port: 3306,
  charset: 'utf8mb4'
};