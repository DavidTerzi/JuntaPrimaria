-- =====================================================
-- DATOS DE EJEMPLO PARA SUPLENCIAS - JUNTA PRIMARIA
-- =====================================================
-- Base de datos: juntaprimaria_db
-- Descripción: Datos de ejemplo para probar el sistema
-- Fecha: 6 de octubre de 2025
-- =====================================================

USE `juntaprimaria_db`;

-- Insertar departamentos de ejemplo
INSERT IGNORE INTO `departamentos` (`id_departamento`, `nombre`) VALUES
(1, 'Capital'),
(2, 'Rawson'),
(3, 'Trelew'),
(4, 'Puerto Madryn'),
(5, 'Esquel');

-- Insertar domicilios de ejemplo
INSERT IGNORE INTO `domicilios` (`id_domicilio`, `calle`, `numero`, `localidad`, `id_departamento`) VALUES
(1, 'Av. San Martín', '1234', 'Rawson', 2),
(2, 'Belgrano', '567', 'Trelew', 3),
(3, 'Mitre', '890', 'Puerto Madryn', 4),
(4, 'Rivadavia', '432', 'Esquel', 5),
(5, '25 de Mayo', '876', 'Rawson', 2);

-- Insertar unidades educativas de ejemplo
INSERT IGNORE INTO `unidades_educativas` (`cue`, `nombre`, `nivel_educativo`, `ambito`, `turno`, `id_domicilio`, `id_departamento`, `radio`) VALUES
('140001400', 'Escuela Provincial N° 1', 'Primario', 'Urbano', 'Mañana', 1, 2, 'I'),
('140001401', 'Escuela Provincial N° 25', 'Primario', 'Urbano', 'Tarde', 2, 3, 'II'),
('140001402', 'Escuela Provincial N° 50', 'Primario', 'Rural', 'Mañana', 3, 4, 'III'),
('140001403', 'Escuela Provincial N° 75', 'Secundario', 'Urbano', 'Mañana', 4, 5, 'IV'),
('140001404', 'Escuela Provincial N° 100', 'Primario', 'Urbano', 'Doble Turno', 5, 2, 'I');

-- Insertar denominación de cargos de ejemplo
INSERT IGNORE INTO `denominaciondecargos` (`id_cargo`, `denominacion`, `id_junta`) VALUES
(1, 'Maestro de Grado', 1),
(2, 'Director', 1),
(3, 'Vicedirector', 1),
(4, 'Secretario', 1),
(5, 'Maestro Especial de Educación Física', 1),
(6, 'Maestro Especial de Música', 1),
(7, 'Maestro Especial de Inglés', 1),
(8, 'Profesor de Matemática', 2),
(9, 'Profesor de Lengua', 2),
(10, 'Preceptor', 2);

-- Insertar junta de ejemplo (si no existe)
INSERT IGNORE INTO `listadodejunta` (`id_junta`, `nombre`) VALUES
(1, 'Junta de Clasificación Nivel Primario'),
(2, 'Junta de Clasificación Nivel Secundario');

-- Insertar personas de ejemplo
INSERT IGNORE INTO `personas` (`id_persona`, `numero_documento`, `apellido`, `nombre`) VALUES
(1, '25123456', 'García', 'María Elena'),
(2, '30987654', 'Rodríguez', 'Juan Carlos'),
(3, '28456789', 'López', 'Ana Sofía'),
(4, '35789123', 'Martínez', 'Pedro José'),
(5, '32654987', 'Fernández', 'Laura Patricia'),
(6, '29876543', 'González', 'Miguel Ángel'),
(7, '33456789', 'Sánchez', 'Carla Beatriz'),
(8, '27123456', 'Pérez', 'Roberto Daniel'),
(9, '31789456', 'Torres', 'Silvia Mónica'),
(10, '34567890', 'Morales', 'Diego Alejandro');

-- Actualizar la tabla suplencias con datos reales
DELETE FROM `suplencias`;
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
-- Suplencias activas
(1, '140001400', 1, '2025-03-01', NULL, NULL, NULL, 'Suplencia por licencia por maternidad'),
(2, '140001401', 2, '2025-02-15', NULL, '2025-04-01', NULL, 'Suplencia directiva - Primera titularización aprobada'),
(3, '140001402', 5, '2025-01-10', NULL, NULL, NULL, 'Suplencia por jubilación del titular'),
(4, '140001403', 8, '2025-02-20', NULL, NULL, NULL, 'Suplencia por traslado del titular'),
(5, '140001404', 3, '2025-03-15', NULL, NULL, NULL, 'Suplencia por licencia prolongada'),

-- Suplencias con primera titularización
(6, '140001400', 6, '2024-08-01', NULL, '2024-12-01', NULL, 'Primera titularización diciembre 2024'),
(7, '140001401', 7, '2024-09-15', NULL, '2025-01-15', NULL, 'Primera titularización enero 2025'),

-- Suplencias con segunda titularización
(8, '140001402', 1, '2023-03-01', NULL, '2023-08-01', '2024-03-01', 'Segunda titularización completada'),
(9, '140001403', 9, '2023-05-15', NULL, '2023-12-01', '2024-06-01', 'Proceso de titularización completo'),

-- Suplencias finalizadas
(10, '140001404', 4, '2024-06-01', '2024-12-15', NULL, NULL, 'Suplencia finalizada por reintegro del titular');

-- =====================================================
-- SCRIPT COMPLETADO
-- =====================================================