-- =====================================================
-- SCRIPT PARA CORREGIR COLLATIONS (VERSIÓN SEGURA)
-- =====================================================

USE `juntaprimaria_db`;

-- Deshabilitar verificación de llaves foráneas
SET FOREIGN_KEY_CHECKS = 0;

-- Cambiar la collation de la base de datos
ALTER DATABASE `juntaprimaria_db` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Cambiar collation de las tablas que no son parte del sistema auth
-- (estas fueron creadas con utf8mb4_0900_ai_ci)
ALTER TABLE `departamentos` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE `denominaciondecargos` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE `domicilios` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE `estados_cargos` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE `historial_cargos` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE `licencias` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE `listadodejunta` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE `personas` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE `tiposdetraslados` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE `tipos_licencias` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE `unidades_educativas` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Rehabilitar verificación de llaves foráneas
SET FOREIGN_KEY_CHECKS = 1;

-- =====================================================
-- SCRIPT COMPLETADO
-- =====================================================