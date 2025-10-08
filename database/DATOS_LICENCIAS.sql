-- =====================================================
-- DATOS DE LICENCIAS - JUNTA PRIMARIA SAN JUAN
-- =====================================================
-- Total licencias: 20
-- =====================================================
-- NOTA: Los tipos de licencia se infieren por duración
--   < 10 días: Enfermedad
--   10-15 días: Casamiento
--   16-90 días: Paternidad
--   91-180 días: Maternidad
--   > 180 días o sin fin: Sin goce de sueldo
-- =====================================================

INSERT INTO licencias (id_docente, id_tipo_licencia, fecha_inicio, fecha_fin, certificado_medico, archivo_adjunto, observaciones, activo) VALUES
((SELECT id FROM docentes WHERE numero_documento = 41014261 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Enfermedad%' LIMIT 1), '2001-01-14', '2001-01-15', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 40594002 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Paternidad%' LIMIT 1), '2020-10-10', '2020-11-11', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 26511759 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Enfermedad%' LIMIT 1), '2014-10-10', '2014-10-15', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 23417577 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Enfermedad%' LIMIT 1), '2019-07-22', '2019-08-20', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 23417577 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Enfermedad%' LIMIT 1), '2022-06-08', '2022-07-07', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 22658635 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Sin Goce de Sueldo%' LIMIT 1), '2005-01-01', '2005-12-31', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 21813052 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Maternidad%' LIMIT 1), '2012-08-01', '2013-01-01', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 26184995 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Maternidad%' LIMIT 1), '2013-06-06', '2013-09-26', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 23735247 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Paternidad%' LIMIT 1), '2011-08-11', '2011-10-31', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 23735247 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Paternidad%' LIMIT 1), '2011-08-11', '2011-10-31', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 22394173 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Paternidad%' LIMIT 1), '2018-07-30', '2018-08-30', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 41054962 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Sin Goce de Sueldo%' LIMIT 1), '2010-04-05', '2010-11-30', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 22394073 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Enfermedad%' LIMIT 1), '2015-02-19', '2015-03-20', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 22658635 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Sin Goce de Sueldo%' LIMIT 1), '2005-01-01', '2005-12-31', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 23417577 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Enfermedad%' LIMIT 1), '2019-07-22', '2019-08-20', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 23417577 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Enfermedad%' LIMIT 1), '2022-06-08', '2022-07-07', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 22741298 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Maternidad%' LIMIT 1), '1999-06-16', '1999-09-15', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 41054962 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Enfermedad%' LIMIT 1), '2020-04-01', '2020-04-10', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 26511759 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Paternidad%' LIMIT 1), '2013-10-19', '2013-12-15', 0, NULL, NULL, 1),
((SELECT id FROM docentes WHERE numero_documento = 11111111 LIMIT 1), (SELECT id FROM tipos_licencias WHERE nombre LIKE '%Maternidad%' LIMIT 1), '2013-07-01', '2013-10-31', 0, NULL, NULL, 1);
