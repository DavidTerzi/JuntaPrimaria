-- =====================================================
-- SCRIPT SQL PARA AUTENTICACIÓN - JUNTA PRIMARIA
-- =====================================================
-- Base de datos: juntaprimaria_db
-- Descripción: Tablas para sistema de autenticación
-- Fecha: 3 de octubre de 2025
-- =====================================================

USE `juntaprimaria_db`;

-- Deshabilitar verificación de llaves foráneas temporalmente
SET FOREIGN_KEY_CHECKS = 0;

-- =====================================================
-- TABLA: usuarios
-- Descripción: Almacena los usuarios del sistema
-- =====================================================
DROP TABLE IF EXISTS `usuarios`;

-- =====================================================
-- TABLA: sesiones
-- Descripción: Almacena las sesiones activas de usuarios
-- =====================================================
DROP TABLE IF EXISTS `sesiones`;

-- =====================================================
-- TABLA: roles
-- Descripción: Almacena los diferentes roles del sistema
-- =====================================================
DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NOT NULL,
  `descripcion` TEXT,
  `activo` TINYINT(1) DEFAULT 1,
  `fecha_creacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_roles_nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `usuarios` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `password_hash` VARCHAR(255) NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `apellido` VARCHAR(100) NOT NULL,
  `documento` VARCHAR(20),
  `telefono` VARCHAR(20),
  `rol_id` INT(11) NOT NULL,
  `activo` TINYINT(1) DEFAULT 1,
  `ultimo_login` TIMESTAMP NULL,
  `fecha_creacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_usuarios_username` (`username`),
  UNIQUE KEY `uk_usuarios_email` (`email`),
  KEY `fk_usuarios_rol` (`rol_id`),
  CONSTRAINT `fk_usuarios_rol` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sesiones` (
  `id` VARCHAR(128) NOT NULL,
  `usuario_id` INT(11) NOT NULL,
  `ip_address` VARCHAR(45),
  `user_agent` TEXT,
  `payload` LONGTEXT NOT NULL,
  `ultima_actividad` INT(11) NOT NULL,
  `fecha_creacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_sesiones_usuario` (`usuario_id`),
  KEY `idx_ultima_actividad` (`ultima_actividad`),
  CONSTRAINT `fk_sesiones_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- =====================================================
-- DATOS INICIALES
-- =====================================================

-- Insertar roles por defecto
INSERT INTO `roles` (`nombre`, `descripcion`) VALUES
('admin', 'Administrador del sistema con acceso completo'),
('usuario', 'Usuario estándar con acceso limitado'),
('moderador', 'Usuario con permisos de moderación');

-- Insertar usuario administrador por defecto
-- Password: admin123 (debería cambiarse en producción)
-- Hash generado con bcrypt, rounds=10
INSERT INTO `usuarios` (`username`, `email`, `password_hash`, `nombre`, `apellido`, `documento`, `rol_id`) VALUES
('admin', 'admin@juntaprimaria.gov.ar', '$2b$10$yFQeEqSUfd9XwPi9eK5QWe.PTXq6U8Zj5CliRs.ZdRn21N8uGumd.', 'Administrador', 'Sistema', '00000000', 1);

-- =====================================================
-- ÍNDICES ADICIONALES PARA OPTIMIZACIÓN
-- =====================================================

-- Índices para mejorar el rendimiento de consultas
CREATE INDEX `idx_usuarios_activo` ON `usuarios` (`activo`);
CREATE INDEX `idx_usuarios_ultimo_login` ON `usuarios` (`ultimo_login`);
CREATE INDEX `idx_roles_activo` ON `roles` (`activo`);

-- =====================================================
-- VISTAS ÚTILES
-- =====================================================

-- Vista para obtener usuarios con información de rol
CREATE OR REPLACE VIEW `v_usuarios_completo` AS
SELECT 
    u.id,
    u.username,
    u.email,
    u.nombre,
    u.apellido,
    u.documento,
    u.telefono,
    u.activo,
    u.ultimo_login,
    u.fecha_creacion,
    r.nombre as rol_nombre,
    r.descripcion as rol_descripcion
FROM usuarios u
INNER JOIN roles r ON u.rol_id = r.id;

-- =====================================================
-- PROCEDIMIENTOS ALMACENADOS
-- =====================================================

DELIMITER //

-- Procedimiento para validar login
CREATE PROCEDURE `sp_validar_login`(
    IN p_username VARCHAR(50),
    OUT p_user_id INT,
    OUT p_password_hash VARCHAR(255),
    OUT p_rol_nombre VARCHAR(50),
    OUT p_activo TINYINT
)
BEGIN
    SELECT 
        u.id,
        u.password_hash,
        r.nombre,
        u.activo
    INTO 
        p_user_id,
        p_password_hash,
        p_rol_nombre,
        p_activo
    FROM usuarios u
    INNER JOIN roles r ON u.rol_id = r.id
    WHERE u.username = p_username OR u.email = p_username;
END //

-- Procedimiento para actualizar último login
CREATE PROCEDURE `sp_actualizar_ultimo_login`(
    IN p_user_id INT
)
BEGIN
    UPDATE usuarios 
    SET ultimo_login = CURRENT_TIMESTAMP 
    WHERE id = p_user_id;
END //

DELIMITER ;

-- Rehabilitar verificación de llaves foráneas
SET FOREIGN_KEY_CHECKS = 1;

-- =====================================================
-- SCRIPT COMPLETADO
-- =====================================================
-- Para usar este script:
-- 1. Ejecutar en phpMyAdmin o cliente MySQL
-- 2. Verificar que las tablas se crearon correctamente
-- 3. Configurar la conexión en el proyecto Next.js
-- =====================================================