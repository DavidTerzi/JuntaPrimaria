-- =====================================================
-- SCRIPT SQL PARA TABLA SUPLENCIAS - JUNTA PRIMARIA
-- =====================================================
-- Base de datos: juntaprimaria_db
-- Descripción: Tabla para gestionar suplencias
-- Fecha: 6 de octubre de 2025
-- =====================================================

USE `juntaprimaria_db`;

-- Deshabilitar verificación de llaves foráneas temporalmente
SET FOREIGN_KEY_CHECKS = 0;

-- =====================================================
-- TABLA: suplencias
-- Descripción: Almacena las suplencias del sistema educativo
-- =====================================================
DROP TABLE IF EXISTS `suplencias`;

CREATE TABLE `suplencias` (
  `id_suplencia` INT(11) NOT NULL AUTO_INCREMENT,
  `id_persona` INT(11) NOT NULL,
  `cue` VARCHAR(20) NOT NULL,
  `id_cargo` INT(11) NOT NULL,
  `fecha_inicio` DATE NOT NULL,
  `fecha_baja` DATE NULL,
  `primera_titularizacion` DATE NULL,
  `segunda_titularizacion` DATE NULL,
  `observaciones` TEXT NULL,
  `activo` TINYINT(1) DEFAULT 1,
  `fecha_creacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_suplencia`),
  KEY `idx_suplencias_persona` (`id_persona`),
  KEY `idx_suplencias_cargo` (`id_cargo`),
  KEY `idx_suplencias_cue` (`cue`),
  KEY `idx_suplencias_activo` (`activo`),
  KEY `idx_suplencias_fecha_inicio` (`fecha_inicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insertar algunos datos de ejemplo (opcional)
INSERT INTO `suplencias` (
  `id_persona`, 
  `cue`, 
  `id_cargo`, 
  `fecha_inicio`, 
  `fecha_baja`, 
  `primera_titularizacion`, 
  `segunda_titularizacion`, 
  `observaciones`
) VALUES
(1, '140001400', 1, '2025-01-15', NULL, NULL, NULL, 'Suplencia activa en cargo directivo'),
(2, '140001401', 2, '2025-02-01', '2025-06-30', '2025-03-01', NULL, 'Suplencia finalizada - Primera titularización'),
(3, '140001402', 3, '2025-03-01', NULL, NULL, NULL, 'Suplencia docente en matemáticas');

-- Rehabilitar verificación de llaves foráneas
SET FOREIGN_KEY_CHECKS = 1;

-- =====================================================
-- VISTA PARA CONSULTAS COMPLETAS DE SUPLENCIAS
-- =====================================================
CREATE OR REPLACE VIEW `v_suplencias_completa` AS
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
  dep.nombre as departamento,
  ue.nivel_educativo,
  ue.ambito,
  ue.turno
FROM suplencias s
INNER JOIN personas p ON s.id_persona = p.id_persona
INNER JOIN unidades_educativas ue ON s.cue = ue.cue
INNER JOIN denominaciondecargos dc ON s.id_cargo = dc.id_cargo
LEFT JOIN departamentos dep ON ue.id_departamento = dep.id_departamento
ORDER BY s.fecha_inicio DESC;

-- =====================================================
-- SCRIPT COMPLETADO
-- =====================================================
