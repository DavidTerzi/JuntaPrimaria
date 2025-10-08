-- =====================================================
-- BASE DE DATOS JUNTA PRIMARIA - VERSIÓN 3.0 MEJORADA
-- =====================================================
-- Fecha de generación: 2025-10-08
--
-- MEJORAS APLICADAS EN VERSIÓN 3.0:
--   ✓ IDs autoincrementales en docentes y establecimientos como PK
--   ✓ DNI y CUE como UNIQUE KEYS para integridad
--   ✓ Tabla suplencias reintegrada
--   ✓ Tabla estados_cargos reintegrada
--   ✓ Tabla tipos_licencias reintegrada
--   ✓ Tablas departamentos y domicilios reintegradas
--   ✓ Todas las FK usando IDs numéricos (mejor performance)
--   ✓ Índices optimizados
--   ✓ Integridad referencial completa
-- =====================================================

DROP DATABASE IF EXISTS juntaprimaria_db;
CREATE DATABASE juntaprimaria_db DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE juntaprimaria_db;

SET FOREIGN_KEY_CHECKS = 0;
SET SQL_MODE = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
SET autocommit = 1;

-- =====================================================
-- SECCIÓN 1: TABLAS DE AUTENTICACIÓN
-- =====================================================

CREATE TABLE roles (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  descripcion TEXT,
  activo TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uk_roles_nombre (nombre),
  INDEX idx_activo (activo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE usuarios (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  documento VARCHAR(20),
  telefono VARCHAR(20),
  rol_id INT UNSIGNED NOT NULL,
  activo TINYINT(1) DEFAULT 1,
  ultimo_login TIMESTAMP NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uk_usuarios_username (username),
  UNIQUE KEY uk_usuarios_email (email),
  INDEX idx_activo (activo),
  INDEX idx_ultimo_login (ultimo_login),
  FOREIGN KEY fk_usuarios_rol (rol_id) REFERENCES roles(id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE sesiones (
  id VARCHAR(128) PRIMARY KEY,
  usuario_id INT UNSIGNED NOT NULL,
  ip_address VARCHAR(45),
  user_agent TEXT,
  payload LONGTEXT NOT NULL,
  ultima_actividad INT UNSIGNED NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_usuario (usuario_id),
  INDEX idx_ultima_actividad (ultima_actividad),
  FOREIGN KEY fk_sesiones_usuario (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- =====================================================
-- SECCIÓN 2: TABLAS DE CATÁLOGOS
-- =====================================================

-- Tabla: tipos_traslado
CREATE TABLE tipos_traslado (
  id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  tipo VARCHAR(50) NOT NULL UNIQUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_tipo (tipo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabla: estados_cargos (REINTEGRADA)
CREATE TABLE estados_cargos (
  id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL UNIQUE,
  descripcion TEXT,
  activo TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_nombre (nombre),
  INDEX idx_activo (activo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabla: tipos_licencias (REINTEGRADA)
CREATE TABLE tipos_licencias (
  id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL UNIQUE,
  descripcion TEXT,
  requiere_certificado TINYINT(1) DEFAULT 0,
  dias_maximos SMALLINT UNSIGNED NULL,
  activo TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_nombre (nombre),
  INDEX idx_activo (activo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabla: listadodejunta
CREATE TABLE listadodejunta (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL UNIQUE,
  activo TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_nombre (nombre),
  INDEX idx_activo (activo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- =====================================================
-- SECCIÓN 3: TABLAS GEOGRÁFICAS (REINTEGRADAS)
-- =====================================================

-- Tabla: departamentos
CREATE TABLE departamentos (
  id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL UNIQUE,
  codigo VARCHAR(10),
  activo TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_nombre (nombre),
  INDEX idx_codigo (codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabla: domicilios
CREATE TABLE domicilios (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  calle VARCHAR(100),
  numero VARCHAR(10),
  barrio VARCHAR(100),
  ciudad VARCHAR(100),
  id_departamento SMALLINT UNSIGNED,
  codigo_postal VARCHAR(10),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_ciudad (ciudad),
  INDEX idx_departamento (id_departamento),
  FOREIGN KEY fk_domicilios_departamento (id_departamento) REFERENCES departamentos(id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- =====================================================
-- SECCIÓN 4: TABLAS PRINCIPALES - DOCENTES Y ESTABLECIMIENTOS
-- =====================================================

-- Tabla: docentes (CON ID AUTOINCREMENTAL)
CREATE TABLE docentes (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  numero_documento BIGINT UNSIGNED NOT NULL UNIQUE COMMENT 'DNI del docente',
  apellido VARCHAR(100) NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  fecha_nacimiento DATE NULL,
  email VARCHAR(100),
  telefono VARCHAR(20),
  id_domicilio INT UNSIGNED NULL,
  activo TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_numero_documento (numero_documento),
  INDEX idx_apellido_nombre (apellido, nombre),
  INDEX idx_activo (activo),
  FOREIGN KEY fk_docentes_domicilio (id_domicilio) REFERENCES domicilios(id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabla: establecimientos (CON ID AUTOINCREMENTAL)
CREATE TABLE establecimientos (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cue VARCHAR(20) NOT NULL UNIQUE COMMENT 'Código Único de Establecimiento',
  nombre VARCHAR(255) NOT NULL,
  nivel_educativo ENUM('INICIAL','PRIMARIO','SECUNDARIO','ESPECIAL','ADULTOS','NO_FORMAL') NOT NULL DEFAULT 'PRIMARIO',
  ambito ENUM('PUBLICO','PRIVADO') NOT NULL DEFAULT 'PUBLICO',
  id_domicilio INT UNSIGNED NULL,
  id_departamento SMALLINT UNSIGNED NULL,
  radio TINYINT UNSIGNED,
  categoria TINYINT UNSIGNED,
  telefono VARCHAR(20),
  email VARCHAR(100),
  activo TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_cue (cue),
  INDEX idx_nombre (nombre),
  INDEX idx_radio (radio),
  INDEX idx_departamento (id_departamento),
  INDEX idx_nivel (nivel_educativo),
  INDEX idx_activo (activo),
  FOREIGN KEY fk_establecimientos_domicilio (id_domicilio) REFERENCES domicilios(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY fk_establecimientos_departamento (id_departamento) REFERENCES departamentos(id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabla: establecimientos_turnos
CREATE TABLE establecimientos_turnos (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_establecimiento INT UNSIGNED NOT NULL,
  turno ENUM('MAÑANA','TARDE','VESPERTINO','INTERTURNO','NOCHE','JORNADA_COMPLETA','JORNADA_EXTENDIDA') NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY uk_establecimiento_turno (id_establecimiento, turno),
  INDEX idx_turno (turno),
  FOREIGN KEY fk_turnos_establecimiento (id_establecimiento) REFERENCES establecimientos(id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabla: denominacion_cargos
CREATE TABLE denominacion_cargos (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  denominacion VARCHAR(255) NOT NULL UNIQUE,
  id_listado_junta INT UNSIGNED NULL,
  activo TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_denominacion (denominacion),
  INDEX idx_listado (id_listado_junta),
  INDEX idx_activo (activo),
  FOREIGN KEY fk_cargos_listado (id_listado_junta) REFERENCES listadodejunta(id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- =====================================================
-- SECCIÓN 5: TABLAS DE TRANSACCIONES
-- =====================================================

-- Tabla: historial_laboral
CREATE TABLE historial_laboral (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_docente INT UNSIGNED NOT NULL,
  id_cargo INT UNSIGNED NULL,
  id_establecimiento INT UNSIGNED NULL,
  id_estado_cargo TINYINT UNSIGNED NULL,
  fecha_toma_posesion DATE NULL,
  fecha_baja DATE NULL,
  titular_desde DATE NULL,
  observaciones TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_docente (id_docente),
  INDEX idx_cargo (id_cargo),
  INDEX idx_establecimiento (id_establecimiento),
  INDEX idx_estado (id_estado_cargo),
  INDEX idx_fecha_toma (fecha_toma_posesion),
  INDEX idx_fecha_baja (fecha_baja),
  INDEX idx_activo (fecha_baja),
  FOREIGN KEY fk_historial_docente (id_docente) REFERENCES docentes(id) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY fk_historial_cargo (id_cargo) REFERENCES denominacion_cargos(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY fk_historial_establecimiento (id_establecimiento) REFERENCES establecimientos(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY fk_historial_estado (id_estado_cargo) REFERENCES estados_cargos(id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabla: suplencias (REINTEGRADA)
CREATE TABLE suplencias (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_docente INT UNSIGNED NOT NULL,
  id_establecimiento INT UNSIGNED NOT NULL,
  id_cargo INT UNSIGNED NOT NULL,
  id_estado_cargo TINYINT UNSIGNED NULL,
  fecha_inicio DATE NOT NULL,
  fecha_baja DATE NULL,
  primera_titularizacion DATE NULL,
  segunda_titularizacion DATE NULL,
  motivo_suplencia VARCHAR(255),
  id_docente_suplido INT UNSIGNED NULL COMMENT 'Docente al que se suple',
  observaciones TEXT,
  activo TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_docente (id_docente),
  INDEX idx_establecimiento (id_establecimiento),
  INDEX idx_cargo (id_cargo),
  INDEX idx_fecha_inicio (fecha_inicio),
  INDEX idx_fecha_baja (fecha_baja),
  INDEX idx_activo (activo),
  FOREIGN KEY fk_suplencias_docente (id_docente) REFERENCES docentes(id) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY fk_suplencias_establecimiento (id_establecimiento) REFERENCES establecimientos(id) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY fk_suplencias_cargo (id_cargo) REFERENCES denominacion_cargos(id) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY fk_suplencias_estado (id_estado_cargo) REFERENCES estados_cargos(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY fk_suplencias_docente_suplido (id_docente_suplido) REFERENCES docentes(id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabla: antiguedad_titular
CREATE TABLE antiguedad_titular (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_docente INT UNSIGNED NOT NULL,
  id_cargo INT UNSIGNED NULL,
  id_establecimiento_origen INT UNSIGNED NULL,
  id_establecimiento_destino INT UNSIGNED NULL,
  id_tipo_traslado TINYINT UNSIGNED NULL,
  titular_desde DATE NULL,
  fecha_traslado_baja DATE NULL,
  turno_traslada ENUM('MAÑANA','TARDE','VESPERTINO','INTERTURNO','NOCHE','JORNADA_COMPLETA','JORNADA_EXTENDIDA') NULL,
  radio_traslada TINYINT UNSIGNED NULL,
  categoria_traslada TINYINT UNSIGNED NULL,
  observaciones TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_docente (id_docente),
  INDEX idx_cargo (id_cargo),
  INDEX idx_fecha_traslado (fecha_traslado_baja),
  INDEX idx_establecimiento_origen (id_establecimiento_origen),
  INDEX idx_establecimiento_destino (id_establecimiento_destino),
  FOREIGN KEY fk_antiguedad_docente (id_docente) REFERENCES docentes(id) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY fk_antiguedad_cargo (id_cargo) REFERENCES denominacion_cargos(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY fk_antiguedad_est_origen (id_establecimiento_origen) REFERENCES establecimientos(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY fk_antiguedad_est_destino (id_establecimiento_destino) REFERENCES establecimientos(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY fk_antiguedad_tipo_traslado (id_tipo_traslado) REFERENCES tipos_traslado(id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabla: licencias (MEJORADA)
CREATE TABLE licencias (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_docente INT UNSIGNED NOT NULL,
  id_tipo_licencia SMALLINT UNSIGNED NOT NULL,
  fecha_inicio DATE NOT NULL,
  fecha_fin DATE NULL,
  certificado_medico TINYINT(1) DEFAULT 0,
  archivo_adjunto VARCHAR(255),
  observaciones TEXT,
  activo TINYINT(1) DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_docente (id_docente),
  INDEX idx_tipo (id_tipo_licencia),
  INDEX idx_fechas (fecha_inicio, fecha_fin),
  INDEX idx_activo (activo),
  FOREIGN KEY fk_licencias_docente (id_docente) REFERENCES docentes(id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY fk_licencias_tipo (id_tipo_licencia) REFERENCES tipos_licencias(id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabla: calculo_antiguedad
CREATE TABLE calculo_antiguedad (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_docente INT UNSIGNED NULL,
  id_cargo INT UNSIGNED NULL,
  id_tipo_traslado TINYINT UNSIGNED NULL,
  unidad_educativa VARCHAR(255),
  turno_traslada VARCHAR(100),
  categoria_traslada TINYINT UNSIGNED NULL,
  radio_traslada TINYINT UNSIGNED NULL,
  años TINYINT UNSIGNED DEFAULT 0,
  meses TINYINT UNSIGNED DEFAULT 0,
  dias SMALLINT UNSIGNED DEFAULT 0,
  fecha_traslado_baja DATE NULL,
  observaciones TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_docente (id_docente),
  INDEX idx_cargo (id_cargo),
  INDEX idx_antiguedad (años DESC, meses DESC, dias DESC),
  FOREIGN KEY fk_calculo_docente (id_docente) REFERENCES docentes(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY fk_calculo_cargo (id_cargo) REFERENCES denominacion_cargos(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY fk_calculo_tipo_traslado (id_tipo_traslado) REFERENCES tipos_traslado(id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- =====================================================
-- SECCIÓN 6: DATOS INICIALES
-- =====================================================

-- Roles
INSERT INTO roles (nombre, descripcion) VALUES
('superadmin', 'Super Administrador del sistema con control total'),
('admin', 'Administrador del sistema con acceso completo'),
('usuario', 'Usuario estándar con acceso limitado'),
('consultor', 'Solo consulta y reportes, sin modificaciones');

-- Usuario administrador por defecto (Password: admin123)
INSERT INTO usuarios (username, email, password_hash, nombre, apellido, documento, rol_id) VALUES
('superadmin', 'superadmin@juntaprimaria.gov.ar', '$2b$10$yFQeEqSUfd9XwPi9eK5QWe.PTXq6U8Zj5CliRs.ZdRn21N8uGumd.', 'Super Administrador', 'Sistema', '00000000', 1),
('admin', 'admin@juntaprimaria.gov.ar', '$2b$10$yFQeEqSUfd9XwPi9eK5QWe.PTXq6U8Zj5CliRs.ZdRn21N8uGumd.', 'Administrador', 'Sistema', '11111111', 2);

-- Tipos de traslado
INSERT INTO tipos_traslado (tipo) VALUES
('Ordinario'),
('Preferencial'),
('Permuta'),
('Reubicación'),
('Por Necesidad de Servicio');

-- Estados de cargos
INSERT INTO estados_cargos (nombre, descripcion) VALUES
('Titular', 'Docente titular del cargo'),
('Suplente', 'Docente suplente temporal'),
('Interino', 'Docente interino hasta concurso'),
('Provisional', 'Designación provisional'),
('Renunciado', 'Cargo renunciado'),
('Trasladado', 'Docente trasladado a otro establecimiento'),
('Licencia', 'Docente con licencia'),
('Jubilado', 'Docente jubilado');

-- Tipos de licencias comunes
INSERT INTO tipos_licencias (nombre, descripcion, requiere_certificado, dias_maximos) VALUES
('Licencia por Enfermedad', 'Licencia médica por enfermedad', 1, 30),
('Licencia por Maternidad', 'Licencia por maternidad', 1, 180),
('Licencia por Paternidad', 'Licencia por paternidad', 0, 15),
('Licencia Anual Ordinaria', 'Licencia de vacaciones anuales', 0, 45),
('Licencia por Estudio', 'Licencia para estudios o capacitación', 0, NULL),
('Licencia sin Goce de Sueldo', 'Licencia sin percepción de haberes', 0, NULL),
('Licencia por Duelo', 'Licencia por fallecimiento familiar', 0, 10),
('Licencia por Casamiento', 'Licencia por matrimonio', 0, 10),
('Licencia por Accidente de Trabajo', 'Licencia por accidente laboral', 1, NULL),
('Licencia Gremial', 'Licencia por actividad sindical', 0, NULL);

-- Departamentos de San Juan (19 departamentos)
INSERT INTO departamentos (nombre, codigo) VALUES
('Capital', 'CAP'),
('Rawson', 'RAW'),
('Chimbas', 'CHI'),
('Rivadavia', 'RIV'),
('Santa Lucía', 'SLU'),
('Pocito', 'POC'),
('9 de Julio', '9JU'),
('Albardón', 'ALB'),
('Angaco', 'ANG'),
('Caucete', 'CAU'),
('Sarmiento', 'SAR'),
('Ullum', 'ULL'),
('Zonda', 'ZON'),
('San Martín', 'SMA'),
('Jáchal', 'JAC'),
('Valle Fértil', 'VFE'),
('Iglesia', 'IGL'),
('Calingasta', 'CAL'),
('25 de Mayo', '25M');

-- =====================================================
-- LISTADOS DE JUNTA Y DENOMINACIÓN DE CARGOS (DESDE EXCEL)
-- =====================================================

-- Listados de Junta
INSERT INTO listadodejunta (nombre, activo) VALUES
('Celador Educación Especial', 1),
('Director 1° Categoría - Nivel Inicial', 1),
('Director 1° Categoría – Educación Primaria', 1),
('Director 2ª Categoría Educación Primaria', 1),
('Director 3° Categoría - Educación Primaria', 1),
('Director 3° Categoría - Educación Primaria Adultos', 1),
('Director 3° Categoría - Nivel Inicial', 1),
('Director Educación Especial (dos turnos)', 1),
('Maestro de Especialidades - ACTIVIDADES PRÁCTICAS (TECNOLOGÍA)', 1),
('Maestro de Especialidades - COMPUTACIÓN', 1),
('Maestro de Especialidades - EDUCACIÓN AGROPECUARIA', 1),
('Maestro de Especialidades - EDUCACIÓN FÍSICA', 1),
('Maestro de Especialidades - INGLÉS', 1),
('Maestro de Especialidades - MÚSICA', 1),
('Maestro de Especialidades - PLÁSTICA', 1),
('Maestro de Especialidades - TEATRO', 1),
('Maestro de Especialidades de Educación Especial - ESPECIALIDAD CERÁMICA', 1),
('Maestro de Especialidades de Educación Especial - ESPECIALIDAD COCINA Y REPOSTERÍA', 1),
('Maestro de Especialidades de Educación Especial - ESPECIALIDAD EDUCACIÓN AGROPECUARIA', 1),
('Maestro de Especialidades de Educación Especial - ESPECIALIDAD MÚSICA', 1),
('Maestro de Especialidades de Educación Especial - PSICOMOTRICIDAD', 1),
('Maestro de Grado - Educación Primaria', 1),
('Maestro de Grado - Educación Primaria Adultos', 1),
('Maestro de Grado de Educación Especial - DISCAPACITADOS MENTALES', 1),
('Maestro de Grado de Educación Especial - SORDOS e HIPOACÚSICOS', 1),
('Maestro de Grado de Educación Especial - TRASTORNOS DEL APRENDIZAJE', 1),
('Maestro de Nivel Inicial', 1),
('Vice Director 1º Categoría - Educación Primaria', 1),
('Vicedirector 2ª Categoría Educación Primaria', 1),
('Vicedirector E.N.I. / J.I.N.Z.', 1);

-- Denominación de Cargos
INSERT INTO denominacion_cargos (denominacion, id_listado_junta, activo)
VALUES
('Celador Educacion Especial', (SELECT id FROM listadodejunta WHERE nombre = 'Celador Educación Especial' LIMIT 1), 1),
('Director 1° Categoría – Educación Primaria', (SELECT id FROM listadodejunta WHERE nombre = 'Director 1° Categoría – Educación Primaria' LIMIT 1), 1),
('Director 2ª Categoría Educación Primaria', (SELECT id FROM listadodejunta WHERE nombre = 'Director 2ª Categoría Educación Primaria' LIMIT 1), 1),
('Director 3° Categoría - Educación Primaria', (SELECT id FROM listadodejunta WHERE nombre = 'Director 3° Categoría - Educación Primaria' LIMIT 1), 1),
('Director 3° Categoría - Educación Primaria Adultos', (SELECT id FROM listadodejunta WHERE nombre = 'Director 3° Categoría - Educación Primaria Adultos' LIMIT 1), 1),
('Director 1° Categoría - Nivel Inicial', (SELECT id FROM listadodejunta WHERE nombre = 'Director 1° Categoría - Nivel Inicial' LIMIT 1), 1),
('Director 3° Categoría - Nivel Inicial', (SELECT id FROM listadodejunta WHERE nombre = 'Director 3° Categoría - Nivel Inicial' LIMIT 1), 1),
('Director Educación Especial (dos turnos)', (SELECT id FROM listadodejunta WHERE nombre = 'Director Educación Especial (dos turnos)' LIMIT 1), 1),
('Maestro de Especialidades – Educación Inicial y/o Primario - Jornada Simple - ACTIVIDADES PRACTICAS(TECNOLOGIA)', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Especialidades - ACTIVIDADES PRÁCTICAS (TECNOLOGÍA)' LIMIT 1), 1),
('Maestro de Especialidades – Nivel Inicial y/o Primario - TECNOLOGIA', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Especialidades - ACTIVIDADES PRÁCTICAS (TECNOLOGÍA)' LIMIT 1), 1),
('Maestro de Especialidades – Educación Inicial y/o Primario - Jornada Simple - COMPUTACION', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Especialidades - COMPUTACIÓN' LIMIT 1), 1),
('Maestro de Especialidades – Educación Inicial y/o Primario - Jornada Simple - EDUCACION AGROPECUARIA', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Especialidades - EDUCACIÓN AGROPECUARIA' LIMIT 1), 1),
('Maestro de Especialidades - EDUCACIÓN FÍSICA', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Especialidades - EDUCACIÓN FÍSICA' LIMIT 1), 1),
('Maestro de Especialidades – Educación Inicial y/o Primario - Jornada Simple - INGLES', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Especialidades - INGLÉS' LIMIT 1), 1),
('Maestro de Especialidades - MÚSICA', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Especialidades - MÚSICA' LIMIT 1), 1),
('Maestro de Especialidades – Educación Inicial y/o Primario - Jornada Simple - EDUCACION PLASTICA', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Especialidades - PLÁSTICA' LIMIT 1), 1),
('Maestro de Especialidades – Educación Inicial y/o Primario - Jornada Simple - TEATRO', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Especialidades - TEATRO' LIMIT 1), 1),
('Maestro de Especialidades de Educación Especial - ESPECIALIDAD CERAMICA', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Especialidades de Educación Especial - ESPECIALIDAD CERÁMICA' LIMIT 1), 1),
('Maestro de Especialidades de Educación Especial - ESPECIALIDAD COCINA Y REPOSTERIA', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Especialidades de Educación Especial - ESPECIALIDAD COCINA Y REPOSTERÍA' LIMIT 1), 1),
('Maestro de Especialidades de Educación Especial - ESPECIALIDAD EDUCACIÓN AGROPECUARIA', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Especialidades de Educación Especial - ESPECIALIDAD EDUCACIÓN AGROPECUARIA' LIMIT 1), 1),
('Maestro de Especialidades de Educación Especial - ESPECIALIDAD MÚSICA', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Especialidades de Educación Especial - ESPECIALIDAD MÚSICA' LIMIT 1), 1),
('Maestro de Especialidades de Educación Especial - PSICOMOTRICIDAD', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Especialidades de Educación Especial - PSICOMOTRICIDAD' LIMIT 1), 1),
('Maestro de Grado - Educación Primaria - Jornada Simple', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Grado - Educación Primaria' LIMIT 1), 1),
('Maestro de Grado Educación Primaria Jornada Extendida', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Grado - Educación Primaria' LIMIT 1), 1),
('Maestro de Grado Educación Primaria Jornada Completa', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Grado - Educación Primaria' LIMIT 1), 1),
('Maestro de Grado - Educación Primaria Adultos', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Grado - Educación Primaria Adultos' LIMIT 1), 1),
('Maestro de Grado de Educación Especial - DISCAPACITADOS MENTALES', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Grado de Educación Especial - DISCAPACITADOS MENTALES' LIMIT 1), 1),
('Maestro de Grado Educac.Espec. - DISCAPACIDAD INTELECTUAL', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Grado de Educación Especial - DISCAPACITADOS MENTALES' LIMIT 1), 1),
('Maestro de Grado de Educación Especial - IRREGULARES PSIQUICOS', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Grado de Educación Especial - DISCAPACITADOS MENTALES' LIMIT 1), 1),
('Maestro de Grado de Educación Especial - SORDOS e HIPOACUSICOS', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Grado de Educación Especial - SORDOS e HIPOACÚSICOS' LIMIT 1), 1),
('Maestro de Grado de Educación Especial - TRASTORNOS DEL APRENDIZAJE', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Grado de Educación Especial - TRASTORNOS DEL APRENDIZAJE' LIMIT 1), 1),
('Maestro Nivel Inicial', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Nivel Inicial' LIMIT 1), 1),
('Maestro de Educación Inicial - Jornada Simple', (SELECT id FROM listadodejunta WHERE nombre = 'Maestro de Nivel Inicial' LIMIT 1), 1),
('Vice Director 1º Categoría - Educación Primaria', (SELECT id FROM listadodejunta WHERE nombre = 'Vice Director 1º Categoría - Educación Primaria' LIMIT 1), 1),
('Vicedirector 2ª Categoría Educación Primaria', (SELECT id FROM listadodejunta WHERE nombre = 'Vicedirector 2ª Categoría Educación Primaria' LIMIT 1), 1),
('Vicedirector E.N.I. / J.I.N.Z.', (SELECT id FROM listadodejunta WHERE nombre = 'Vicedirector E.N.I. / J.I.N.Z.' LIMIT 1), 1);

-- =====================================================
-- DATOS DE EJEMPLO PARA OTRAS TABLAS
-- =====================================================

-- Domicilios de ejemplo (San Juan)
INSERT INTO domicilios (calle, numero, barrio, ciudad, id_departamento, codigo_postal) VALUES
('Av. Libertador San Martín', '123', 'Centro', 'San Juan', (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), '5400'),
('Mendoza', '456', 'Centro', 'Rawson', (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), '5425'),
('San Martín', '789', 'Centro', 'Chimbas', (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), '5413'),
('Ruta 40', '321', 'Centro', 'Rivadavia', (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), '5401'),
('Belgrano', '654', 'Centro', 'Santa Lucía', (SELECT id FROM departamentos WHERE nombre = 'Santa Lucía' LIMIT 1), '5411'),
('Sarmiento', '111', 'Centro', 'Pocito', (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), '5427'),
('9 de Julio', '222', 'Centro', '9 de Julio', (SELECT id FROM departamentos WHERE nombre = '9 de Julio' LIMIT 1), '5419'),
('Aberastain', '333', 'Centro', 'Caucete', (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), '5442'),
('San Martín', '444', 'Centro', 'Jáchal', (SELECT id FROM departamentos WHERE nombre = 'Jáchal' LIMIT 1), '5460'),
('Ruta 510', '555', 'Centro', 'Valle Fértil', (SELECT id FROM departamentos WHERE nombre = 'Valle Fértil' LIMIT 1), '5449');

-- Docentes de ejemplo
INSERT INTO docentes (numero_documento, apellido, nombre, fecha_nacimiento, email, telefono, id_domicilio, activo) VALUES
(12345678, 'GARCÍA', 'María Laura', '1980-05-15', 'mgarcia@ejemplo.com', '385-4123456', 1, 1),
(23456789, 'RODRÍGUEZ', 'Juan Carlos', '1975-08-22', 'jrodriguez@ejemplo.com', '385-4234567', 2, 1),
(34567890, 'FERNÁNDEZ', 'Ana Beatriz', '1985-03-10', 'afernandez@ejemplo.com', '385-4345678', 3, 1),
(45678901, 'LÓPEZ', 'Roberto Daniel', '1978-11-30', 'rlopez@ejemplo.com', '385-4456789', 4, 1),
(56789012, 'MARTÍNEZ', 'Claudia Susana', '1982-07-18', 'cmartinez@ejemplo.com', '385-4567890', 5, 1),
(67890123, 'GONZÁLEZ', 'Pablo Andrés', '1990-02-25', 'pgonzalez@ejemplo.com', '385-4678901', 1, 1),
(78901234, 'DÍAZ', 'Gabriela Inés', '1988-09-12', 'gdiaz@ejemplo.com', '385-4789012', 2, 1),
(89012345, 'PÉREZ', 'Fernando Luis', '1976-04-05', 'fperez@ejemplo.com', '385-4890123', 3, 1),
(90123456, 'SÁNCHEZ', 'Mónica Alejandra', '1983-12-20', 'msanchez@ejemplo.com', '385-4901234', 4, 1),
(11223344, 'ROMERO', 'Diego Martín', '1987-06-08', 'dromero@ejemplo.com', '385-4112233', 5, 1);

-- Establecimientos de ejemplo (San Juan)
INSERT INTO establecimientos (cue, nombre, nivel_educativo, ambito, id_domicilio, id_departamento, radio, categoria, telefono, email, activo) VALUES
('700047500', 'Escuela N° 25 de Mayo', 'PRIMARIO', 'PUBLICO', 1, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), 1, 1, '264-4211111', 'escuela25mayo@ejemplo.com', 1),
('700030300', 'Escuela 14 de Febrero', 'PRIMARIO', 'PUBLICO', 2, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), 2, 1, '264-4222222', '14febrero@ejemplo.com', 1),
('700035300', 'Escuela 13 de Junio', 'PRIMARIO', 'PUBLICO', 3, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), 2, 1, '264-4233333', '13junio@ejemplo.com', 1),
('700030200', 'Escuela 11 de Septiembre', 'INICIAL', 'PUBLICO', 2, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), 2, 1, '264-4244444', '11sept@ejemplo.com', 1),
('700034400', 'Escuela 12 de Agosto', 'INICIAL', 'PUBLICO', 6, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), 4, 1, '264-4255555', '12agosto@ejemplo.com', 1),
('700085700', 'ENI N° 24 San Juan Pablo II', 'INICIAL', 'PUBLICO', 8, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), 3, 1, '264-4266666', 'eni24@ejemplo.com', 1),
('700041700', 'Albergue Casa del Niño', 'PRIMARIO', 'PUBLICO', 10, (SELECT id FROM departamentos WHERE nombre = 'Valle Fértil' LIMIT 1), 6, 2, '264-4277777', 'casanino@ejemplo.com', 1),
('700090800', 'Colegio San Agustín Inicial', 'INICIAL', 'PRIVADO', 4, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), 2, 1, '264-4288888', 'sanagustin@ejemplo.com', 1);

-- Turnos de establecimientos
INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES
(1, 'MAÑANA'),
(1, 'TARDE'),
(2, 'MAÑANA'),
(2, 'TARDE'),
(3, 'MAÑANA'),
(4, 'MAÑANA'),
(4, 'TARDE'),
(5, 'MAÑANA'),
(6, 'JORNADA_COMPLETA'),
(7, 'NOCHE'),
(8, 'JORNADA_EXTENDIDA');

-- Historial laboral de ejemplo
INSERT INTO historial_laboral (id_docente, id_cargo, id_establecimiento, id_estado_cargo, fecha_toma_posesion, fecha_baja, titular_desde, observaciones) VALUES
(1, 1, 1, 1, '2015-03-01', NULL, '2018-03-01', 'Docente titular con 3 años de antigüedad'),
(2, 2, 2, 1, '2010-04-15', NULL, '2013-04-15', 'Director titular'),
(3, 3, 3, 2, '2020-08-01', NULL, NULL, 'Suplente en cargo de maestro de grado'),
(4, 4, 1, 1, '2012-03-01', '2022-12-31', '2015-03-01', 'Trasladado a otro establecimiento'),
(4, 4, 2, 1, '2023-01-01', NULL, '2023-01-01', 'Cargo actual después de traslado'),
(5, 5, 4, 1, '2018-05-10', NULL, '2021-05-10', 'Maestra de nivel inicial titular'),
(6, 6, 5, 3, '2021-09-01', NULL, NULL, 'Interino en jardín de infantes'),
(7, 7, 6, 1, '2016-03-01', NULL, '2019-03-01', 'Docente de educación especial titular'),
(8, 8, 7, 1, '2014-06-15', NULL, '2017-06-15', 'Maestro de adultos titular'),
(9, 9, 8, 2, '2022-03-01', NULL, NULL, 'Suplente en establecimiento privado'),
(10, 10, 1, 1, '2017-03-01', NULL, '2020-03-01', 'Maestro de especialidad titular');

-- Suplencias de ejemplo
INSERT INTO suplencias (id_docente, id_establecimiento, id_cargo, id_estado_cargo, fecha_inicio, fecha_baja, primera_titularizacion, segunda_titularizacion, motivo_suplencia, id_docente_suplido, observaciones, activo) VALUES
(3, 3, 3, 2, '2020-08-01', NULL, '2023-08-01', NULL, 'Licencia por enfermedad', 1, 'Suplencia activa', 1),
(6, 5, 6, 3, '2021-09-01', NULL, '2024-09-01', NULL, 'Cargo vacante por jubilación', NULL, 'Esperando primera titularización', 1),
(9, 8, 9, 2, '2022-03-01', '2023-12-31', NULL, NULL, 'Licencia por maternidad', 5, 'Suplencia finalizada', 0);

-- Licencias de ejemplo
INSERT INTO licencias (id_docente, id_tipo_licencia, fecha_inicio, fecha_fin, certificado_medico, observaciones, activo) VALUES
(1, 1, '2024-01-15', '2024-01-20', 1, 'Gripe', 0),
(2, 4, '2024-01-05', '2024-02-15', 0, 'Vacaciones anuales', 0),
(5, 2, '2023-06-01', '2023-12-01', 1, 'Licencia por maternidad', 0),
(7, 5, '2024-03-01', '2024-12-31', 0, 'Maestría en Educación Especial', 1),
(8, 7, '2024-02-10', '2024-02-15', 0, 'Fallecimiento de familiar directo', 0);

-- Antigüedad titular de ejemplo
INSERT INTO antiguedad_titular (id_docente, id_cargo, id_establecimiento_origen, id_establecimiento_destino, id_tipo_traslado, titular_desde, fecha_traslado_baja, turno_traslada, radio_traslada, categoria_traslada, observaciones) VALUES
(4, 4, 1, 2, 1, '2015-03-01', '2022-12-31', 'MAÑANA', 2, 1, 'Traslado ordinario por acercamiento al domicilio');

-- Cálculo de antigüedad de ejemplo
INSERT INTO calculo_antiguedad (id_docente, id_cargo, id_tipo_traslado, unidad_educativa, turno_traslada, categoria_traslada, radio_traslada, años, meses, dias, fecha_traslado_baja, observaciones) VALUES
(1, 1, NULL, 'Escuela N° 1 Bernardino Rivadavia', 'MAÑANA', 1, 1, 9, 7, 7, NULL, 'Antigüedad activa'),
(2, 2, NULL, 'Escuela N° 2 Domingo F. Sarmiento', 'TARDE', 1, 2, 14, 3, 15, NULL, 'Antigüedad activa'),
(4, 4, 1, 'Escuela N° 2 Domingo F. Sarmiento', 'MAÑANA', 1, 2, 12, 9, 7, '2022-12-31', 'Antigüedad con traslado');

-- Usuarios adicionales de ejemplo
INSERT INTO usuarios (username, email, password_hash, nombre, apellido, documento, telefono, rol_id, activo) VALUES
('usuario', 'usuario@juntaprimaria.gov.ar', '$2b$10$yFQeEqSUfd9XwPi9eK5QWe.PTXq6U8Zj5CliRs.ZdRn21N8uGumd.', 'Usuario', 'Estándar', '22222222', '385-4111111', 3, 1),
('consultor', 'consultor@juntaprimaria.gov.ar', '$2b$10$yFQeEqSUfd9XwPi9eK5QWe.PTXq6U8Zj5CliRs.ZdRn21N8uGumd.', 'Consultor', 'Sistema', '33333333', '385-4222222', 4, 1);

-- =====================================================
-- SECCIÓN 7: VISTAS
-- =====================================================

-- Vista: usuarios completos con rol
CREATE OR REPLACE VIEW v_usuarios_completo AS
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
    u.created_at,
    r.nombre as rol_nombre,
    r.descripcion as rol_descripcion
FROM usuarios u
INNER JOIN roles r ON u.rol_id = r.id;

-- Vista: docentes con domicilio completo
CREATE OR REPLACE VIEW v_docentes_completo AS
SELECT
    d.id,
    d.numero_documento,
    d.apellido,
    d.nombre,
    d.fecha_nacimiento,
    d.email,
    d.telefono,
    d.activo,
    CONCAT_WS(', ', dom.calle, dom.numero, dom.barrio, dom.ciudad) as domicilio_completo,
    dep.nombre as departamento,
    d.created_at
FROM docentes d
LEFT JOIN domicilios dom ON d.id_domicilio = dom.id
LEFT JOIN departamentos dep ON dom.id_departamento = dep.id;

-- Vista: establecimientos completos
CREATE OR REPLACE VIEW v_establecimientos_completo AS
SELECT
    e.id,
    e.cue,
    e.nombre,
    e.nivel_educativo,
    e.ambito,
    e.radio,
    e.categoria,
    e.telefono,
    e.email,
    e.activo,
    CONCAT_WS(', ', dom.calle, dom.numero, dom.ciudad) as domicilio_completo,
    dep.nombre as departamento,
    GROUP_CONCAT(et.turno ORDER BY et.turno SEPARATOR ', ') as turnos
FROM establecimientos e
LEFT JOIN domicilios dom ON e.id_domicilio = dom.id
LEFT JOIN departamentos dep ON e.id_departamento = dep.id
LEFT JOIN establecimientos_turnos et ON e.id = et.id_establecimiento
GROUP BY e.id;

-- Vista: historial laboral completo
CREATE OR REPLACE VIEW v_historial_laboral_completo AS
SELECT
    hl.id,
    d.numero_documento,
    d.apellido,
    d.nombre,
    dc.denominacion as cargo,
    e.nombre as establecimiento,
    e.cue,
    ec.nombre as estado_cargo,
    hl.fecha_toma_posesion,
    hl.fecha_baja,
    hl.titular_desde,
    CASE
        WHEN hl.fecha_baja IS NULL THEN 'ACTIVO'
        ELSE 'INACTIVO'
    END as estado,
    hl.observaciones,
    hl.created_at
FROM historial_laboral hl
INNER JOIN docentes d ON hl.id_docente = d.id
LEFT JOIN denominacion_cargos dc ON hl.id_cargo = dc.id
LEFT JOIN establecimientos e ON hl.id_establecimiento = e.id
LEFT JOIN estados_cargos ec ON hl.id_estado_cargo = ec.id;

-- Vista: suplencias activas
CREATE OR REPLACE VIEW v_suplencias_activas AS
SELECT
    s.id,
    d.numero_documento,
    d.apellido,
    d.nombre,
    dc.denominacion as cargo,
    e.nombre as establecimiento,
    e.cue,
    ec.nombre as estado,
    s.fecha_inicio,
    s.fecha_baja,
    s.primera_titularizacion,
    s.segunda_titularizacion,
    s.motivo_suplencia,
    ds.apellido as apellido_suplido,
    ds.nombre as nombre_suplido,
    s.observaciones
FROM suplencias s
INNER JOIN docentes d ON s.id_docente = d.id
INNER JOIN establecimientos e ON s.id_establecimiento = e.id
INNER JOIN denominacion_cargos dc ON s.id_cargo = dc.id
LEFT JOIN estados_cargos ec ON s.id_estado_cargo = ec.id
LEFT JOIN docentes ds ON s.id_docente_suplido = ds.id
WHERE s.activo = 1 AND s.fecha_baja IS NULL;

-- Vista: licencias activas
CREATE OR REPLACE VIEW v_licencias_activas AS
SELECT
    l.id,
    d.numero_documento,
    d.apellido,
    d.nombre,
    tl.nombre as tipo_licencia,
    l.fecha_inicio,
    l.fecha_fin,
    DATEDIFF(IFNULL(l.fecha_fin, CURDATE()), l.fecha_inicio) as dias_licencia,
    l.certificado_medico,
    l.observaciones,
    l.created_at
FROM licencias l
INNER JOIN docentes d ON l.id_docente = d.id
INNER JOIN tipos_licencias tl ON l.id_tipo_licencia = tl.id
WHERE l.activo = 1 AND (l.fecha_fin IS NULL OR l.fecha_fin >= CURDATE());

-- =====================================================
-- SECCIÓN 8: PROCEDIMIENTOS ALMACENADOS
-- =====================================================

DELIMITER $$

-- Procedimiento: validar login
DROP PROCEDURE IF EXISTS sp_validar_login$$
CREATE PROCEDURE sp_validar_login(
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
END$$

-- Procedimiento: actualizar último login
DROP PROCEDURE IF EXISTS sp_actualizar_ultimo_login$$
CREATE PROCEDURE sp_actualizar_ultimo_login(
    IN p_user_id INT
)
BEGIN
    UPDATE usuarios
    SET ultimo_login = CURRENT_TIMESTAMP
    WHERE id = p_user_id;
END$$

-- Procedimiento: obtener cargos activos de un docente
DROP PROCEDURE IF EXISTS sp_cargos_activos_docente$$
CREATE PROCEDURE sp_cargos_activos_docente(
    IN p_numero_documento BIGINT
)
BEGIN
    SELECT
        hl.id,
        dc.denominacion as cargo,
        e.nombre as establecimiento,
        e.cue,
        ec.nombre as estado,
        hl.fecha_toma_posesion,
        hl.titular_desde
    FROM historial_laboral hl
    INNER JOIN docentes d ON hl.id_docente = d.id
    LEFT JOIN denominacion_cargos dc ON hl.id_cargo = dc.id
    LEFT JOIN establecimientos e ON hl.id_establecimiento = e.id
    LEFT JOIN estados_cargos ec ON hl.id_estado_cargo = ec.id
    WHERE d.numero_documento = p_numero_documento
    AND hl.fecha_baja IS NULL
    ORDER BY hl.fecha_toma_posesion DESC;
END$$

-- Procedimiento: calcular antigüedad docente
DROP PROCEDURE IF EXISTS sp_calcular_antiguedad_docente$$
CREATE PROCEDURE sp_calcular_antiguedad_docente(
    IN p_numero_documento BIGINT,
    OUT p_años INT,
    OUT p_meses INT,
    OUT p_dias INT
)
BEGIN
    DECLARE v_fecha_inicio DATE;

    -- Obtener la fecha de primera toma de posesión
    SELECT MIN(fecha_toma_posesion)
    INTO v_fecha_inicio
    FROM historial_laboral hl
    INNER JOIN docentes d ON hl.id_docente = d.id
    WHERE d.numero_documento = p_numero_documento;

    IF v_fecha_inicio IS NOT NULL THEN
        -- Calcular años, meses y días
        SET p_años = TIMESTAMPDIFF(YEAR, v_fecha_inicio, CURDATE());
        SET p_meses = TIMESTAMPDIFF(MONTH, v_fecha_inicio, CURDATE()) % 12;
        SET p_dias = DATEDIFF(CURDATE(), DATE_ADD(v_fecha_inicio,
            INTERVAL TIMESTAMPDIFF(MONTH, v_fecha_inicio, CURDATE()) MONTH));
    ELSE
        SET p_años = 0;
        SET p_meses = 0;
        SET p_dias = 0;
    END IF;
END$$

DELIMITER ;

-- =====================================================
-- TRIGGERS
-- =====================================================

DELIMITER $$

-- Trigger: Validar fechas en licencias
DROP TRIGGER IF EXISTS trg_licencias_before_insert$$
CREATE TRIGGER trg_licencias_before_insert
BEFORE INSERT ON licencias
FOR EACH ROW
BEGIN
    IF NEW.fecha_fin IS NOT NULL AND NEW.fecha_fin < NEW.fecha_inicio THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La fecha de fin no puede ser anterior a la fecha de inicio';
    END IF;
END$$

DROP TRIGGER IF EXISTS trg_licencias_before_update$$
CREATE TRIGGER trg_licencias_before_update
BEFORE UPDATE ON licencias
FOR EACH ROW
BEGIN
    IF NEW.fecha_fin IS NOT NULL AND NEW.fecha_fin < NEW.fecha_inicio THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La fecha de fin no puede ser anterior a la fecha de inicio';
    END IF;
END$$

-- Trigger: Validar fechas en suplencias
DROP TRIGGER IF EXISTS trg_suplencias_before_insert$$
CREATE TRIGGER trg_suplencias_before_insert
BEFORE INSERT ON suplencias
FOR EACH ROW
BEGIN
    IF NEW.fecha_baja IS NOT NULL AND NEW.fecha_baja < NEW.fecha_inicio THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La fecha de baja no puede ser anterior a la fecha de inicio';
    END IF;
END$$

DELIMITER ;

-- =====================================================
-- HABILITAR FOREIGN KEYS
-- =====================================================

SET FOREIGN_KEY_CHECKS = 1;

-- =====================================================
-- FIN DEL SCRIPT
-- =====================================================

-- Mostrar resumen de tablas creadas
SELECT
    'TABLAS CREADAS EXITOSAMENTE' as STATUS,
    COUNT(*) as TOTAL_TABLAS
FROM information_schema.tables
WHERE table_schema = 'juntaprimaria_db'
AND table_type = 'BASE TABLE';
