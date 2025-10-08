-- =====================================================
-- DATOS COMPLETOS DE ESTABLECIMIENTOS CON DOMICILIOS
-- =====================================================
-- Total establecimientos: 999
-- Departamentos únicos: 20
-- =====================================================

-- =====================================================
-- INSERTAR DOMICILIOS
-- =====================================================

INSERT INTO domicilios (calle, numero, barrio, ciudad, id_departamento, codigo_postal) VALUES
('TOMAS EDISON', '1786', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('RUTA', '40', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('COLON Y SAN LORENZO', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('ACONCAGUA', '3219', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('H. IRIGOYEN', '5260', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('NACIONAL  (E)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'San Martin' LIMIT 1), NULL),
('HERNAN CORTEZ Y MAIPU  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('HIPOLITO IRIGOYEN', '3520', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('SAN LUIS', '139', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('AV. LIBERTADOR', '1847', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('PERIODISTA ARGENTINO', '5860', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('ENTRE RIOS', '744', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('ALMAFUERTE  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('Av. España X (S)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('sin datos s/n', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('CALLE', '5', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('TIERRA DEL FUEGO', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
(NULL, '25', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('CATAMARCA Y CIRCUNVALACION', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('SALTA Y AV. CIRCUNVALACION', '1279', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('RUTA PROVINCIAL', '412', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Calingasta' LIMIT 1), NULL),
('LAPRIDA ENTRE LAPRIDA Y ALVEAR', '1599', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('CALLEJON ECHEGARAY  Y VIDART', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('CALLE', '9', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('HIPOLITO IRIGOYEN', '2255', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('NECOCHEA', '1514', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('MENDOZA', '2371', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('AMEGHINO', '774', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
(NULL, '25', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('RUTA PROVINCIAL Nº', '270', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('GUEMES Y YAPEYU  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('AV. ESPAÑA Y PEDRO MARTI', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('FERMIN RODRIGUEZ Y ALVEAR', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('MENDOZA', '3335', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('BAHIA BLANCA Y AGUILAR', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('COMANDANTE CABOT ENTRE CANAL NORTE Y FERMIN MONLA -', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('RINCON Y ESQUIU S/N ENTRE RINCON Y ESQUIU', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('SANTA MARIA DE ORO', '116', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('\tFINCA EL SALADO S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('JOSE MARIA PAZ Y MAGALLANES', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('FELIX AGUILAR Y NEUQUEN', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('PRINCIPAL S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('PRINCIPAL  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('SARMIENTO S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('PRINCIPAL   S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('SAN MARTIN', '1584', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('MALIMAN S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('RUTA N°', '150', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('SAN ROQUE', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('CALLE PRINCIPAL - EL LLANO ALEGRE', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('INTERNA PISMANTA S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('PUBLICA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('FLORENCIO CASALEZ - RUTA', '901', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('MENDOZA Y BUENOS AIRES', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('RUTA PROVINCIAL N°', '351', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('NACIONAL S/N - RUTA PROVINCIAL N°', '318', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('PUBLICA  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('ANACLETO GIL   S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('ENFERMERA MEDINA   S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('JUAN LAVALLE     S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('PATRICIAS SANJUANINAS S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('LA FALDA  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('GENERAL ACHA ENTRE AV. CÓRDOBA Y SANTA FE', '426', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('ALFONSO HERNANDEZ   S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('SAN MARTIN  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('Ruta Provincial', '491', 'EX-RUTA 40', NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('VARAS  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('CATAMARCA', '96', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('NORIEGA  S/N- SAN ISIDRO', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('DIVISORIA entre Entre Rios y Godoy Cruz', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'San Martin' LIMIT 1), NULL),
('RAWSON S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'San Martin' LIMIT 1), NULL),
('AV.J.I.DE LA ROZA', '1160', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('GUEMES ENTRE', '25', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('RUTA PROVINCIAL N°', '412', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Calingasta' LIMIT 1), NULL),
('FLORIDA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Calingasta' LIMIT 1), NULL),
('Sarmiento y Jose Diaz  s/n', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Calingasta' LIMIT 1), NULL),
('PRESIDENTE ROCA S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Calingasta' LIMIT 1), NULL),
('RUTA NACIONAL N°', '149', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Calingasta' LIMIT 1), NULL),
(NULL, '2', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('EUGENIO FLORES  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('GENERAL  ACHA ENTRE', '12', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('RODAS Y LAS CAÑITAS', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('AMERICA ENTRE', '13', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('GABRIELA MISTRAL   S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('SAN JUAN', '7306', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('AV. LIBERTADOR SAN MARTIN', '7437', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('LIB. GRAL. SAN MARTIN ENTRE ALEM Y CATAMARCA', '381', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('DOMINGUITO   S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
(NULL, '9', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('LAPRIDA Y PROYECTADA S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('BELGRANO', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('BUFANO   S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('NICOLAS AVELLANEDA  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('CIRCUITO FIORITO', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('BUFANO Y LLOVERAS', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('ALFREDO BUFANO   S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('AV.', '25', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('RUTA NAC. Nº', '40', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('ARANDA Y', '25', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('NACIONAL S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Angaco' LIMIT 1), NULL),
(NULL, '21', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Angaco' LIMIT 1), NULL),
('SANTA ELENA entre RP', '87', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Angaco' LIMIT 1), NULL),
('SEGOVIA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Angaco' LIMIT 1), NULL),
('DF Sarmiento Pasando Zapata', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Angaco' LIMIT 1), NULL),
('ROQUE SAENZ PEÑA', '430', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('MEGLIOLI', '146', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('HIPOLITO IRIGOYEN', '775', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('BENAVIDEZ', '6195', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('LAS PALMAS S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Zonda' LIMIT 1), NULL),
('SALTA', '1750', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('AV. BENAVIDEZ', '4771', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('PATAGONIA Y BELGRANO S/N (E)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
(NULL, '25', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('RASTREADOR CALIVAR', '553', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('LAVALLE  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('AGUSTIN GOMEZ Y BLAS PARERA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('OLIVARES', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('PASO DE LOS ANDES', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('Rivadavia s/n', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('CHUBUT Y JUJUY', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('JORGE NEWBERY', '1851', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('RIO BAMBA Y ARENALES', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('HIPOLITO IRIGOYEN', '2231', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('VIRGEN DE LOURDES ENTRE P. MORENO Y V.DE LOURDES', '1530', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('BALDES DEL SUR', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('SIERRAS DE RIVEROS S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('LAS JUNTAS', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('LOS BRETES', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('NACIONAL N°', '141', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('RUTA PROVINCIAL', '510', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('RUTA PROVINCIAL N°', '511', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('BUENOS AIRES X', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('SAN LORENZO S/N', '0', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('COLON   S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('PASO DE LOS ANDES    S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('ESTACION JOSE MARTI RUTA', '20', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('RUTA', '308', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('SAN ANTONIO.PUESTO LOS CALDERONES', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('RUTA N°', '20', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('RUTA', '20', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('RUTA', '279', 'ENTRE 20 Y RUTA 270', NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('ABERASTAIN  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('CALLE', '15', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
(NULL, '14', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('MENDOZA  KM', '25', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('CALLEJON PEDRO GIL S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('FLORENCIO BASAÑEZ ZAVALLA S/Nº (S)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('RUTA N°', '40', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('ATENCIO Y PROYECTADA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('SANTA MARIA DE ORO', '233', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('MENDOZA Y MARIANO MORENO', '15', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('FRAY JUSTO STA. MARIA  DE ORO', '291', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('DIAGONAL SAN MARTIN ENTRE SARMIENTO Y LAPRIDA -', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '9 De Julio' LIMIT 1), NULL),
('Calle Las frazadas Entre Maurin y calle', '8', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '9 De Julio' LIMIT 1), NULL),
('AMABLE JONES Y MAESTRO YACANTE', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '9 De Julio' LIMIT 1), NULL),
('LAPRIDA S/N (S)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '9 De Julio' LIMIT 1), NULL),
('BERMEJO  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('NACIONAL N°', '141', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('S/D S/D', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('LA PLANTA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('LAS LIEBRES  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('RUTA', '141', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('FINCA LOS ALAMOS - LAS HORNILLAS', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Calingasta' LIMIT 1), NULL),
('SAN MARTIN  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Calingasta' LIMIT 1), NULL),
('HIPOLITO IRIGOYEN ENTRE M. MORENO Y PTE. ROCA -', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Calingasta' LIMIT 1), NULL),
('PRESIDENTE ROCA  ENTRE LOS ENAMORADOS Y AL NORTE -', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Calingasta' LIMIT 1), NULL),
('CALLE', '6', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('CALLE', '3', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('DIVISORIA ESTE ENTRE CALLES', '23', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('LA PLATA (RP', '246', 'RP 246', NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('MALV ARGENTINAS Y M. BELGRANO ENTRE BEL.  Y M. ARG', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('TOMAS CRUZ', '3076', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('Reconquista', '5760', 'n', NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('SARGENTO CABRAL S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('NEUQUEN', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('PARAGUAY', '899', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('SAN LUIS ENTRE GÜEMES Y CASEROS', '626', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('SANTO DOMINGO', '4125', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('AV ESPAÑA', '480', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('AV. L. N. ALEM ENTRE AV. LIBERTADOR Y LAPRIDA', '31', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('FRAY MAMERTO ESQUIU S/N (E)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('BALCARCE', '2262', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('ROQUE SAENZ PEÑA', '7051', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('AV. LIB. S. MARTIN  ENTRE SARMIENTO Y ENTRE RIOS', '158', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('AV. LIBERTADOR', '96', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('SARGENTO CABRAL ENTRE P.A. SARMIENTO Y M ZABALLA', '1734', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('DR. A. ECHEGARAY ENTRE DR. R DRIOLET Y A. QUIROGA', '2364', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('LOTE HOGAR Nº', '53', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('CARLOS LENCINA ESTE Y AV. DE CIRCUNVALACIÓN S/N (E)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('COLL', '2594', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('Santo Domingo', '141', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('AVENIDA IGNACIO DE LA ROZA', '4310', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('VALENTIN RUIZ S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Ullum' LIMIT 1), NULL),
('SIN DATO', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Ullum' LIMIT 1), NULL),
('MATIAS SANCHEZ S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Zonda' LIMIT 1), NULL),
('Av. Argentina y Güemes S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Zonda' LIMIT 1), NULL),
('RUTA', '12', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Zonda' LIMIT 1), NULL),
('GENERAL ACHA Y RUTA', '40', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('TENIENTE IBAÑEZ', '270', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('VALLE FERTIL Y CHACABUCO  (S)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('AV. ALEM ENTRE NEWVERY Y ALBERDI', '650', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('MARY O´GRAHAM ENTRE DR.CERUT Y PARANA', '71', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('Tucumán', '343', 'n', NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('Ruta Nº', '412', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Calingasta' LIMIT 1), NULL),
('RUTA', '406', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Calingasta' LIMIT 1), NULL),
('ESPELETA', '570', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('MANUEL LEMOS Y', '6', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('CHACABUCO Y', '8', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('HUGO WAST Y MONS. ORZALI', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('LA LAJA', '2523', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('NACIONAL ENTRE ARENALES Y TUCUMAN', '1221', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('AGUSTIN GOMEZ ENTRE GENERAL ACHA Y TUCUMÁN', '163', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('RAMELA ENTRE ANTONIO DE LA TORRE Y SANTIAGO PAREDE X', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('ABRAHAM TAPIA Y CIRCUNVALACION', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('BRASIL', '2531', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('ARNOBIO SANCHEZ', '1620', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('GRAL. ACHA S/N ENTRE', '7', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
(NULL, '9', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('GRANADEROS Y ALVEAR', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('MENDOZA ENTRE CALLE', '7', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('ING. MARCOS ZALAZAR S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('AV. LIBERTADOR SAN MARTIN', '3411', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('Av. Cordoba', '2147', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('FERNANDEZ BARRIENTO Y ARENALES', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('ORATORIO  S/Nº S/Nº (E)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('CORDOBA Y BAND. ARG. S/N (N)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('CALLE', '2', 'Calle 18', NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
(NULL, '9', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('ENFERMERA MEDINA Y DIVISORIA ENTRE DIVISORIA Y UNO', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('CORONEL CABOT Y J. J. BUSTO', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('DIAGONAL SARMIENTO', '571', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('URQUIZA', '182', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('MEGLIOLI  ENTRE DR. ORTEGA Y A. GOMEZ', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('MENDOZA', '855', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('FLORIDA', '280', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('JUAREZ CELMAN', '235', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('LOZANO S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('GENERAL ACHA S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('BELGRANO ENTRE FRAY JSTA DE ORO Y CORONEL GUERRERO', '1950', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('MAESTRA ACIAR Y MAESTRO ANEA ENTRE FRANCHINI Y NIE', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('LA LAJA', '6903', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('LAS HERAS  Y HUARPES  (N)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('RAWSON ENTRE CALLES LA PAZ Y NACIONAL', '1850', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('NACIONAL ENTRE DOMINGUITO Y FORMOSA', '2951', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('LIBERTADOR SAN MARTIN', '6283', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('BAUCHACETA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('RUTA PROVINCIAL N°', '901', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('RUTA', '20', 'KM. 16', NULL, (SELECT id FROM departamentos WHERE nombre = '9 De Julio' LIMIT 1), NULL),
('RUTA N°', '20', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '9 De Julio' LIMIT 1), NULL),
('JUAN JOSE BUSTOS   S/N  (E)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('SAN LORENZO Y PEDRO ECHAGUE', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
(NULL, '9', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('JUAN JOSE BUSTOS', '904', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('GRAN CHINA   S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('EUGENIO FLORES   S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('PROLONGACION MARTIN FIERRO   S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('PATRICIO LOPEZ DEL CAMPO   S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('Patricio Lopez del Campo s/n', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('RAUL CUELLO', '4569', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('SAN JUAN', '780', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('AV.', '25', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('ABERASTAIN', '536', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('MITRE Y RAWSON', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('RAWSON', '843', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('NUEVA  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('AV. RAWSON', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'San Martin' LIMIT 1), NULL),
('INDEPENDENCIA  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'San Martin' LIMIT 1), NULL),
('COLON Y', '20', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'San Martin' LIMIT 1), NULL),
('AVENIDA SARMIENTO S/Nº S/Nº (S)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'San Martin' LIMIT 1), NULL),
('AV. SARMIENTO(RP119)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'San Martin' LIMIT 1), NULL),
('YAPEYU Y DIVISORIA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'San Martin' LIMIT 1), NULL),
('JACHAL  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'San Martin' LIMIT 1), NULL),
('LAPRIDA E INDEPENDENCIA S/Nº BOCA DEL TIGRE S/Nº (E)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'San Martin' LIMIT 1), NULL),
('LAPRIDA Y SAN ISIDRO', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'San Martin' LIMIT 1), NULL),
('BELGRANO  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'San Martin' LIMIT 1), NULL),
(NULL, '9', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('GRAL PAZ Y E.E.U.U.', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('SANTA BARBARA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('POMPEYA   S/N - LOS PUESTOS', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('SAN ISIDRO S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('PATRICIAS SANJUANINAS ENTRE OHIGGINS Y T DEL FUEGO', '1126', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('MARIANO  MORENO Y R. BACA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('SARMIENTO', '1000', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('BRASIL', '1051', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('CALLE', '6', 'Santa Teresa', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('RUTA PROVINCIAL', '155', 'Agustín Gomez', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('FLORIDA   Y LAS PIEDRITAS S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
(NULL, '11', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('CALLLE', '9', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('CALLE', '10', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('BELGRANO ENTRE', '8', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('RUTA N°', '295', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('CARMONA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('MENDOZA Y LAMADRID', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('S. MARIA DEL CARRIL  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('BELGRANO', '418', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('PINCHAGUAL ENTRE', '21', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Angaco' LIMIT 1), NULL),
('EL BOSQUE S/N ENTRE CAMPODONICO Y ROSENTAL', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Angaco' LIMIT 1), NULL),
('SANTA MARIA DE ORO ENTRE J.JUFRE Y T. MALLEA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Angaco' LIMIT 1), NULL),
('AGUILERA S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Angaco' LIMIT 1), NULL),
('OLIVERA  S/N ENTRE BOSQUE Y PLUMERILLO', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Angaco' LIMIT 1), NULL),
('MARIA E. DUARTE DE PERON Y LARRALDE  S/N  (O)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('CALLEJÓN DEL ALTO S/N  (E)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('RUTA N°', '150', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('CHEPICAL', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('JUAN BAUSTISTA ALBERDI S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('RIVADAVIA', '854', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('VICUÑA LARRAIN', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('RUTA N°', '40', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('MONS. TOMAS S. CRUZ (EL FUERTE)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('EX-RUTA', '40', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('EX-RUTA', '472', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('Santa Fé', '251', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('AV. J.I. DE LA ROZA', '1516', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('ESMERALDA  (O)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('AVELLANEDA', '2951', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('CLEMENTE SARMIENTO   S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('LOTE HOGAR N°', '34', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('BALDES DE FUNES S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('BALDES DE ASTICA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('SAN PEDRO Y FELIPE COSTA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('SIERRAS DE ELIZONDO  (O)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('SIERRAS DE CHAVEZ', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('LA MAJADITA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('RUTA NAC.', '510', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('LOS VALENCIANOS S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('BALDES DEL NORTE', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('RUTA PROVINCIAL N°', '510', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('MITRE Y GENERAL ACHA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('AV. ESPAÑA', '1420', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('GRAL. ACHA ENTRE ABRAHAM TAPIA Y PEDRO DE VALDIVIA', '1211', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('AV.J.I.DE LA ROZA', '1981', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('COLON Y RUTA N°', '270', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('JUAN JOSE BUSTOS   S/N', '0', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('calle13 ENTRE del Medio y Ortiz al este RTN', '40', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('NUEVA A', '3', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('MENDOZA Y CALLE', '17', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('CALLE', '12', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('BARTOLOME MITRE S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('PASO DE LOS ANDES  S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('Hipólito Irigoyen S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Calingasta' LIMIT 1), NULL),
('CALLE', '7', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('CALLE', '4', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('CALLES', '2', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('LA PLATA Y CALLE', '6', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('RUTA N°', '279', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('DEL BONO ENTRE JUANA MANSO Y C. SAAVEDRA', '348', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('SEGUNDINO NAVARRO', '1163', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('Anzorena S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('SANTA MARIA DE ORO', '20', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('URQUIZA', '52', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('ALEM S/N (N)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('GOBERNADOR ROJAS', '998', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('SAN LORENZO', '281', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('ALBERDI ENTRE GRAL. ACHA Y TUCUMAN', '175', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('AV. RAWSON', '420', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('AV. LIBERTADOR', '5401', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('ESTADOS UNIDOS ENTRE', '9', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('SATURNINO SARASSA ENTRE URQUIZA Y ESPAÑA', '1425', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('FRANCISCO DE MIRANDA', '1156', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('GRAL. PAZ ENTRE SUIPACHA Y SEG.NAVARRO', '1049', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('SATURNINO SALAS Y MONTEAGUDO', '1285', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('JUAN JUFRE ENTRE RIOJA Y TUCUMAN', '328', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('TUCUMAN ENTRE CORRIENTES Y DORREGO', '1633', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('AV. ALEM', '538', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('AV. ESPAÑA', '490', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('HIPOLITO IRIGOYEN', '1030', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('LA LAJA ENTRE RECABARREN Y PALACIO', '4901', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('AV. CORDOBA', '266', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('JUAN JOSE PASO', '1300', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('YAPEYU', '824', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('HERMOGENEZ RUIZ S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Ullum' LIMIT 1), NULL),
('MENDOZA', '1640', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('LAPRIDA Y JUAN PABLO II', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('AV. RIOJA', '1457', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('CALLE', '20', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('CALLEJON DE LOS RIOS S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('MENDOZA SUR', '855', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('SIN DATO SIN DATO', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('Sin Datos', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Angaco' LIMIT 1), NULL),
('BELGRANO', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('BUENAVENTURA LUNA S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('sin dato sin dato', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('ñ ñ', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('RAWSON Y SAN MARTÍN', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('S/D S/D', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('BELLA VISTA S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('JACHAL S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'San Martin' LIMIT 1), NULL),
('GRAL. PAZ', '346', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('MARTÍ Y ESPAÑA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('AV. ALEM', '537', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('RUTA PROVINCIAL Nº', '12', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Zonda' LIMIT 1), NULL),
('PROYECTADA Y OBRERO MUNICIPAL S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('RUTA NACIONAL Nº', '20', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('TUCUMAN Y COLOMBIA  (N)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('SANTO DOMINGO S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('BELGRANO Y MALVINAS ARGENTINAS ENTRE BEL. Y M. ARG', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Iglesia' LIMIT 1), NULL),
('SARMIENTO', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Angaco' LIMIT 1), NULL),
('NACIONAL ENTRE LA LAJA Y TUCUMAN', '593', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Albardon' LIMIT 1), NULL),
('SANTIAGO DEL ESTERO S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Ullum' LIMIT 1), NULL),
('BANDERAS ARGENTINA Y CORDOBA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('SAN LORENZO', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = '25 De Mayo' LIMIT 1), NULL),
('GRAL. ACHA', '1501', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('PABLO DMARCO', '5756', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('AV. J.I. DE LA ROZA', '1981', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('C. M. DE ALVEAR', '84', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('AV. LIBERTADOR', '1943', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('URQUIZA', '419', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('AV. LIBERTADOR GRAL. SAN MARTIN', '3880', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('Saturnino Sarassa', '256', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('AV. MENDOZA', '3368', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('NEUQUEN', '103', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('CATAMARCA', '351', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('LAPRIDA', '350', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('Santa Rosa y Sivori', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('Patricias Sanjuaninas y Córdoba S/D', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('HIPOLITO YRIGOYEN', '1273', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('RAWSON Y PROYECTADA O (O)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Angaco' LIMIT 1), NULL),
('Centenario S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('RUTA NACIONAL', '150', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('ALFREDO FORTABAT', '3060', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('GRAL. PAZ', '44', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('PELAGIO LUNA', '312', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('VIDART  (ENTRE', '6', 'ENTRE 6 Y calle 51', NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('CALLE', '5', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('CHUBUT', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('PUBLICA S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('Patricias Sanjuaninas S/D', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Valle Fertil' LIMIT 1), NULL),
('LIBERTADOR SAN MARTIN', '1339', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('Costa Canal', '1050', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('ALFONSINA STORNI Y MAURIN S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Pocito' LIMIT 1), NULL),
('RASTREADOR CALIVAR', '542', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('Proyectada, entre calle', '1', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('SEGOVIA ESQUINA COMBATE DE SAN LORENZO S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Angaco' LIMIT 1), NULL),
('BOULEVARD SARMIENDO Y CONECTOR SUR S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('santiago del estero', '286', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('IGNACIO RODRIGUEZ', '131', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('matias zavalla', '205', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('SARMIENTO', '1951', 'E', NULL, (SELECT id FROM departamentos WHERE nombre = 'Santa Lucia' LIMIT 1), NULL),
('JAIME BORONET Y CORREA S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Caucete' LIMIT 1), NULL),
('REPUBLICA DEL LIBANO Y PIUQUEN  (O)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('TUCUMÁN', '575', 'N', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('ANTONIO DE LA TORRE Y RODOLFO PAEZ ORO S/N (E)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('PROYECTADA Y COMERCIO S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('HIPOLITO IRIGOYEN', '2269', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('SARGENTO CABRAL', '4995', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('av. livertador y españa', '00', NULL, NULL, NULL, NULL),
('GRAN CHINA S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Jachal' LIMIT 1), NULL),
('PATAGONIA Y BELGRANO S/N', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('PROGRESO Y BALMACEDA', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rawson' LIMIT 1), NULL),
('Jorge Luis Borges S/N (O)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Rivadavia' LIMIT 1), NULL),
('NACIONAL S/N - RUTA PROVINCIAL', '318', NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Sarmiento' LIMIT 1), NULL),
('proyectada s/n', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Chimbas' LIMIT 1), NULL),
('AV. PAULA A. DE SARMIENTO', '255', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('Av. Leandro Alem', '758', 'S', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('LAS HERAS NORTE Y JUAN B. ALBERDI OESTE S/N (N)', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('AV. LIBERTADOR SAN MARTÍN', '750', 'O', NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL),
('SN', NULL, NULL, NULL, (SELECT id FROM departamentos WHERE nombre = 'Capital' LIMIT 1), NULL);

-- =====================================================
-- INSERTAR ESTABLECIMIENTOS
-- =====================================================

INSERT INTO establecimientos (cue, nombre, nivel_educativo, ambito, radio, activo) VALUES
('700000000', 'RECONOCIMIENTO DE SERVICIOS FUERA DE LA PROVINCIA', 'PRIMARIO', 'PUBLICO', 7, 1),
('700000100', 'NOCTURNA MARIA ELISA RUFINO LEON', 'PRIMARIO', 'PUBLICO', 2, 1),
('700000101', 'ANEXO NOCTURNA MARIA ELISA RUFINO LEON', 'PRIMARIO', 'PUBLICO', 3, 1),
('700000200', 'MARIANO NECOCHEA T.M.', 'PRIMARIO', 'PUBLICO', 2, 1),
('700000300', 'NOCTURNA TOMAS ALVA EDISON', 'PRIMARIO', 'PUBLICO', 2, 1),
('700000400', 'JUAN ANTOLIN ZAPATA', 'INICIAL', 'PUBLICO', 3, 1),
('700000500', 'VALLE DE TULUM', 'INICIAL', 'PUBLICO', 2, 1),
('700000600', 'NOCTURNA PRIMERA JUNTA', 'PRIMARIO', 'PUBLICO', 4, 1),
('700000700', 'FRANCISCO DE VILLAGRA', 'INICIAL', 'PUBLICO', 3, 1),
('700000800', 'JUAN DOLORES GODOY', 'INICIAL', 'PUBLICO', 2, 1),
('700001000', 'COLEGIO SANTA ROSA DE LIMA', 'INICIAL', 'PRIVADO', 1, 1),
('700001300', 'ESCUELA MODELO DE SAN JUAN', 'PRIMARIO', 'PRIVADO', 1, 1),
('700001500', 'GRAL. DE LA NACION INGENIERO ENRIQUE MOSCONI', 'PRIMARIO', 'PUBLICO', 2, 1),
('700001700', 'COLEGIO MERCEDITAS DE SAN MARTÍN C.E.S.A.P.', 'PRIMARIO', 'PRIVADO', 1, 1),
('700001800', 'NOCTURNA ANGEL SALVADOR MARTIN', 'PRIMARIO', 'PUBLICO', 2, 1),
('700001801', 'ANEXO NOCTURNA ANGEL SALVADOR MARTIN', 'PRIMARIO', 'PUBLICO', 2, 1),
('700001900', 'JUAN XXIII', 'INICIAL', 'PUBLICO', 2, 1),
('700002000', 'NOCTURNA ALMIRANTE BROWN', 'PRIMARIO', 'PUBLICO', 3, 1),
('700002001', 'ANEXO NOCTURNA ALMIRANTE G. BROWN', 'PRIMARIO', 'PUBLICO', 3, 1),
('700002100', 'GABRIELA MISTRAL', 'PRIMARIO', 'PUBLICO', 2, 1),
('700002200', 'JOSE HERNANDEZ', 'PRIMARIO', 'PUBLICO', 2, 1),
('700002300', 'LUIS JORGE FONTANA', 'INICIAL', 'PUBLICO', 1, 1),
('700002400', 'JINZ CAPITAL - LUIS JORGE FONTANA', 'INICIAL', 'PUBLICO', 1, 1),
('700002401', 'JINZ CAPITAL - PROVINCIA DE BUENOS AIRES', 'INICIAL', 'PUBLICO', 1, 1),
('700002403', 'JINZ CAPITAL - PROVINCIA DE SANTIAGO DEL ESTERO', 'INICIAL', 'PUBLICO', 1, 1),
('700002404', 'JINZ CAPITAL - TENIENTE PEDRO NOLASCO FONSECA', 'INICIAL', 'PUBLICO', 1, 1),
('700002500', 'MANUEL BELGRANO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700002600', 'ESCUELA DE NIVEL INICIAL N° 1 FEDERICO FROEBEL', 'INICIAL', 'PUBLICO', 1, 1),
('700002700', 'U.E.P.A. MOVIL N° 13', 'PRIMARIO', 'PUBLICO', 6, 1),
('700003000', 'CLARA ROSA CORTINEZ', 'PRIMARIO', 'PUBLICO', 1, 1),
('700003300', 'GRAL. MARIANO ACHA', 'INICIAL', 'PUBLICO', 4, 1),
('700003400', 'JOSE MARIA TORRES', 'PRIMARIO', 'PUBLICO', 3, 1),
('700003500', 'ENI Nº 7 \"AYAC YANEN\"', 'INICIAL', 'PUBLICO', 1, 1),
('700003600', 'WERFIELD SALINAS', 'PRIMARIO', 'PUBLICO', 2, 1),
('700003900', 'PROVINCIA DE LA RIOJA', 'PRIMARIO', 'PUBLICO', 2, 1),
('700004200', 'INGENIEROS DE SAN JUAN', 'PRIMARIO', 'PUBLICO', 2, 1),
('700004300', 'MAESTRO JUAN REYES LUNA', 'PRIMARIO', 'PUBLICO', 5, 1),
('700004400', 'NOCTURNA JOSE MANUEL ESTRADA', 'PRIMARIO', 'PUBLICO', 3, 1),
('700004500', 'MARTA GIMÉNEZ PASTOR (EX-E.N.I. Nº 11)', 'INICIAL', 'PUBLICO', 2, 1),
('700004600', 'CANDELARIA ALBARRACIN DE GODOY', 'PRIMARIO', 'PUBLICO', 2, 1),
('700004700', 'ANTONIO DE LA TORRE', 'PRIMARIO', 'PUBLICO', 2, 1),
('700004900', 'ALAS ARGENTINAS', 'PRIMARIO', 'PUBLICO', 2, 1),
('700005000', 'ESCUELA E.E.E. DRA. CAROLINA TOBAR GARCIA', 'INICIAL', 'PUBLICO', 2, 1),
('700005100', 'U.E.P.A. N° 9', 'PRIMARIO', 'PUBLICO', 2, 1),
('700005400', 'SAN JUAN EUDES', 'PRIMARIO', 'PUBLICO', 2, 1),
('700005500', 'EUGENIA BELIN SARMIENTO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700005700', 'ADAN QUIROGA', 'INICIAL', 'PUBLICO', 4, 1),
('700005800', 'BENITA DAVILA DE DE LOS RIOS', 'INICIAL', 'PUBLICO', 3, 1),
('700005900', 'NUESTRA SEÑORA DE LOS DESAMPARADOS', 'INICIAL', 'PRIVADO', 3, 1),
('700006000', 'FRAGATA LIBERTAD', 'PRIMARIO', 'PUBLICO', 5, 1),
('700006200', 'NOCTURNA ING. LUIS ANGEL NOUSSAN', 'PRIMARIO', 'PUBLICO', 1, 1),
('700006300', 'CARLOS MARIA DE ALVEAR T.T.', 'PRIMARIO', 'PUBLICO', 3, 1),
('700006500', 'TENIENTE GRAL. PEDRO EUGENIO ARAMBURU T.M.', 'PRIMARIO', 'PUBLICO', 3, 1),
('700006600', 'JUAN JOSE DE VERTIZ', 'INICIAL', 'PUBLICO', 6, 1),
('700006700', 'YAPEYU', 'PRIMARIO', 'PUBLICO', 6, 1),
('700006800', '17 DE AGOSTO', 'PRIMARIO', 'PUBLICO', 6, 1),
('700006900', 'MANUEL ALBERTI', 'INICIAL', 'PUBLICO', 6, 1),
('700007100', 'ANTARTIDA ARGENTINA', 'INICIAL', 'PUBLICO', 6, 1),
('700007200', 'HILARIO ASCASUBI', 'INICIAL', 'PUBLICO', 7, 1),
('700007300', 'ALBERGUE PASO DE LOS ANDES', 'PRIMARIO', 'PUBLICO', 7, 1),
('700007500', 'DALMACIO VELEZ SARSFIELD', 'INICIAL', 'PUBLICO', 6, 1),
('700007800', 'RICARDO GUIRALDES', 'INICIAL', 'PUBLICO', 6, 1),
('700008000', 'PRESIDENTE MITRE', 'PRIMARIO', 'PUBLICO', 6, 1),
('700008001', 'ANEXO CACIQUE PISMANTA', 'PRIMARIO', 'PUBLICO', 6, 1),
('700008100', 'ALBERGUE JOSEFA RAMIREZ DE GARCIA', 'INICIAL', 'PUBLICO', 6, 1),
('700008200', 'BATALLA DE SUIPACHA', 'INICIAL', 'PUBLICO', 7, 1),
('700008300', 'OLEGARIO VICTOR ANDRADE', 'INICIAL', 'PUBLICO', 7, 1),
('700008400', 'PROFESOR ALEJANDRO MATHUS', 'INICIAL', 'PUBLICO', 6, 1),
('700008500', 'ALBERTO EINSTEIN', 'PRIMARIO', 'PUBLICO', 5, 1),
('700008700', 'Minero Sanjuanino', 'PRIMARIO', 'PUBLICO', 6, 1),
('700008701', 'ANEXO ESCUELA NOCTURNA MINERO SANJUANINO', 'PRIMARIO', 'PUBLICO', 4, 1),
('700008900', 'ESTANISLAO DEL CAMPO', 'INICIAL', 'PUBLICO', 4, 1),
('700009000', 'JUAN LAVALLE', 'INICIAL', 'PUBLICO', 4, 1),
('700009100', 'U.E.P.A. MOVIL N° 2', 'PRIMARIO', 'PUBLICO', 4, 1),
('700009200', 'JOSE MARIA DE LOS RIOS', 'INICIAL', 'PUBLICO', 4, 1),
('700009300', 'ANTENOR FLORES VIDAL', 'PRIMARIO', 'PUBLICO', 6, 1),
('700009600', 'NOCTURNA ANTONIO TORRES', 'PRIMARIO', 'PUBLICO', 1, 1),
('700009700', 'RUBEN DARIO \"EMER\"', 'PRIMARIO', 'PUBLICO', 6, 1),
('700009800', 'MARCOS SASTRE \"EMER\"', 'PRIMARIO', 'PUBLICO', 6, 1),
('700009900', 'JOSE MARMOL', 'INICIAL', 'PUBLICO', 6, 1),
('700010000', 'AGUSTIN GOMEZ', 'INICIAL', 'PUBLICO', 6, 1),
('700010100', 'ESCUELA DE NIVEL INICIAL N° 3 JULIETA SARMIENTO', 'INICIAL', 'PUBLICO', 1, 1),
('700010200', 'DR. DANIEL SEGUNDO AUBONE', 'INICIAL', 'PUBLICO', 6, 1),
('700010300', 'HORACIO MANN', 'INICIAL', 'PUBLICO', 4, 1),
('700010400', 'UEPA Colegio Parroquial San Juan Bosco', 'PRIMARIO', 'PRIVADO', 4, 1),
('700010500', 'Colegio Dante Alighieri', 'INICIAL', 'PRIVADO', 1, 1),
('700010600', 'Pinkanta', 'INICIAL', 'PUBLICO', 1, 1),
('700010800', 'SATURNINO MARIA DE LASPIUR', 'INICIAL', 'PUBLICO', 6, 1),
('700010900', 'REMEDIOS ESCALADA DE SAN MARTIN', 'INICIAL', 'PUBLICO', 6, 1),
('700011100', 'BATALLA DE MAIPU', 'INICIAL', 'PUBLICO', 6, 1),
('700011300', 'FRANCISCO JAVIER MUÑIZ', 'INICIAL', 'PUBLICO', 6, 1),
('700011400', 'BATALLA DE CHACABUCO', 'INICIAL', 'PUBLICO', 6, 1),
('700011500', '12 DE OCTUBRE', 'PRIMARIO', 'PUBLICO', 6, 1),
('700011600', 'ESCUELA DE NIVEL INICIAL PATRICIA SARLÉ (EX ENI 5)', 'INICIAL', 'PUBLICO', 2, 1),
('700011700', '24 DE SEPTIEMBRE \"EMER\"', 'PRIMARIO', 'PUBLICO', 6, 1),
('700011900', 'MANUEL LAINEZ', 'INICIAL', 'PUBLICO', 1, 1),
('700012000', 'CECILIO AVILA', 'PRIMARIO', 'PUBLICO', 2, 1),
('700012100', 'PROVINCIA DE MISIONES', 'PRIMARIO', 'PUBLICO', 4, 1),
('700012200', 'PRESIDENTE SARMIENTO', 'PRIMARIO', 'PUBLICO', 3, 1),
('700012300', 'PEDRO DE MARQUEZ', 'INICIAL', 'PUBLICO', 3, 1),
('700012400', 'NOCTURNA ROQUE SAENZ PEÑA', 'PRIMARIO', 'PUBLICO', 3, 1),
('700012500', 'ROQUE SAENZ PEÑA', 'INICIAL', 'PUBLICO', 3, 1),
('700012800', 'NOCTURNA SARMIENTO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700013000', 'MARIANO MORENO \"EMER\"', 'INICIAL', 'PUBLICO', 5, 1),
('700013100', 'ESCUELA DE EDUCACIÓN ESPECIAL \"CURA BROCHERO\" (Ex E.E.E. MULTIPLE DE SARMIENTO)', 'INICIAL', 'PUBLICO', 5, 1),
('700013200', 'ESCUELA DE NIVEL INICIAL ALFONSINA STORNI (Ex ENI 14)', 'INICIAL', 'PUBLICO', 5, 1),
('700013400', 'Posta de Yatasto', 'PRIMARIO', 'PUBLICO', 5, 1),
('700013500', 'COLEGIO SAN ANTONIO DE PADUA', 'INICIAL', 'PRIVADO', 5, 1),
('700013700', 'CARLOS GUIDO SPANO', 'INICIAL', 'PUBLICO', 5, 1),
('700013800', 'CONSTANCIO C. VIGIL', 'INICIAL', 'PUBLICO', 5, 1),
('700013900', 'COMANDANTE LUIS PIEDRABUENA \"EMER\"', 'INICIAL', 'PUBLICO', 5, 1),
('700014000', 'ALBERGUE DOMINGO FRENCH', 'PRIMARIO', 'PUBLICO', 5, 1),
('700014100', 'PRESIDENTE QUINTANA', 'INICIAL', 'PUBLICO', 6, 1),
('700014200', 'SATURNINO SEGUROLA', 'INICIAL', 'PUBLICO', 5, 1),
('700014300', 'DR. CARLOS DONCEL \"EMER\"', 'INICIAL', 'PUBLICO', 5, 1),
('700014400', 'JUAN JOSE LARREA', 'INICIAL', 'PUBLICO', 5, 1),
('700014500', 'JOSE MARIA DEL CARRIL', 'INICIAL', 'PUBLICO', 5, 1),
('700014600', 'DR. BERNARDO HOUSSAY', 'INICIAL', 'PUBLICO', 4, 1),
('700014700', 'MARY MANN', 'INICIAL', 'PUBLICO', 4, 1),
('700014800', 'JUAN JOSE PASO', 'INICIAL', 'PUBLICO', 4, 1),
('700014900', 'ISLA VICECOMODORO MARAMBIO \"EMER\"', 'INICIAL', 'PUBLICO', 4, 1),
('700015000', 'PROFESOR VICTOR MERCANTE', 'INICIAL', 'PUBLICO', 4, 1),
('700015100', 'NUESTRA SEÑORA DEL CARMEN', 'INICIAL', 'PRIVADO', 4, 1),
('700015200', 'JOSE ALEJANDRO SEGOVIA', 'INICIAL', 'PUBLICO', 4, 1),
('700015300', 'CORNELIO SAAVEDRA T.M.', 'INICIAL', 'PUBLICO', 2, 1),
('700015400', 'PROVINCIA DE SALTA', 'PRIMARIO', 'PUBLICO', 2, 1),
('700015500', 'PROVINCIA DE TUCUMAN', 'INICIAL', 'PUBLICO', 2, 1),
('700015600', 'ESCUELA DE CONTEXTO DE ENCIERRO JUANA GODOY DE BRANDES', 'PRIMARIO', 'PUBLICO', 4, 1),
('700015601', 'ESCUELA DE CONTEXTO DE ENCIERRO JUANA GODOY DE BRANDES - ANEXO NAZARIO BENAVIDEZ', 'PRIMARIO', 'PUBLICO', 4, 1),
('700015602', 'ESCUELA E.E.E. JUANA GODOY DE BRANDES ANEXO', 'PRIMARIO', 'PUBLICO', 4, 1),
('700015700', 'GOBERNADOR FEDERICO CANTONI', 'PRIMARIO', 'PUBLICO', 2, 1),
('700015800', 'PRESIDENTE DR. ARTURO UMBERTO ILLIA', 'PRIMARIO', 'PUBLICO', 3, 1),
('700015900', 'DRA. CARMEN PEÑALOZA DE VARESE', 'INICIAL', 'PUBLICO', 3, 1),
('700016000', 'JUAN ENRIQUE PESTALOZZI', 'PRIMARIO', 'PUBLICO', 2, 1),
('700016100', 'PRESIDENTE AVELLANEDA', 'PRIMARIO', 'PUBLICO', 2, 1),
('700016200', 'Soldados de Malvinas', 'PRIMARIO', 'PUBLICO', 3, 1),
('700016201', 'ANEXO U.E.P.A. N° 8 SOLDADOS DE MALVINAS', 'PRIMARIO', 'PUBLICO', 2, 1),
('700016300', 'BLAS PARERA', 'PRIMARIO', 'PUBLICO', 3, 1),
('700016400', 'NOCTURNA JUAN DE DIOS JOFRE', 'PRIMARIO', 'PUBLICO', 2, 1),
('700016401', 'NOCTURNA JUAN DE DIOS JOFRE ANEXO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700016500', 'NOCTURNA REPUBLICA ORIENTAL DEL URUGUAY', 'PRIMARIO', 'PUBLICO', 3, 1),
('700016700', 'BUENAVENTURA LUNA \"EMER\"', 'INICIAL', 'PUBLICO', 6, 1),
('700016800', 'DR. ALFREDO CALCAGNO \"EMER\"', 'INICIAL', 'PUBLICO', 6, 1),
('700016900', 'ESC. ALBERGUE DR. FEDERICO CANTONI', 'INICIAL', 'PUBLICO', 6, 1),
('700017000', 'ONOFRE ILLANES', 'INICIAL', 'PUBLICO', 6, 1),
('700017100', 'FRONTERAS ARGENTINAS', 'INICIAL', 'PUBLICO', 3, 1),
('700017200', 'NOCTURNA PEDRO PASCUAL RAMIREZ', 'PRIMARIO', 'PUBLICO', 2, 1),
('700017300', 'ESCUELA DE NIVEL INICIAL N° 8', 'INICIAL', 'PUBLICO', 2, 1),
('700017600', 'CRISTOBAL COLON', 'PRIMARIO', 'PUBLICO', 3, 1),
('700017700', 'NOCTURNA PEDRO ECHAGUE', 'PRIMARIO', 'PUBLICO', 2, 1),
('700017701', 'ANEXO NOCTURNA PEDRO ECHAGUE', 'PRIMARIO', 'PUBLICO', 2, 1),
('700017800', 'ESCUELA DE LA PATRIA', 'INICIAL', 'PUBLICO', 7, 1),
('700018000', 'ALBERGUE BUENAVENTURA COLLADO', 'INICIAL', 'PUBLICO', 7, 1),
('700018100', 'RECONQUISTA DE BUENOS AIRES - ALBERGUE', 'PRIMARIO', 'PUBLICO', 7, 1),
('700018200', 'FRANKLIN RAWSON', 'INICIAL', 'PUBLICO', 7, 1),
('700018300', 'Pbro Carlos Hugo Medina Suarez', 'INICIAL', 'PUBLICO', 7, 1),
('700018400', 'JOSE I. FERNANDEZ MARADONA', 'INICIAL', 'PUBLICO', 7, 1),
('700018500', 'REPUBLICA DE BRASIL', 'INICIAL', 'PUBLICO', 6, 1),
('700018600', 'DR. SATURNINO SALAS', 'PRIMARIO', 'PUBLICO', 4, 1),
('700018700', 'ARTURO BERUTI', 'INICIAL', 'PUBLICO', 4, 1),
('700018800', 'JUAN DE DIOS FLORES', 'INICIAL', 'PUBLICO', 4, 1),
('700019000', 'OBISPO ZAPATA', 'INICIAL', 'PUBLICO', 4, 1),
('700019100', 'JUAN IGNACIO GORRITI', 'INICIAL', 'PUBLICO', 5, 1),
('700019200', 'PADRE FEDERICO MAGGIO \"EMER\"', 'INICIAL', 'PUBLICO', 6, 1),
('700019300', 'ALBERGUE PROVINCIA DE SAN LUIS', 'INICIAL', 'PUBLICO', 7, 1),
('700019400', 'ALBERGUE DR. JUAN CARLOS NAVARRO', 'INICIAL', 'PUBLICO', 6, 1),
('700019500', 'NOCTURNA 25 DE MAYO (Ex UEPA Nº 22)', 'PRIMARIO', 'PUBLICO', 6, 1),
('700019501', 'AULA SATELITE NOCTURNA 25 DE MAYO (EX U.E.P.A. MOVIL N° 22).', 'PRIMARIO', 'PUBLICO', 5, 1),
('700019600', 'JOSE RUDECINDO ROJO', 'PRIMARIO', 'PUBLICO', 4, 1),
('700019700', 'LUIS VERNET', 'INICIAL', 'PUBLICO', 4, 1),
('700019800', 'TIERRA DEL FUEGO', 'INICIAL', 'PUBLICO', 4, 1),
('700019900', 'DR. ALBERT SCHWEITZER', 'INICIAL', 'PUBLICO', 4, 1),
('700020000', 'MAESTRO ARGENTINO', 'INICIAL', 'PUBLICO', 4, 1),
('700020200', 'PEDRO DE VALDIVIA', 'INICIAL', 'PUBLICO', 4, 1),
('700020300', 'DRA. FRANCISCA RIOS DE PAEZ', 'INICIAL', 'PUBLICO', 5, 1),
('700020400', 'CARLOS N. VERGARA \"EMER\"', 'INICIAL', 'PUBLICO', 4, 1),
('700020500', 'ESCUELA DE EDUCACION ESPECIAL INDIA MARIANA (Ex E.E.E. Multiple Pocito)', 'INICIAL', 'PUBLICO', 4, 1),
('700020501', 'ANEXO E.E.E. MULTIPLE DE POCITO QUINTO CUARTEL', 'PRIMARIO', 'PUBLICO', 4, 1),
('700020600', 'DR. ANTONINO  ABERASTAIN', 'PRIMARIO', 'PUBLICO', 4, 1),
('700020700', 'ESCUELA ESPAÑA', 'INICIAL', 'PUBLICO', 3, 1),
('700021000', 'COLEGIO SANTA BARBARA', 'INICIAL', 'PRIVADO', 4, 1),
('700021200', 'DR. RICARDO BALBÍN', 'PRIMARIO', 'PUBLICO', 4, 1),
('700021201', 'ANEXO NOCTURNA DR. RICARDO BALBIN', 'PRIMARIO', 'PUBLICO', 4, 1),
('700021300', 'ESTEBAN DE LUCA', 'INICIAL', 'PUBLICO', 4, 1),
('700021400', 'EUSEBIO SEGUNDO ZAPATA', 'INICIAL', 'PUBLICO', 4, 1),
('700021500', 'ESCUELA E.E.E. JUANA AZURDUY DE PADILLA', 'INICIAL', 'PUBLICO', 4, 1),
('700021700', 'REPUBLICA ARGENTINA', 'INICIAL', 'PUBLICO', 6, 1),
('700021701', 'ANEXO REPUBLICA ARGENTINA', 'PRIMARIO', 'PUBLICO', 6, 1),
('700021702', 'REPUBLICA ARGENTINA ANEXO CASAS VIEJAS', 'INICIAL', 'PUBLICO', 6, 1),
('700021800', 'REPUBLICA DE BOLIVIA', 'INICIAL', 'PUBLICO', 7, 1),
('700022000', 'DRA. LETICIA A. DE SORMANI', 'INICIAL', 'PUBLICO', 7, 1),
('700022100', 'REPUBLICA DEL PARAGUAY', 'INICIAL', 'PUBLICO', 5, 1),
('700022200', 'JOSE CLEMENTE SARMIENTO', 'INICIAL', 'PUBLICO', 6, 1),
('700022400', 'JUAN PEDRO ESNAOLA', 'INICIAL', 'PUBLICO', 6, 1),
('700022500', 'SATURNINO S. ARAOZ', 'INICIAL', 'PUBLICO', 6, 1),
('700022600', 'MARTIN GIL', 'INICIAL', 'PUBLICO', 6, 1),
('700022700', 'U.E.P.A. N° 7', 'PRIMARIO', 'PUBLICO', 6, 1),
('700022701', 'AULA SATÉLITE U.E.P.A. N° 7', 'PRIMARIO', 'PUBLICO', 6, 1),
('700022702', 'AULA SATÉLITE U.E.P.A. N° 7', 'PRIMARIO', 'PUBLICO', 6, 1),
('700023000', 'MARIA CURIE', 'INICIAL', 'PUBLICO', 5, 1),
('700023100', 'COMODORO RIVADAVIA \"EMER\"', 'INICIAL', 'PUBLICO', 5, 1),
('700023200', 'RAFAEL ALBERTO ARRIETA \"EMER\"', 'INICIAL', 'PUBLICO', 5, 1),
('700023400', 'PRILIDIANO PUEYRREDON', 'INICIAL', 'PUBLICO', 5, 1),
('700023500', 'JUANA DE IBARBOUROU', 'INICIAL', 'PUBLICO', 5, 1),
('700023600', 'DOMINGO DE ORO', 'INICIAL', 'PUBLICO', 5, 1),
('700023700', 'COLEGIO DE NIVEL INICIAL JARDIN DE NAZARETH', 'INICIAL', 'PRIVADO', 2, 1),
('700023800', 'BERNARDO DE MONTEAGUDO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700023900', 'DR. HONORIO PUEYRREDON', 'INICIAL', 'PUBLICO', 2, 1),
('700024000', 'U.E.P.A. N° 10', 'PRIMARIO', 'PUBLICO', 2, 1),
('700024300', 'Divino Niño Jesús', 'PRIMARIO', 'PUBLICO', 2, 1),
('700024400', 'NOCTURNA JUAN B. ALBERDI', 'PRIMARIO', 'PUBLICO', 1, 1),
('700024401', 'NOCTURNA JUAN B. ALBERDI ANEXO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700024500', 'PROVINCIA DE SANTA CRUZ', 'PRIMARIO', 'PUBLICO', 6, 1),
('700024800', 'MONSEÑOR JUAN MARCOS ZAPATA', 'PRIMARIO', 'PRIVADO', 2, 1),
('700024900', 'CARLOS MARIA DE ALVEAR T.M.', 'PRIMARIO', 'PUBLICO', 3, 1),
('700025400', 'ESCUELA NORMAL SUPERIOR SARMIENTO', 'INICIAL', 'PUBLICO', 1, 1),
('700025500', 'ANTONIA VILLASCUSA T.M.', 'PRIMARIO', 'PUBLICO', 2, 1),
('700025600', 'DR. AMABLE JONES', 'INICIAL', 'PUBLICO', 1, 1),
('700025700', 'Santiago Paredes', 'PRIMARIO', 'PUBLICO', 2, 1),
('700026000', 'EDUCACION POPULAR', 'INICIAL', 'PUBLICO', 3, 1),
('700026100', 'MIGUEL DE CERVANTES', 'INICIAL', 'PUBLICO', 3, 1),
('700026500', 'ESCUELA E.E.E. MERCEDITAS DE SAN MARTIN', 'INICIAL', 'PUBLICO', 1, 1),
('700026900', 'SANTO DOMINGO', 'INICIAL', 'PRIVADO', 1, 1),
('700027100', 'MARIA L. VILLARINO DE DEL CARRIL', 'INICIAL', 'PUBLICO', 1, 1),
('700027200', 'NOCTURNA MATIAS ZAVALLA', 'PRIMARIO', 'PUBLICO', 2, 1),
('700027201', 'NOCTURNA MATIAS ZAVALLA ANEXO - LOTE HOGAR N° 53', 'PRIMARIO', 'PUBLICO', 2, 1),
('700027300', 'ESC. DE EDUCACION ESPECIAL GRACIELA CIBEIRA DE CANTONI (EX. C.A.R.E.M.)', 'INICIAL', 'PUBLICO', 1, 1),
('700027400', 'PRESIDENTE HIPOLITO YRIGOYEN', 'INICIAL', 'PUBLICO', 2, 1),
('700027500', 'FAUSTINA SARMIENTO DE BELIN', 'INICIAL', 'PUBLICO', 2, 1),
('700027800', 'CAMPAÑA DEL DESIERTO', 'INICIAL', 'PUBLICO', 2, 1),
('700028000', 'TIMOTEO MARADONA', 'INICIAL', 'PUBLICO', 2, 1),
('700028200', 'COLEGIO INTEGRAL INDEPENDENCIA', 'PRIMARIO', 'PRIVADO', 2, 1),
('700028300', 'INDEPENDENCIA ARGENTINA', 'INICIAL', 'PUBLICO', 2, 1),
('700028500', 'NOCTURNA MONSEÑOR RODRIGUEZ Y OLMOS', 'PRIMARIO', 'PUBLICO', 3, 1),
('700028600', 'JUAN JOSE CASTELLI  T.M.', 'INICIAL', 'PUBLICO', 3, 1),
('700029000', 'U.E.P.A. N° 20', 'PRIMARIO', 'PUBLICO', 4, 1),
('700029100', 'BENJAMIN LENOIR', 'INICIAL', 'PUBLICO', 4, 1),
('700029200', 'ELVIRA DE LA RIESTRA DE LAINEZ', 'PRIMARIO', 'PUBLICO', 4, 1),
('700029400', 'MERCEDES NIEVA DE CASTRO', 'INICIAL', 'PUBLICO', 4, 1),
('700029500', 'ESCUELA E.E.E. ZONDA', 'PRIMARIO', 'PUBLICO', 4, 1),
('700029600', 'RAFAEL OBLIGADO', 'PRIMARIO', 'PUBLICO', 4, 1),
('700030000', 'FRAY LUIS BELTRAN', 'PRIMARIO', 'PUBLICO', 2, 1),
('700030100', 'MARY O GRAHAM', 'PRIMARIO', 'PUBLICO', 2, 1),
('700030200', '11 DE SEPTIEMBRE', 'INICIAL', 'PUBLICO', 2, 1),
('700030300', '14 DE FEBRERO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700030900', 'PROVINCIA DE SANTIAGO DEL ESTERO', 'INICIAL', 'PUBLICO', 1, 1),
('700031100', 'COMANDANTE CABOT', 'INICIAL', 'PUBLICO', 1, 1),
('700031300', 'ESTEBAN ECHEVERRIA', 'INICIAL', 'PUBLICO', 1, 1),
('700031400', 'NOCTURNA JOHN KENNEDY', 'PRIMARIO', 'PUBLICO', 1, 1),
('700031401', 'ANEXO NOCTURNA JOHN KENNEDY', 'PRIMARIO', 'PUBLICO', 1, 1),
('700031700', 'LUIS PASTEUR', 'INICIAL', 'PUBLICO', 6, 1),
('700031800', 'CLOTILDE GUILLEN DE REZZANO', 'INICIAL', 'PUBLICO', 6, 1),
('700031900', 'JORGE NEWBERY', 'INICIAL', 'PUBLICO', 6, 1),
('700032000', 'LA CAPILLA', 'INICIAL', 'PUBLICO', 6, 1),
('700032300', 'MERCEDES SAN MARTIN DE BALCARCE', 'PRIMARIO', 'PUBLICO', 2, 1),
('700032400', 'DOMINGO FAUSTINO SARMIENTO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700032500', 'TELTANTI YU (EX ENI 12)', 'INICIAL', 'PUBLICO', 2, 1),
('700032600', 'NOCTURNA ING. DOMINGO KRAUSE', 'PRIMARIO', 'PUBLICO', 2, 1),
('700032601', 'ANEXO NOCTURNA ING. DOMINGO KRAUSE', 'PRIMARIO', 'PUBLICO', 3, 1),
('700032602', 'NOCTURNA ING. DOMINGO KRAUSE ANEXO QUINTO CUARTEL', 'PRIMARIO', 'PUBLICO', 4, 1),
('700032800', 'COLEGIO SAN VICENTE DE PAUL', 'PRIMARIO', 'PRIVADO', 2, 1),
('700032900', 'VICENTE LOPEZ Y PLANES', 'PRIMARIO', 'PUBLICO', 3, 1),
('700033000', 'CAMILO ROJO', 'PRIMARIO', 'PUBLICO', 3, 1),
('700033200', 'NOCTURNA PROVINCIA DE CORDOBA', 'PRIMARIO', 'PUBLICO', 1, 1),
('700033300', 'ESCUELA E.E.E. DR. RAMON PEÑAFORT', 'INICIAL', 'PUBLICO', 2, 1),
('700033400', 'ESCUELA E.E.E. LUIS BRAILLE', 'INICIAL', 'PUBLICO', 1, 1),
('700033500', 'Sarah Chamberlain Eccleston (Ex ENI Nº9)', 'INICIAL', 'PUBLICO', 1, 1),
('700033600', 'NUESTRA SEÑORA DE LA MEDALLA MILAGROSA', 'INICIAL', 'PRIVADO', 1, 1),
('700033700', 'Escuela Ciudad del Sol', 'INICIAL', 'PRIVADO', 2, 1),
('700033900', 'JUSTO JOSE DE URQUIZA', 'INICIAL', 'PUBLICO', 3, 1),
('700034000', 'SAN JOSE DE CALASANZ', 'INICIAL', 'PUBLICO', 4, 1),
('700034100', 'JORGE WASHINGTON', 'INICIAL', 'PUBLICO', 3, 1),
('700034200', 'RABINDRANATH TAGORE', 'INICIAL', 'PUBLICO', 3, 1),
('700034300', 'DR. CARLOS SAAVEDRA LAMAS', 'INICIAL', 'PUBLICO', 3, 1),
('700034400', '12 DE AGOSTO', 'INICIAL', 'PUBLICO', 4, 1),
('700034500', 'GRAL. MARTIN MIGUEL DE GUEMES', 'INICIAL', 'PUBLICO', 4, 1),
('700034600', 'NOCTURNA JUSTO JOSE DE URQUIZA', 'PRIMARIO', 'PUBLICO', 3, 1),
('700034800', 'José Aristóbulo García', 'PRIMARIO', 'PUBLICO', 1, 1),
('700034900', 'PROVINCIA DE CORRIENTES', 'INICIAL', 'PUBLICO', 2, 1),
('700035000', 'COLEGIO PARROQUIAL SANTA LUCIA', 'PRIMARIO', 'PRIVADO', 1, 1),
('700035200', 'REPUBLICA DE CHILE', 'PRIMARIO', 'PUBLICO', 3, 1),
('700035300', '13 DE JUNIO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700035400', 'ARTURO CAPDEVILA', 'INICIAL', 'PUBLICO', 3, 1),
('700035500', 'TRANSITO DE ORO DE RODRIGUEZ', 'INICIAL', 'PUBLICO', 3, 1),
('700035600', 'POLICIA FEDERAL ARGENTINA', 'PRIMARIO', 'PUBLICO', 2, 1),
('700035700', 'SEGUNDINO J. NAVARRO \"EMER\"', 'INICIAL', 'PUBLICO', 5, 1),
('700035900', 'RAMON BARRERA', 'INICIAL', 'PUBLICO', 5, 1),
('700036000', 'PROVINCIA DE SAN JUAN', 'INICIAL', 'PUBLICO', 5, 1),
('700036100', 'COLEGIO NUESTRA SEÑORA DE LA CONSOLACIÓN', 'INICIAL', 'PRIVADO', 5, 1),
('700036200', 'PEDRO VALENZUELA', 'INICIAL', 'PUBLICO', 4, 1),
('700036300', 'ESCUELA E.E.E. MARIA MONTESSORI', 'INICIAL', 'PUBLICO', 3, 1),
('700036400', 'Colegio de Nivel Inicial Cristo Rey', 'INICIAL', 'PRIVADO', 3, 1),
('700036500', 'LEONOR SANCHEZ DE ARANCIBIA', 'PRIMARIO', 'PUBLICO', 3, 1),
('700036600', 'Dr. Isidro Mariano De Zavalla', 'PRIMARIO', 'PUBLICO', 3, 1),
('700036700', 'JOSE CHIRAPOZU', 'PRIMARIO', 'PUBLICO', 3, 1),
('700036900', 'MARCELINO GUARDIOLA', 'PRIMARIO', 'PUBLICO', 3, 1),
('700037000', 'ALBERGUE JOSE MANUEL ESTRADA', 'PRIMARIO', 'PUBLICO', 2, 1),
('700037200', 'LEOPOLDO CORRETJER', 'PRIMARIO', 'PUBLICO', 2, 1),
('700037300', 'SANTA TERESITA DEL NIÑO JESÚS', 'INICIAL', 'PRIVADO', 2, 1),
('700037400', 'DR. NICANOR LARRAIN', 'PRIMARIO', 'PUBLICO', 2, 1),
('700037500', 'SATURNINO SARASSA', 'PRIMARIO', 'PUBLICO', 2, 1),
('700037600', 'VICECOMODORO GUSTAVO MARAMBIO', 'INICIAL', 'PUBLICO', 3, 1),
('700037700', 'JOSE MARIA PAZ', 'INICIAL', 'PUBLICO', 4, 1),
('700037800', 'JUAN MANTOVANI', 'PRIMARIO', 'PUBLICO', 3, 1),
('700038000', 'NOCTURNA JUAN E. SERU', 'PRIMARIO', 'PUBLICO', 3, 1),
('700038100', 'Villicum', 'PRIMARIO', 'PUBLICO', 3, 1),
('700038200', 'EJERCITO DE LOS ANDES', 'INICIAL', 'PUBLICO', 4, 1),
('700038300', 'JUAN GREGORIO DE LAS HERAS', 'INICIAL', 'PUBLICO', 4, 1),
('700038400', 'ESCUELA E.E.E. HEBE NORA ARCE DE VIDELA DE ORO', 'INICIAL', 'PUBLICO', 3, 1),
('700038500', 'PROVINCIA DE JUJUY', 'INICIAL', 'PUBLICO', 3, 1),
('700038600', 'CARLOS PELLEGRINI', 'PRIMARIO', 'PUBLICO', 1, 1),
('700038700', 'JOSE PEDRO CORTINEZ', 'INICIAL', 'PUBLICO', 3, 1),
('700038800', 'Presidente Juan Domingo Perón', 'PRIMARIO', 'PUBLICO', 3, 1),
('700038900', 'ALBERGUE MIGUEL CANE (H)', 'PRIMARIO', 'PUBLICO', 7, 1),
('700039000', 'FALUCHO TURNO MAÑANA', 'PRIMARIO', 'PUBLICO', 6, 1),
('700039100', 'JOSE LOMBARDO RADICE', 'INICIAL', 'PUBLICO', 6, 1),
('700039400', 'PROCESA SARMIENTO DE LENOIR', 'INICIAL', 'PUBLICO', 3, 1),
('700039500', 'DR. LUIS AGOTE', 'INICIAL', 'PUBLICO', 3, 1),
('700039600', 'HIPOLITO VIEYTES', 'PRIMARIO', 'PUBLICO', 4, 1),
('700039700', 'PEDRO ECHAGUE', 'INICIAL', 'PUBLICO', 4, 1),
('700039800', 'ESCUELA NORMAL SUPERIOR GRAL. MANUEL BELGRANO', 'INICIAL', 'PUBLICO', 3, 1),
('700040000', 'NOCTURNA DR. AMAN RAWSON', 'PRIMARIO', 'PUBLICO', 3, 1),
('700040001', 'AULA SATÉLITE ESCUELA NOCTURNA DR. AMAN RAWSON', 'PRIMARIO', 'PUBLICO', 5, 1),
('700040100', 'PRESBÍTERO MARIANO IANNELLI', 'INICIAL', 'PUBLICO', 3, 1),
('700040200', 'MANUEL PACIFICO ANTEQUEDA T.M.', 'PRIMARIO', 'PUBLICO', 3, 1),
('700040600', 'ALEJANDRO FLEMING', 'PRIMARIO', 'PUBLICO', 6, 1),
('700040700', 'PEDRO BONIFACIO PALACIOS', 'INICIAL', 'PUBLICO', 6, 1),
('700040800', 'DEAN GREGORIO FUNES \"EMER\"', 'INICIAL', 'PUBLICO', 6, 1),
('700041000', 'ALMIRANTE RAMON GONZALEZ FERNANDEZ \"EMER\"', 'INICIAL', 'PUBLICO', 6, 1),
('700041200', 'ALBERGUE JOAQUIN V. GONZALEZ', 'PRIMARIO', 'PUBLICO', 6, 1),
('700041300', 'GRAL. ANTONIO GONZALEZ BALCARCE', 'INICIAL', 'PUBLICO', 2, 1),
('700041400', 'ESCUELA E.E.E. ABEJITAS DE SANTA RITA', 'INICIAL', 'PUBLICO', 3, 1),
('700041401', 'ESCUELA E.E. ABEJITAS DE SANTA RITA ANEXO E.E.E. MULTIPLE \"ABEJITAS DE SANTA RITA\"', 'PRIMARIO', 'PUBLICO', 6, 1),
('700041500', 'PROVINCIA DE LA PAMPA', 'INICIAL', 'PUBLICO', 3, 1),
('700041600', 'U.E.P.A. N° 5', 'PRIMARIO', 'PUBLICO', 3, 1),
('700041601', 'U.E.P.A. N° 5 ANEXO Vª MERCEDES', 'PRIMARIO', 'PUBLICO', 6, 1),
('700041700', 'ALBERGUE CASA DEL NIÑO', 'PRIMARIO', 'PUBLICO', 6, 1),
('700041800', 'ANTONIO TORRES TURNO TARDE', 'PRIMARIO', 'PUBLICO', 1, 1),
('700041900', 'ANTONIO QUARANTA', 'PRIMARIO', 'PUBLICO', 3, 1),
('700042000', 'ANTONIO TORRES TURNO MAÑANA', 'PRIMARIO', 'PUBLICO', 1, 1),
('700042100', 'ESCUELA NIVEL INICIAL N° 4 MARTHA ALCIRA SALOTTI', 'INICIAL', 'PUBLICO', 1, 1),
('700042200', 'GABRIEL ALBARRACIN', 'INICIAL', 'PUBLICO', 6, 1),
('700042400', 'FRANCISCO NARCISO DE LAPRIDA', 'PRIMARIO', 'PUBLICO', 1, 1),
('700042500', 'Colegio Parroquial San Juan Bosco', 'INICIAL', 'PRIVADO', 4, 1),
('700042600', 'AUTONOMIA CIUDAD DE BAILEN', 'INICIAL', 'PUBLICO', 4, 1),
('700042700', 'DOMINGUITO', 'INICIAL', 'PUBLICO', 4, 1),
('700043000', 'ERNESTINA ECHEGARAY DE ANDINO', 'INICIAL', 'PUBLICO', 4, 1),
('700043100', 'JULIO VERNE', 'INICIAL', 'PUBLICO', 4, 1),
('700043200', 'ALEJANDRO MARIA DE AGUADO', 'PRIMARIO', 'PUBLICO', 4, 1),
('700043300', 'COMBATE DE SAN LORENZO \"EMER\"', 'INICIAL', 'PUBLICO', 4, 1),
('700043400', 'PROVINCIA DE NEUQUEN', 'INICIAL', 'PUBLICO', 4, 1),
('700043500', 'Crucero A.R.A. General Belgrano', 'INICIAL', 'PUBLICO', 4, 1),
('700043600', 'ANTONIO PULENTA', 'PRIMARIO', 'PUBLICO', 4, 1),
('700043700', 'JUAN LARREA \"EMER\"', 'INICIAL', 'PUBLICO', 4, 1),
('700043800', 'REPUBLICA DEL PERU', 'INICIAL', 'PUBLICO', 4, 1),
('700044000', 'BERNARDINO RIVADAVIA', 'PRIMARIO', 'PUBLICO', 1, 1),
('700044300', 'ESC.PROFESORA MERCEDES GALLARDO VALDEZ', 'INICIAL', 'PRIVADO', 1, 1),
('700044400', 'E.E.E. Aleluya', 'INICIAL', 'PRIVADO', 1, 1),
('700044500', 'CAPITAN DE FRAGATA HIPOLITO BUCHARDO', 'INICIAL', 'PUBLICO', 7, 1),
('700044600', 'LORENZO LUZURIAGA', 'INICIAL', 'PUBLICO', 7, 1),
('700044700', 'BENITO JUAREZ', 'INICIAL', 'PUBLICO', 6, 1),
('700044800', 'ALBERGUE TTE. CORONEL ALVAREZ CONDARCO', 'PRIMARIO', 'PUBLICO', 6, 1),
('700045000', 'PROVINCIA DEL CHUBUT', 'INICIAL', 'PUBLICO', 6, 1),
('700045200', 'GRAL. SAN MARTIN (JACHAL)', 'INICIAL', 'PUBLICO', 3, 1),
('700045400', 'NOCTURNA TAMBOR DE TACUARI', 'PRIMARIO', 'PUBLICO', 1, 1),
('700045600', 'MIGUEL DE AZCUENAGA', 'INICIAL', 'PUBLICO', 1, 1),
('700045800', 'ESCUELA E.E.E. JOSE A. TERRY', 'INICIAL', 'PUBLICO', 2, 1),
('700045900', 'ESCUELA DE EDUCACIÓN ESPECIAL ARA SAN JUAN (EX E.E.E. SARM)', 'INICIAL', 'PUBLICO', 1, 1),
('700046000', 'COLEGIO MARÍA AUXILIADORA', 'INICIAL', 'PRIVADO', 1, 1),
('700046400', 'MAESTRO JOSE J. BERRUTTI', 'PRIMARIO', 'PUBLICO', 3, 1),
('700046500', 'U.E.P.A. MOVIL N° 3', 'PRIMARIO', 'PUBLICO', 4, 1),
('700046600', 'WALT DISNEY', 'PRIMARIO', 'PUBLICO', 3, 1),
('700046700', 'PATRICIAS MENDOCINAS', 'INICIAL', 'PUBLICO', 3, 1),
('700046800', 'ROSARIO VERA PEÑALOZA', 'INICIAL', 'PUBLICO', 4, 1),
('700046900', 'ESCUELA AMERICA', 'PRIMARIO', 'PUBLICO', 4, 1),
('700047000', 'HECTOR CONTE GRAND', 'PRIMARIO', 'PUBLICO', 4, 1),
('700047100', 'PROVINCIA DEL CHACO', 'INICIAL', 'PUBLICO', 3, 1),
('700047300', 'JUANA CARDOSO ABERASTAIN', 'PRIMARIO', 'PUBLICO', 4, 1),
('700047500', '25 DE MAYO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700047700', 'PAULA ALBARRACIN DE SARMIENTO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700048000', 'SARMIENTO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700048100', 'DR. ANACLETO GIL \"EMER\"', 'INICIAL', 'PUBLICO', 5, 1),
('700048200', 'ENRIQUE LARRETA', 'INICIAL', 'PUBLICO', 5, 1),
('700048300', 'PAULO VI', 'INICIAL', 'PUBLICO', 5, 1),
('700048400', '20 DE JUNIO', 'PRIMARIO', 'PUBLICO', 5, 1),
('700048500', 'JUAN EUGENIO SERU \"EMER\"', 'INICIAL', 'PUBLICO', 5, 1),
('700048600', 'INGENIERO FELIX AGUILAR', 'PRIMARIO', 'PUBLICO', 5, 1),
('700048700', 'Periodista Luis Jorge Bates', 'PRIMARIO', 'PUBLICO', 5, 1),
('700048900', 'JUAN HUARPE \"EMER\"', 'INICIAL', 'PUBLICO', 4, 1),
('700049000', 'JUAN PASCUAL PRINGLES \"EMER\"', 'INICIAL', 'PUBLICO', 4, 1),
('700049200', 'JUAN JUFRE', 'PRIMARIO', 'PUBLICO', 4, 1),
('700049300', 'Escuela Nocturna “Ángel Rogelio GONZÁLEZ\"', 'PRIMARIO', 'PUBLICO', 4, 1),
('700049500', 'CIRILO SARMIENTO', 'INICIAL', 'PUBLICO', 4, 1),
('700049600', 'CAPITAN JUAN EUGENIO DE MALLEA \"EMER\"', 'INICIAL', 'PUBLICO', 4, 1),
('700049800', 'ESCUELA DE NIVEL INICIAL \"EL JARDIN DE MIMOSAURIO\" (Ex ENI 13)', 'INICIAL', 'PUBLICO', 2, 1),
('700049900', 'CORNELIO SAAVEDRA T.T.', 'INICIAL', 'PUBLICO', 2, 1),
('700050000', 'ESCUELA DE NIVEL INICIAL N° 6', 'INICIAL', 'PUBLICO', 2, 1),
('700050200', 'BARRIO PARQUE RIVADAVIA NORTE', 'PRIMARIO', 'PUBLICO', 2, 1),
('700050400', 'UEPA Móvil \"Maestro Augusto Alejandro Orellano Walsen\" (ex UEPA Móvil Nº 17)', 'PRIMARIO', 'PUBLICO', 2, 1),
('700050500', 'REPUBLICA ORIENTAL DEL URUGUAY', 'INICIAL', 'PUBLICO', 3, 1),
('700050700', 'GRAL. MARINO BARTOLOME CARRERAS T.M.', 'PRIMARIO', 'PUBLICO', 2, 1),
('700051000', 'JUAN MARIA GUTIERREZ \"EMER\"', 'PRIMARIO', 'PUBLICO', 7, 1),
('700051100', 'BIENVENIDA SARMIENTO', 'INICIAL', 'PUBLICO', 6, 1),
('700051200', 'ALBERGUE PROVINCIA DE ENTRE RIOS', 'INICIAL', 'PUBLICO', 7, 1),
('700051300', 'PRESBITERO PATRICIO LOPEZ DEL CAMPO', 'INICIAL', 'PUBLICO', 6, 1),
('700051400', 'ESCUELA NORMAL SUPERIOR FRAY J. S. MARIA DE ORO', 'INICIAL', 'PUBLICO', 3, 1),
('700051500', 'JUAN MARTIN DE PUEYRREDON', 'INICIAL', 'PUBLICO', 5, 1),
('700051700', 'ESTEBAN AGUSTIN GASCON', 'INICIAL', 'PUBLICO', 6, 1),
('700051800', 'MONSEÑOR TOMAS S. CRUZ', 'INICIAL', 'PUBLICO', 6, 1),
('700051900', 'JOSE MATIAS ZAPIOLA', 'INICIAL', 'PUBLICO', 6, 1),
('700052000', 'JUAN DE ECHEGARAY', 'INICIAL', 'PUBLICO', 6, 1),
('700052200', 'INST. DE RECUP.INTEG. DEL NIÑO AISLADO I.R.I.N.A.', 'PRIMARIO', 'PRIVADO', 1, 1),
('700052300', 'PROVINCIA DE CATAMARCA T.M.', 'PRIMARIO', 'PUBLICO', 2, 1),
('700052400', 'PROVINCIA DE MENDOZA', 'INICIAL', 'PUBLICO', 2, 1),
('700052500', 'Malvinas Argentinas', 'PRIMARIO', 'PUBLICO', 2, 1),
('700052600', 'SAN JUAN DE LA FRONTERA', 'INICIAL', 'PUBLICO', 2, 1),
('700052700', 'Colegio Nuestra Señora de Tulum', 'INICIAL', 'PRIVADO', 2, 1),
('700052800', 'ESC. DOCENTES SANJUANINOS', 'PRIMARIO', 'PUBLICO', 2, 1),
('700052900', 'POLICIA DE LA PROVINCIA DE SAN JUAN', 'INICIAL', 'PUBLICO', 2, 1),
('700053000', 'JULIA LEON', 'PRIMARIO', 'PUBLICO', 2, 1),
('700053100', 'DIOGENES PERRAMON', 'INICIAL', 'PUBLICO', 3, 1),
('700053101', 'ANEXO ESC. DIOGENES PERRAMON', 'PRIMARIO', 'PUBLICO', 3, 1),
('700053300', 'FRAGATA PRESIDENTE SARMIENTO', 'INICIAL', 'PUBLICO', 7, 1),
('700053400', 'BALDOMERO FERNANDEZ MORENO', 'PRIMARIO', 'PUBLICO', 6, 1),
('700053500', 'FRAY CAYETANO RODRIGUEZ', 'PRIMARIO', 'PUBLICO', 7, 1),
('700053600', 'BENITO LINCH', 'PRIMARIO', 'PUBLICO', 6, 1),
('700053700', 'ALBERGUE MARCOS JUSTINIANO GOMEZ NARVAEZ', 'INICIAL', 'PUBLICO', 7, 1),
('700053800', 'ALBERGUE HERNANDO DE MAGALLANES', 'PRIMARIO', 'PUBLICO', 7, 1),
('700053900', 'DRA. JULIETA LANTERI', 'INICIAL', 'PUBLICO', 7, 1),
('700054000', 'PRESBITERO CAYETANO DE QUIROGA', 'INICIAL', 'PUBLICO', 7, 1),
('700054100', 'SARGENTO CABRAL', 'INICIAL', 'PUBLICO', 6, 1),
('700054200', 'BETHSABE PELLIZA DE ESPINOZA', 'INICIAL', 'PUBLICO', 6, 1),
('700054300', 'ARMADA ARGENTINA', 'INICIAL', 'PUBLICO', 7, 1),
('700054400', 'MARIA ELENA VIDART DE MAURIN', 'PRIMARIO', 'PUBLICO', 6, 1),
('700054600', 'PROVINCIA DE FORMOSA', 'PRIMARIO', 'PUBLICO', 6, 1),
('700054800', 'NUCLEO GENDARMERIA NACIONAL', 'PRIMARIO', 'PUBLICO', 6, 1),
('700054801', 'NUCLEO GENDARMERIA NACIONAL ANEXO USNO', 'PRIMARIO', 'PUBLICO', 7, 1),
('700054802', 'NUCLEO GENDARMERIA NACIONAL ANEXO ASTICA', 'PRIMARIO', 'PUBLICO', 6, 1),
('700054900', 'PROVINCIA DE SANTA FE', 'PRIMARIO', 'PUBLICO', 1, 1),
('700055000', 'EL TRÁNSITO DE NUESTRA SEÑORA', 'INICIAL', 'PRIVADO', 1, 1),
('700055200', 'FRAY MAMERTO ESQUIÚ', 'PRIMARIO', 'PRIVADO', 1, 1),
('700055600', 'ANDINA', 'INICIAL', 'PUBLICO', 4, 1),
('700055700', 'SUBOFICIAL MAYOR SEGUNDO ANTENOR YUBEL', 'INICIAL', 'PUBLICO', 4, 1),
('700055900', 'PEDRO ALVAREZ', 'INICIAL', 'PUBLICO', 4, 1),
('700056000', 'VIRGINIA MORENO DE PARKES', 'INICIAL', 'PUBLICO', 4, 1),
('700056100', 'BATALLA DE TUCUMAN', 'INICIAL', 'PUBLICO', 4, 1),
('700056200', 'INGENIERO MARCO A. ZALAZAR', 'PRIMARIO', 'PUBLICO', 4, 1),
('700056300', 'CONTRALMIRANTE ELEAZAR VIDELA', 'INICIAL', 'PUBLICO', 4, 1),
('700056400', 'NOCTURNA DR. ANTONINO ABERASTAIN', 'PRIMARIO', 'PUBLICO', 4, 1),
('700056500', 'GRANADEROS DE SAN MARTIN', 'PRIMARIO', 'PUBLICO', 4, 1),
('700056700', 'ROMULO GIUFFRA', 'INICIAL', 'PUBLICO', 7, 1),
('700056800', 'PRESIDENTE JULIO ARGENTINO ROCA', 'INICIAL', 'PUBLICO', 7, 1),
('700056900', 'ESCUELA E.E.E. MULTIPLE CALINGASTA', 'INICIAL', 'PUBLICO', 6, 1),
('700057200', 'NUESTRA SEÑORA DE LAS NIEVES', 'INICIAL', 'PRIVADO', 6, 1),
('700057300', 'MAR ARGENTINO', 'INICIAL', 'PUBLICO', 5, 1),
('700057400', 'MARTIN YANZON \"EMER\"', 'INICIAL', 'PUBLICO', 5, 1),
('700057500', 'PASCUAL CHENA', 'INICIAL', 'PUBLICO', 5, 1),
('700057600', 'COMANDANTE TOMAS ESPORA \"EMER\"', 'INICIAL', 'PUBLICO', 5, 1),
('700057700', 'FLORENCIA NIGHTINGALE', 'INICIAL', 'PUBLICO', 5, 1),
('700057800', 'BARTOLOME DEL BONO', 'INICIAL', 'PUBLICO', 5, 1),
('700058000', 'TENIENTE PEDRO NOLASCO FONSECA', 'INICIAL', 'PUBLICO', 1, 1),
('700058100', 'COLEGIO NTRA. SRA. DE LUJAN', 'PRIMARIO', 'PRIVADO', 1, 1),
('700058200', 'PERITO FRANCISCO PASCACIO MORENO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700058300', 'ANGEL DOMINGO ROJAS', 'PRIMARIO', 'PUBLICO', 1, 1),
('700058400', 'DR. JUAN CRISOSTOMO ALBARRACIN', 'PRIMARIO', 'PUBLICO', 1, 1),
('700058500', 'ESCUELA DE EDUCACIÓN ESPECIAL JOSÉ DE CUPERTINO (Ex E.E.E. MULTIPLE DE RIVADAVIA)', 'INICIAL', 'PUBLICO', 2, 1),
('700058600', 'ESCUELA \"GENDARME ARGENTINO\"', 'PRIMARIO', 'PUBLICO', 2, 1),
('700058700', 'PRESBITERO FRANCISCO PEREZ HERNANDEZ', 'PRIMARIO', 'PRIVADO', 2, 1),
('700058800', 'SALVADOR MARIA DEL CARRIL', 'PRIMARIO', 'PUBLICO', 1, 1),
('700058900', 'Escuela de Educación Especial “Martina Chapanay”', 'INICIAL', 'PUBLICO', 3, 1),
('700059000', 'MARÍA ELENA WALSH (EX E.N.I. 10)', 'INICIAL', 'PUBLICO', 2, 1),
('700059100', 'NOCTURNA ERNESTO A. BAVIO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700059200', 'ERNESTO A. BAVIO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700059400', 'Agustín Victorio Gnecco', 'PRIMARIO', 'PUBLICO', 2, 1),
('700059500', 'GRAL. ESTANISLAO SOLER T.M.', 'PRIMARIO', 'PUBLICO', 2, 1),
('700059600', 'LEANDRO N. ALEM', 'PRIMARIO', 'PUBLICO', 1, 1),
('700059700', 'NOCTURNA FRAY JUSTO SANTA MARIA DE ORO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700059900', 'DR. JOSE IGNACIO DE LA ROZA', 'INICIAL', 'PUBLICO', 1, 1),
('700060000', 'FRAY JUSTO SANTA MARIA DE ORO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700060100', 'DR. GUILLERMO RAWSON', 'INICIAL', 'PUBLICO', 1, 1),
('700060300', 'ESCUELA DOMICILIARIA Y HOSPITALARIA DR. GUILLERMO RAWSON', 'INICIAL', 'PUBLICO', 1, 1),
('700060301', 'ESCUELA DOMICILIARIA Y HOSPITALARIA DR. GUILLERMO RAWSON - ANEXO DR. MARCIAL QUIROGA', 'INICIAL', 'PUBLICO', 2, 1),
('700060400', 'Colegio Don Bosco', 'INICIAL', 'PRIVADO', 1, 1),
('700060500', 'ESCUELA NORMAL SUPERIOR GRAL. SAN MARTIN', 'INICIAL', 'PUBLICO', 1, 1),
('700060700', 'CAPITAL FEDERAL', 'INICIAL', 'PUBLICO', 1, 1),
('700060800', 'E.E.E. Albergue Juan XXIII', 'PRIMARIO', 'PRIVADO', 1, 1),
('700060900', 'PROVINCIA DE BUENOS AIRES', 'INICIAL', 'PUBLICO', 1, 1),
('700061200', '9 DE JULIO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700061300', 'COLEGIO SAN JOSÉ', 'INICIAL', 'PRIVADO', 1, 1),
('700061400', 'FLORENTINO AMEGHINO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700061500', 'TENIENTE 1° FRANCISCO IBAÑEZ', 'INICIAL', 'PUBLICO', 1, 1),
('700062000', 'COLEGIO LA INMACULADA', 'INICIAL', 'PRIVADO', 1, 1),
('700062400', 'COLEGIO NIÑO JESUS', 'INICIAL', 'PRIVADO', 2, 1),
('700062800', 'ESCUELA NUEVA JUAN FANZOLATO', 'INICIAL', 'PRIVADO', 2, 1),
('700063100', 'REGIMIENTO DE PATRICIOS', 'INICIAL', 'PUBLICO', 4, 1),
('700063300', 'SAINT PAUL COLEGIO BILINGUE', 'INICIAL', 'PRIVADO', 1, 1),
('700064000', 'Colegio Cristo Rey', 'PRIMARIO', 'PRIVADO', 3, 1),
('700064100', 'NOCTURNA DR. CARLOS MARIA BIEDMA', 'PRIMARIO', 'PUBLICO', 3, 1),
('700064300', 'DR. PABLO RAMELLA', 'PRIMARIO', 'PUBLICO', 3, 1),
('700064400', 'Colegio Monseñor José Américo Orzali', 'INICIAL', 'PRIVADO', 2, 1),
('700064500', 'ESCUELA E.E.E. MULTIPLE DE ULLUM', 'INICIAL', 'PUBLICO', 4, 1),
('700064600', 'COLEGIO DE NIVEL INICIAL NUESTRA SEÑORA DEL ROSARIO DE ANDACOLLO', 'INICIAL', 'PRIVADO', 2, 1),
('700065000', 'ESCUELA E.E.E. MULTIPLE DE IGLESIA', 'INICIAL', 'PUBLICO', 6, 1),
('700065200', 'E.E.E. Y FORMACION LABORAL ALFREDO FORTABAT', 'PRIMARIO', 'PUBLICO', 1, 1),
('700065201', 'ANEXO TALLER PROTEGIDO E.E.E. ALFREDO FORTABAT', 'INICIAL', 'PUBLICO', 1, 1),
('700065700', 'AUTONOMIA BARTOLOME DEL BONO', 'INICIAL', 'PUBLICO', 5, 1),
('700065800', 'E.E.E. Centro de día Huarpes Res. 3308 ME 1996', 'INICIAL', 'PRIVADO', 2, 1),
('700066100', 'PROPAA - ZONA SUR', 'PRIMARIO', 'PUBLICO', 4, 1),
('700066107', 'PROPAA - ZONA SUR ANEXO 14', 'PRIMARIO', 'PUBLICO', 3, 1),
('700066116', 'PROPAA - ZONA SUR ANEXO 16', 'PRIMARIO', 'PUBLICO', 2, 1),
('700066200', 'PROPAA - ZONA NORTE', 'PRIMARIO', 'PUBLICO', 1, 1),
('700066202', 'PROPAA - ZONA NORTE ANEXO 2', 'PRIMARIO', 'PUBLICO', 2, 1),
('700066206', 'PROPAA - ZONA NORTE ANEXO 6', 'PRIMARIO', 'PUBLICO', 3, 1),
('700066300', 'PROPAA - ZONA ESTE', 'PRIMARIO', 'PUBLICO', 3, 1),
('700066313', 'PROPAA - ZONA ESTE ANEXO 13', 'PRIMARIO', 'PUBLICO', 3, 1),
('700066326', 'PROPAA - ZONA ESTE ANEXO 26', 'PRIMARIO', 'PUBLICO', 3, 1),
('700066400', 'PROPAA - ZONA OESTE', 'PRIMARIO', 'PUBLICO', 4, 1),
('700066402', 'PROPAA - ZONA OESTE ANEXO 2', 'PRIMARIO', 'PUBLICO', 4, 1),
('700066405', 'PROPAA - ZONA OESTE ANEXO 5', 'PRIMARIO', 'PUBLICO', 3, 1),
('700066418', 'PROPAA - ZONA OESTE ANEXO 18', 'PRIMARIO', 'PUBLICO', 1, 1),
('700066500', 'ESCUELA TEC. CAP. LAB. DR. CARLOS MARIA BIEDMA', 'PRIMARIO', 'PUBLICO', 1, 1),
('700066600', 'ESCUELA TEC. CAP. LAB. GREGORIA MATORRAS DE SAN MA', 'PRIMARIO', 'PUBLICO', 3, 1),
('700066601', 'ANEXO ESC. TEC. CAP. LAB. GREGORIA DE SAN M. PAMPA', 'PRIMARIO', 'PUBLICO', 6, 1),
('700066602', 'ANEXO ESC. TEC. CAP. LAB. GREGORIA DE SAN M.NOCTUR', 'PRIMARIO', 'PUBLICO', 3, 1),
('700066700', 'ESCUELA TEC. CAP. LAB. ARTURO MARASSO', 'PRIMARIO', 'PUBLICO', 6, 1),
('700066701', 'ANEXO ESC. TEC. CAP. LAB. ARTURO MARASSO (HUACO)', 'PRIMARIO', 'PUBLICO', 6, 1),
('700066702', 'ANEXO ESC. TEC. CAP. LAB. ARTURO MARASSO(BELLA VIS', 'PRIMARIO', 'PUBLICO', 6, 1),
('700066800', 'ESCUELA TEC. CAP. LAB. DOMINGO MATHEU', 'PRIMARIO', 'PUBLICO', 1, 1),
('700066801', 'ANEXO ESC. TEC. CAP. LAB. DOMINGO MATHEU', 'PRIMARIO', 'PUBLICO', 3, 1),
('700066900', 'ESCUELA TEC. CAP. LAB. N° 25 HELLEN KELLER', 'PRIMARIO', 'PUBLICO', 6, 1),
('700066901', 'ANEXO ESC. TEC. CAP. LAB. N° 25  HELLEN KELLER', 'PRIMARIO', 'PUBLICO', 6, 1),
('700067000', 'ESCUELA TEC. CAP. LAB. MONS. LEONARDO GALLARDO', 'PRIMARIO', 'PUBLICO', 3, 1),
('700067001', 'ANEXO ESC. TEC. CAP. LAB. MONS. LEONARDO GALLARDO', 'PRIMARIO', 'PUBLICO', 4, 1),
('700067100', 'Escuela de Formación Profesional  “Miguel Antonio León”', 'PRIMARIO', 'PUBLICO', 4, 1),
('700067200', 'ESCUELA TÉCNICA DE CAPACITACIÓN LABORAL SAGRADA FAMILIA', 'PRIMARIO', 'PRIVADO', 1, 1),
('700067300', 'ESCUELA TÉCNICA DE CAPACITACIÓN LABORAL DEÁN ABEL BALMACEDA', 'PRIMARIO', 'PRIVADO', 2, 1),
('700067400', 'ESCUELA TEC. CAP. LAB. SABINO PIGNATARI', 'PRIMARIO', 'PUBLICO', 1, 1),
('700067500', 'ESCUELA TEC. CAP. LAB. JOSE RUDECINDO ROJO', 'PRIMARIO', 'PUBLICO', 4, 1),
('700067600', 'ESCUELA TEC. CAP. LAB. AUGUSTO BELIN SARMIENTO', 'PRIMARIO', 'PUBLICO', 5, 1),
('700067700', 'UNIDAD EDUCATIVA N° 22  (EX - ETCL JOSE H. GONZALE', 'PRIMARIO', 'PUBLICO', 6, 1),
('700067701', 'ANEXO UNIDAD EDUCATIVA N° 22 (EX ETCL J.H.GONZALEZ', 'PRIMARIO', 'PUBLICO', 6, 1),
('700067800', 'ESCUELA TEC. CAP. LAB. PABLO PIZZURNO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700067801', 'ANEXO ESC. TEC. CAP. LAB. PABLO A. PIZZURNO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700067900', 'ESCUELA TEC. CAP. LAB. CAP.PEDRO PABLO DE QUIROGA', 'PRIMARIO', 'PUBLICO', 6, 1),
('700067901', 'ANEXO ESC. CAP. LAB. PEDRO PABLO QUIROGA', 'PRIMARIO', 'PUBLICO', 6, 1),
('700068000', 'ESCUELA TEC. CAP. LAB. EJERCITO ARGENTINO', 'PRIMARIO', 'PUBLICO', 3, 1),
('700068001', 'ANEXO ESC. TEC. CAP. LAB. EJERCITO ARGENTINO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700068100', 'ESCUELA TÉCNICA DE CAPACITACIÓN LABORAL OBREROS DEL PORVENIR', 'PRIMARIO', 'PRIVADO', 1, 1),
('700068200', 'ESCUELA TEC. CAP. LAB. JUAN JOSE PASO', 'PRIMARIO', 'PUBLICO', 4, 1),
('700068201', 'ANEXO ESC. TEC. CAP. LAB. JUAN JOSE PASO', 'PRIMARIO', 'PUBLICO', 4, 1),
('700068300', 'ESCUELA TEC. CAP. LAB. N° 27', 'PRIMARIO', 'PUBLICO', 3, 1),
('700068400', 'ESCUELA TEC. CAP. LAB. JUAN PABLO ECHAGUE', 'PRIMARIO', 'PUBLICO', 2, 1),
('700068500', 'ESCUELA TEC. CAP. LAB. JERONIMO LUIS DE CABRERA', 'PRIMARIO', 'PUBLICO', 4, 1),
('700068600', 'ESCUELA TECNICA DE CAPACITACION LABORAL \"INT. JOAQUIN UÑAC\"    EX - ESCUELA TEC. CAP. LAB. N° 4', 'PRIMARIO', 'PUBLICO', 4, 1),
('700068700', 'ESCUELA TEC. CAP. LAB. N° 1 PEDRO ECHAGUE', 'PRIMARIO', 'PUBLICO', 4, 1),
('700068800', 'ESCUELA TEC. CAP. LAB. AGUSTIN DELGADO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700068801', 'ANEXO ESC. TEC. CAP. LAB. AGUSTIN DELGADO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700068900', 'ESCUELA TEC. CAP. LAB. REMEDIOS ESCALADA DE SAN MA', 'PRIMARIO', 'PUBLICO', 6, 1),
('700069000', 'ESCUELA TEC. CAP. LAB. LUIS JOFRE', 'PRIMARIO', 'PUBLICO', 3, 1),
('700069100', 'ESCUELA TEC. CAP. LAB. RICARDO ROJAS', 'PRIMARIO', 'PUBLICO', 1, 1),
('700069101', 'ANEXO ESC. TEC. CAP. LAB. RICARDO ROJAS', 'PRIMARIO', 'PUBLICO', 1, 1),
('700069200', 'ESCUELA TEC. CAP. LAB. LEOPOLDO LUGONES', 'PRIMARIO', 'PUBLICO', 2, 1),
('700069201', 'ANEXO ESC. TEC. CAP. LAB. LEOPOLDO LUGONES', 'PRIMARIO', 'PUBLICO', 3, 1),
('700069300', 'ESCUELA TEC. CAP. LAB. ARNOBIO SANCHEZ', 'PRIMARIO', 'PUBLICO', 1, 1),
('700069400', 'ESCUELA TEC. CAP. LAB. MONS. JOSE AMERICO ORZALI', 'PRIMARIO', 'PUBLICO', 2, 1),
('700069600', 'MISION MONOTECNICA Y EXTENSION CULTURAL N° 44', 'PRIMARIO', 'PUBLICO', 4, 1),
('700069700', 'ESCUELA TEC. CAP. LAB. JUAN PABLO II', 'PRIMARIO', 'PUBLICO', 6, 1),
('700069800', 'CENTRO DE FORMACION PROFESIONAL N°1 DE RAWSON', 'PRIMARIO', 'PUBLICO', 2, 1),
('700069801', 'CTRO. FORMACION PROF. Nº1 RAWSON ANEXO CONCEPCION', 'PRIMARIO', 'PUBLICO', 2, 1),
('700069900', 'ESCUELA TEC. CAP. LAB. NICOMEDES SEGUNDO PINTO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700070000', 'ESCUELA TEC. CAP. LAB. N° 11', 'PRIMARIO', 'PUBLICO', 5, 1),
('700070001', 'ANEXO ESC. TEC. CAP. LAB. N° 11', 'PRIMARIO', 'PUBLICO', 5, 1),
('700070100', 'ESCUELA TEC. CAP. LAB. ACONCAGUA', 'PRIMARIO', 'PUBLICO', 6, 1),
('700070101', 'ANEXO ESC. TEC. CAP. LAB. ACONCAGUA', 'PRIMARIO', 'PUBLICO', 6, 1),
('700070200', 'MISION MONOTECNICA N° 59', 'PRIMARIO', 'PUBLICO', 4, 1),
('700070300', 'ESCUELA TEC. CAP. LAB. TAMBOR DE TACUARI', 'PRIMARIO', 'PUBLICO', 3, 1),
('700070301', 'ESC. TEC. CAP. LAB. TAMBOR DE TACUARI (ANEXO)', 'PRIMARIO', 'PUBLICO', 3, 1),
('700070400', 'ESCUELA TEC. CAP. LAB. JUAN BAUTISTA ALBERDI', 'PRIMARIO', 'PUBLICO', 1, 1),
('700070401', 'ANEXO ESC. TEC. CAP. LAB. JUAN BAUTISTA ALBERDI', 'PRIMARIO', 'PUBLICO', 1, 1),
('700070500', 'ESCUELA TEC. CAP. LAB. INGENIERO DOMINGO KRAUSE', 'PRIMARIO', 'PUBLICO', 2, 1),
('700070501', 'ANEXO ESC. TEC. CAP. LAB. INGENIERO DOMINGO KRAUSE', 'PRIMARIO', 'PUBLICO', 3, 1),
('700070700', 'Dr. Leopoldo BRAVO', 'PRIMARIO', 'PUBLICO', 5, 1),
('700070800', 'MISION MONOTECNICA Y EXTENCION CULTURAL N° 14', 'PRIMARIO', 'PUBLICO', 3, 1),
('700070900', 'ESCUELA TEC. CAP. LAB. SOFIA LENOIR DE KLAPPENBACH', 'PRIMARIO', 'PUBLICO', 3, 1),
('700070901', 'ANEXO ESC. TEC. CAP. LAB. SOFIA L. KLAPPENBACH', 'PRIMARIO', 'PUBLICO', 3, 1),
('700071000', 'ESCUELA TEC. CAP. LAB. ARMANDO GAVIORNO', 'PRIMARIO', 'PUBLICO', 4, 1),
('700071100', 'ESCUELA TEC. CAP. LAB. TERESA DE ASCENCIO DE DE MALLEA', 'PRIMARIO', 'PUBLICO', 2, 1),
('700071200', 'ESCUELA TEC. CAP. LAB. MARIA CONTI DE TINTO', 'PRIMARIO', 'PUBLICO', 4, 1),
('700071201', 'ANEXO ESC. TEC. CAP. LAB. MARIA CONTI DE TINTO', 'PRIMARIO', 'PUBLICO', 4, 1),
('700071300', 'ESCUELA TEC. CAP. LAB. JUAN RAMIREZ DE VELAZCO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700071301', 'ANEXO ESC. TEC. CAP. LAB. JUAN RAMIREZ DE VELAZCO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700071400', 'ESCUELA TEC. CAP. LAB. MAGDALENA B. DE ABERASTAIN', 'PRIMARIO', 'PUBLICO', 4, 1),
('700071500', 'ESCUELA TEC. CAP. LAB. JUAN DE GARAY', 'PRIMARIO', 'PUBLICO', 4, 1),
('700071600', 'ESCUELA TEC. CAP. LAB. NIÑAS DE AYOHUMA', 'PRIMARIO', 'PUBLICO', 3, 1),
('700071700', 'ESCUELA TEC. CAP. LAB. N° 26 LUIS SAENZ PEÑA', 'PRIMARIO', 'PUBLICO', 6, 1),
('700071800', 'ESCUELA TEC. CAP. LAB. TEODOVINA GIMENEZ', 'PRIMARIO', 'PUBLICO', 6, 1),
('700071801', 'ANEXO ESC. TEC. CAP. LAB. TEODOVINA GIMENEZ', 'PRIMARIO', 'PUBLICO', 6, 1),
('700071900', 'ESCUELA TEC. CAP. LAB. ING. ESTANISLAO TELLO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700072100', 'MISION DE CULTURA RURAL Y DOMESTICA N° 9', 'PRIMARIO', 'PUBLICO', 6, 1),
('700072200', 'ESCUELA TEC. CAP. LAB. ROBERTO J. PAYRO', 'PRIMARIO', 'PUBLICO', 2, 1),
('700072300', 'ESCUELA TEC. CAP. LAB. MADRES SANJUANINAS', 'PRIMARIO', 'PUBLICO', 2, 1),
('700072400', 'ESCUELA TEC. CAP. LAB. TOMAS ALVA EDISON', 'PRIMARIO', 'PUBLICO', 2, 1),
('700072401', 'ANEXO ESC. TEC. CAP. LAB. TOMAS ALVA EDISON', 'PRIMARIO', 'PUBLICO', 3, 1),
('700072500', 'ESCUELA TEC. CAP. LAB. INFANTERIA ARGENTINA', 'PRIMARIO', 'PUBLICO', 2, 1),
('700072600', 'TEOLINDA ROMERO DE SOTOMAYOR', 'PRIMARIO', 'PUBLICO', 5, 1),
('700072800', 'COLEGIO DE NIVEL INICIAL NUESTRA SEÑORA DE TULUM', 'INICIAL', 'PRIVADO', 2, 1),
('700072900', 'ESCUELA TEC. CAP. LAB. N° 24', 'PRIMARIO', 'PUBLICO', 6, 1),
('700073300', 'MISION MONOTECNICA Y EXTENSION CULTURAL N° 64', 'PRIMARIO', 'PUBLICO', 5, 1),
('700073400', 'ESCUELA TEC. CAP. LAB. MONS. DR. AUDINO RODRIGUEZ', 'PRIMARIO', 'PUBLICO', 3, 1),
('700073700', 'ESCUELA TEC. CAP. LAB. JORGE HUMBERTO YACANTE', 'PRIMARIO', 'PUBLICO', 4, 1),
('700073900', 'COLEGIO SANTO TOMÁS DE AQUINO', 'INICIAL', 'PRIVADO', 1, 1),
('700074000', 'COLEGIO SANTISIMO SACRAMENTO', 'INICIAL', 'PRIVADO', 2, 1),
('700074100', 'MERCEDES GUERRA DEL NIÑO JESÚS', 'INICIAL', 'PRIVADO', 1, 1),
('700074400', 'PRIMEROS PASITOS EN LA MODELO', 'INICIAL', 'PRIVADO', 1, 1),
('700074500', 'COLEGIO PARA ADULTOS MARÍA AUXILIADORA', 'PRIMARIO', 'PRIVADO', 1, 1),
('700074700', 'COLEGIO DE NIVEL INICIAL MARIA DE BELEN', 'INICIAL', 'PRIVADO', 1, 1),
('700074800', 'ESCUELA E.E.E. BILINGUE PARA SORDOS', 'INICIAL', 'PUBLICO', 2, 1),
('700074900', 'COLEGIO INGLES', 'INICIAL', 'PRIVADO', 1, 1),
('700075200', 'Escuela Técnica de Capacitación Laboral “Madre Teresa de Calcuta\" (ex Escuela Técnica de Capacitación Laboral Nº 18)', 'PRIMARIO', 'PUBLICO', 4, 1),
('700075700', 'COLEGIO DR. B. A. HOUSSAY', 'PRIMARIO', 'PRIVADO', 1, 1),
('700076200', 'COLEGIO SAN AGUSTIN', 'PRIMARIO', 'PRIVADO', 2, 1),
('700076400', 'COLEGIO LOS OLIVOS', 'INICIAL', 'PRIVADO', 1, 1),
('700076500', 'EXCELLENCE COLLEGE', 'INICIAL', 'PRIVADO', 2, 1),
('700077600', 'Abenhamar Rodrigo', 'PRIMARIO', 'PUBLICO', 2, 1),
('700078000', 'ESCUELA TEC. CAP. LAB. ING. LUIS NOUSSAN', 'PRIMARIO', 'PUBLICO', 3, 1),
('700078300', 'COLEGIO DEL PRADO', 'INICIAL', 'PRIVADO', 2, 1),
('700078600', 'Colegio de Nivel Inicial San Francisco de Asís', 'INICIAL', 'PRIVADO', 1, 1),
('700078800', 'Colegio Bilingüe Saint Louis', 'INICIAL', 'PRIVADO', 1, 1),
('700079000', 'JINZ DULCE CORAZÓN DE MARÍA', 'INICIAL', 'PRIVADO', 2, 1),
('700079300', 'ESCUELA TEC. CAP. LAB. DOMINGO CAYETANO VALLVE', 'PRIMARIO', 'PUBLICO', 1, 1),
('700079400', 'ESCUELA E.E.E. MULTIPLE DE VALLE FERTIL', 'INICIAL', 'PUBLICO', 6, 1),
('700079401', 'E.E.E. MULTIPLE DE VALLE FERTIL ANEXO ASTICA', 'INICIAL', 'PUBLICO', 6, 1),
('700080700', 'Colegio de Educación inicial y Primaria Mercedario', 'INICIAL', 'PRIVADO', 2, 1),
('700081300', 'ESCUELA DE NIVEL PRIMARIO BANDERA CIUDADANA (EX. JUAN JOSE CASTELLI T.T.)', 'INICIAL', 'PUBLICO', 3, 1),
('700081400', 'JUAN ENRIQUE PESTALOZZI T.T.', 'PRIMARIO', 'PUBLICO', 2, 1),
('700081600', 'E.E.E. MULTIPLE DE ANGACO', 'INICIAL', 'PUBLICO', 4, 1),
('700081900', 'PASO DE VALLE HERMOSO', 'INICIAL', 'PUBLICO', 2, 1),
('700082000', 'CENTRO DE EDUCACION AGRICOLA Nº 2 - JACHAL', 'PRIMARIO', 'PUBLICO', 5, 1),
('700082100', 'TALLER CARMELITAS DESCALZAS', 'PRIMARIO', 'PUBLICO', 4, 1),
('700082300', 'ESCUELA Bº FRANKLIN RAWSON', 'INICIAL', 'PUBLICO', 2, 1),
('700082500', 'COLEGIO DR. B. A. HOUSSAY', 'INICIAL', 'PRIVADO', 1, 1),
('700083100', 'COLEGIO DE EDUCACION INICIAL Y PRIMARIA EL SEIBO', 'INICIAL', 'PRIVADO', 1, 1),
('700083400', 'Gobernador Eloy Camus', 'INICIAL', 'PUBLICO', 3, 1),
('700083500', 'Las Hornillas', 'INICIAL', 'PUBLICO', 2, 1),
('700083800', 'ESCUELA DE NIVEL INICIAL TULUM (EX ENI Nº 15)', 'INICIAL', 'PUBLICO', 3, 1),
('700084000', 'E.E.E. CRISTO DE LA QUEBRADA (ex E.E.E. MULTIPLE DE LOS BERROS)', 'INICIAL', 'PUBLICO', 6, 1),
('700084200', 'ESC. TEC. CAP. LAB. Nº 5 \"MARTIN YANZON\"', 'PRIMARIO', 'PUBLICO', 5, 1),
('700084500', 'Rosario Sarmiento (Ex ENIº 16)', 'INICIAL', 'PUBLICO', 2, 1),
('700085000', 'PILPINTÚ (Ex E.N.I. N 20)', 'INICIAL', 'PUBLICO', 2, 1),
('700085100', 'XELU (Ex ENI Nº 17)', 'INICIAL', 'PUBLICO', 3, 1),
('700085200', 'TANITANÍ (Ex ENI Nº 19)', 'INICIAL', 'PUBLICO', 3, 1),
('700085300', 'COLEGIO DE EDU INICIAL Y PRIMARIA SAN BERNARDO', 'INICIAL', 'PRIVADO', 1, 1),
('700085400', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 25 \"GABRIEL GARCIA MARQUEZ\"', 'INICIAL', 'PUBLICO', 6, 1),
('700085500', 'HUEPIL (Ex ENI 21)', 'INICIAL', 'PUBLICO', 3, 1),
('700085600', 'Prof. Margarita Mugnos de Escudero (Ex ENI Nº22)', 'INICIAL', 'PUBLICO', 2, 1),
('700085700', '\"E.N.I. Nº 24 - SAN JUAN PABLO SEGUNDO\"', 'INICIAL', 'PUBLICO', 3, 1),
('700085800', 'PROFESORA GLADYS NOEMÍ PERALTA (Ex. ENI 18)', 'INICIAL', 'PUBLICO', 6, 1),
('700086100', 'COLEGIO DE NIVEL INICIAL INTEGRAL INDEPENDENCIA', 'INICIAL', 'PRIVADO', 1, 1),
('700086300', 'Taynemta(Ex ENI Nº26)', 'INICIAL', 'PUBLICO', 2, 1),
('700086400', 'Profesora Margarita Ferrá de Bartol(Ex ENI Nº23)', 'INICIAL', 'PUBLICO', 2, 1),
('700086600', 'ESCUELA DE NIVEL INICIAL SAN JUAN BAUTISTA (ex ENI 28)', 'INICIAL', 'PUBLICO', 2, 1),
('700086700', 'ELSA BORNEMANN(Ex ENI Nº30)', 'INICIAL', 'PUBLICO', 3, 1),
('700086800', 'Escuela de Nivel Inicial Julio Cortazar (Ex E.N.I. N 27)', 'INICIAL', 'PUBLICO', 4, 1),
('700086900', 'JARDIN MATERNAL PICARDIAS', 'INICIAL', 'PRIVADO', 2, 1),
('700087000', 'ESCUELA DE NIVEL INICIAL ESTRELLA DE LOS ANDES', 'INICIAL', 'PUBLICO', 1, 1),
('700087100', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 32', 'INICIAL', 'PUBLICO', 6, 1),
('700087300', 'E.N.I. MARIA LAURA DEVETACH (EX. E.N.I. Nº 33)', 'INICIAL', 'PUBLICO', 3, 1),
('700087400', 'Escuela de Nivel Inicial Nº 34 Magdalena Guemes', 'INICIAL', 'PUBLICO', 3, 1),
('700087500', 'ESCUELA DE NIVEL INICIAL \"MILO LOCKETT\" (Ex ENI 36)', 'INICIAL', 'PUBLICO', 2, 1),
('700087600', 'ESCUELA DE NIVEL INICIAL \"DR. ANTONIO WASHINGTON CHAVES\" (Ex ENI 37)', 'INICIAL', 'PUBLICO', 3, 1),
('700087700', 'ESCUELA DE NIVEL INICIAL \"LA ÑUSTA\" (Ex ENI 38)', 'INICIAL', 'PUBLICO', 3, 1),
('700087800', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 31', 'INICIAL', 'PUBLICO', 1, 1),
('700087900', 'Escuela de Nivel Inicial Hebe San Martín de Duprat (Ex E.N.I. Nº 39)', 'INICIAL', 'PUBLICO', 3, 1),
('700088000', 'JARDÍN INFANTIL \"PEQUEÑITO\"', 'INICIAL', 'PRIVADO', 1, 1),
('700088100', 'NMAT JARDIN MATERNO INFANTIL CONEJO TITO', 'INICIAL', 'PRIVADO', NULL, 1),
('700088200', 'COLEGIO FASTA FEDERICO OZANAM', 'INICIAL', 'PRIVADO', 1, 1),
('700088300', 'COLEGIO SAN VALENTÍN', 'INICIAL', 'PRIVADO', NULL, 1),
('700088400', 'ESCUELA DE NIVEL INICIAL PAPA FRANCISCO (Ex ENI 29)', 'INICIAL', 'PUBLICO', 4, 1),
('700088500', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 40 “ADRIANA VEGA”', 'INICIAL', 'PUBLICO', 2, 1),
('700088900', 'ESCUELA DE NIVEL INICIAL Y PRIMARIO CRUCE DE LOS ANDES', 'INICIAL', 'PUBLICO', 2, 1),
('700089000', 'ESCUELA DE EDUCACION PRIMARIA LOS MANANTIALES (Ex Escuela Primaria B° Bermejo)', 'PRIMARIO', 'PUBLICO', 4, 1),
('700089400', 'ESCUELA DE NIVEL INICIAL DANTE ALBERTO SAAVEDRA (EX ESCUELA DE NIVEL INICIAL Nº 41)', 'INICIAL', 'PUBLICO', 3, 1),
('700089500', 'EL JARDIN DE FRANCESCO ( EX ENI Nº 42)', 'INICIAL', 'PUBLICO', 2, 1),
('700089600', 'NIN JARDIN EL GUSANITO ENI', 'INICIAL', 'PRIVADO', NULL, 1),
('700089800', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 45', 'INICIAL', 'PUBLICO', 2, 1),
('700089900', 'ESCUELA DE EDUCACION PRIMARIA Bº FRONDIZI', 'PRIMARIO', 'PUBLICO', 2, 1),
('700090000', 'ESCUELA DE NIVEL INICIAL SAN JOSE GABRIEL DEL ROSARIO BROCHERO (EX ENI 47)', 'INICIAL', 'PUBLICO', 2, 1),
('700090100', 'ESCUELA DE EDUCACION PRIMARIA NUEVO CUYO T.M.', 'PRIMARIO', 'PUBLICO', 3, 1),
('700090200', 'ESCUELA DE NIVEL INICIAL ENI N°46', 'INICIAL', 'PUBLICO', 3, 1),
('700090300', 'NIN COLEGIO DORA DE PALMA', 'INICIAL', 'PRIVADO', NULL, 1),
('700090400', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 44 \"ESTRELLITA DE COLORES\"', 'INICIAL', 'PUBLICO', 2, 1),
('700090800', 'COLEGIO SAN AGUSTIN INICIAL', 'INICIAL', 'PRIVADO', 2, 1),
('700091000', 'COLEGIO SANTA TERESITA DEL NIÑO JESÚS INICIAL', 'INICIAL', 'PRIVADO', 2, 1),
('700091100', 'COLEGIO SANTA BARBARA INICIAL', 'INICIAL', 'PRIVADO', 4, 1),
('700091500', 'COLEGIO SAN JOSÉ INICIAL', 'INICIAL', 'PRIVADO', 1, 1),
('700091600', 'ESCUELA DE NIVEL INICIAL PORTAL PIE DE PALO. (EX  E.N.I. 48)', 'INICIAL', 'PUBLICO', 4, 1),
('700092000', 'HEBE ALMEIDA DE GARGIULO (Ex ENI 49)', 'INICIAL', 'PUBLICO', 2, 1),
('700092700', 'COLEGIO ARCO IRIS', 'INICIAL', 'PRIVADO', NULL, 1),
('700093000', 'COLEGIO SANTO DOMINGO INICIAL', 'INICIAL', 'PRIVADO', 1, 1),
('700093100', 'ESCUELA DE EDUCACION ESPECIAL MULTIPLE DR. OTONIEL FERNANDEZ(EX E.E.E. MULTIPLE 25 DE MAYO)', 'INICIAL', 'PUBLICO', 5, 1),
('700093600', 'TIEMPO DE SOL (EX ENI 51)', 'INICIAL', 'PUBLICO', 2, 1),
('700093900', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 43', 'INICIAL', 'PUBLICO', 4, 1),
('700094100', 'J.I.N.Z. Nº 1 SARMIENTO - POCITO \"DRA. FRANCISCA RIOS DE PAEZ\"\"', 'INICIAL', 'PUBLICO', 5, 1),
('700094101', 'J.I.N.Z. Nº 1 SARMIENTO \"ENRIQUE LARRETA\" ANEXO', 'INICIAL', 'PUBLICO', 5, 1),
('700094102', 'J.I.N.Z. Nº 1 SARMIENTO \"DR. ANACLETO GIL\" ANEXO', 'INICIAL', 'PUBLICO', 5, 1),
('700094103', 'J.I.N.Z. Nº 1 SARMIENTO \"20 DE JUNIO\" ANEXO', 'INICIAL', 'PUBLICO', 5, 1),
('700094104', 'J.I.N.Z. Nº 1 SARMIENTO \"JUAN EUGENIO SERU\" ANEXO', 'INICIAL', 'PUBLICO', 5, 1),
('700094105', 'J.I.N.Z. Nº 1 SARMIENTO \"MARIANO MORENO\" ANEXO', 'INICIAL', 'PUBLICO', 5, 1),
('700094200', 'J.I.N.Z. Nº 2 CALINGASTA \"LA CAPILLA\"', 'INICIAL', 'PUBLICO', 6, 1),
('700094201', 'J.I.N.Z. Nº 2 CALINGASTA \"JORGE NEWBERY\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700094202', 'J.I.N.Z. Nº 2 CALINGASTA \"JUAN PEDRO ESNAOLA\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700094300', 'J.I.N.Z. Nº 3 JACHAL - ESCUELA \"PROVINCIA DE CHUBUT\"', 'INICIAL', 'PUBLICO', 6, 1),
('700094301', 'J.I.N.Z. Nº 3 JACHAL - ESCUELA \"24 DE SEPTIEMBRE\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700094302', 'J.I.N.Z. Nº 3 JACHAL - ESCUELA \"PEDRO BONIFACIO PALACIOS\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700094303', 'J.I.N.Z. Nº 3 JACHAL - ESCUELA \"ALMIRANTE RAMON GONZALEZ FERNANDEZ\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700094400', '\tPROFESORA MARGARITA RAVIOLI (EX ENI 50)', 'INICIAL', 'PUBLICO', 3, 1),
('700094600', 'RUTH HARF  (Ex ENI Nº 52)', 'INICIAL', 'PUBLICO', 2, 1),
('700094701', 'CENTRO MOVIL DE FORMACION PROFESIONAL ANEXO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700094702', 'CENTRO MOVIL DE FORMACION PROFESIONAL ANEXO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700094703', 'CENTRO MOVIL DE FORMACION PROFESIONAL ANEXO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700094704', 'CENTRO MOVIL DE FORMACION PROFESIONAL ANEXO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700094705', 'CENTRO MOVIL DE FORMACION PROFESIONAL ANEXO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700094706', 'CENTRO MOVIL DE FORMACION PROFESIONAL ANEXO', 'PRIMARIO', 'PUBLICO', 1, 1),
('700095000', 'JUANITO BOSCO', 'INICIAL', 'PRIVADO', 1, 1),
('700095400', 'COLEGIO MERCEDITAS DE SAN MARTIN DE C.E.S.A.P. INICIAL', 'INICIAL', 'PRIVADO', 1, 1),
('700095500', '\tE.N.I. LOS COLIBRÍES (Ex ENI 53)', 'INICIAL', 'PUBLICO', 1, 1),
('700095600', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 54', 'INICIAL', 'PUBLICO', 5, 1),
('700095800', 'COLEGIO DEL PRADO INICIAL', 'INICIAL', 'PRIVADO', 2, 1),
('700096000', 'J.I.N.Z. Nº 16 JACHAL \"JOSE MARMOL\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096001', 'J.I.N.Z. Nº 16 JACHAL \"ONOFRE ILLANES\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096002', 'J.I.N.Z. Nº 16 JACHAL \"BUENAVENTURA LUNA\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096003', 'J.I.N.Z. Nº 16 JACHAL \"DEAN GREGORIO FUNES\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096004', 'J.I.N.Z. Nº 16 JACHAL \"DR. FEDERICO CANTON\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096005', 'J.I.N.Z. Nº 16 JACHAL \"DR. ALFREDO CALCAGNO\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096100', 'J.I.N.Z. Nº 17 JACHAL - FRONTERAS ARGENTINAS', 'INICIAL', 'PUBLICO', 4, 1),
('700096101', 'J.I.N.Z. Nº 17 JACHAL - BIENVENIDA SARMIENTO ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096102', 'J.I.N.Z. Nº 17 JACHAL - PROVINCIA DE LA PAMPA ANEXO', 'INICIAL', 'PUBLICO', 3, 1),
('700096103', 'J.I.N.Z. Nº 17 JACHAL -JUAN MARTIN DE PUEYRREDON ANEXO', 'INICIAL', 'PUBLICO', 5, 1),
('700096200', 'J.I.N.Z. Nº 18 - \"JOSE MATIAS ZAPIOLA\"', 'INICIAL', 'PUBLICO', 6, 1),
('700096201', 'J.I.N.Z. Nº 18 - \" JUAN DE ECHEGARAY\"  ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096202', 'J.I.N.Z. Nº 18 - JACHAL - \"ESTEBAN AGUSTIN GASCON\"  ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096203', 'J.I.N.Z. Nº 18 - JACHAL - \"ANTENOR FLORES VIDAL\"  ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096204', 'J.I.N.Z. Nº 18 - JACHAL - \"LORENZO LUZURIAGA\"  ANEXO', 'INICIAL', 'PUBLICO', 7, 1),
('700096205', 'J.I.N.Z. Nº 18 - JACHAL - \"CAPITAN DE FRAGATA HIPOLITO BUCHARDO\"  ANEXO', 'INICIAL', 'PUBLICO', 7, 1),
('700096206', 'J.I.N.Z. Nº 18 - JACHAL - \"MONSEÑOR TOMAS S. CRUZ\"  ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096300', 'J.I.N.Z. Nº 19 JACHAL - ALEJANDRO FLEMING', 'INICIAL', 'PUBLICO', 6, 1),
('700096301', 'J.I.N.Z. Nº 19 JACHAL - \"MARCOS SASTRE\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096302', 'J.I.N.Z. Nº 19 JACHAL -  \"PRESBITERO P. LOPEZ DEL CAMPO\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096303', 'J.I.N.Z. Nº 19 JACHAL - \"DR. DANIEL SEGUNDO AUBONE\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096304', 'J.I.N.Z. Nº 19 JACHAL - \"RUBEN DARIO\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096305', 'J.I.N.Z. Nº 19 JACHAL - \"AGUSTIN GOMEZ\"  ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096306', 'J.I.N.Z. Nº 19 JACHAL - \"GABRIEL ALBARRACIN\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096307', 'J.I.N.Z. Nº 19 JACHAL -  \"ALBERGUE JOAQUIN V. GONZALEZ\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700096308', 'J.I.N.Z. Nº 19 ANEXO \"JUAN MARIA GUTIERREZ\"', 'INICIAL', 'PUBLICO', 7, 1),
('700096500', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 55', 'INICIAL', 'PUBLICO', 3, 1),
('700096600', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 56', 'INICIAL', 'PUBLICO', 3, 1),
('700097000', 'UNIDAD EDUCATIVA PRIMARIA ADULTOS MOVIL DEL DEPARTAMENTO IGLESIA', 'PRIMARIO', 'PUBLICO', 6, 1),
('700097100', 'Bº EJERCITO DE LOS ANDES', 'PRIMARIO', 'PUBLICO', 2, 1),
('700097200', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 57', 'INICIAL', 'PUBLICO', 5, 1),
('700097300', 'J.I.N.Z. Nº 33 \"PROVINCIA DE JUJUY\" - ALBARDON', 'INICIAL', 'PUBLICO', 3, 1),
('700097301', 'J.I.N.Z. Nº 33 \"BENITA DAVILA DE LOS RIOS\" - ALBARDON ANEXO', 'INICIAL', 'PUBLICO', 3, 1),
('700097302', 'J.I.N.Z. Nº 33 \"VICECOMODORO GUSTAVO MARAMBIO\" - ALBARDON ANEXO', 'INICIAL', 'PUBLICO', 3, 1),
('700097400', 'J.I.N.Z. Nº 34 \"JOSE MARIA PAZ\" - ALBARDON', 'INICIAL', 'PUBLICO', 4, 1),
('700097401', 'J.I.N.Z. Nº 34 \"JUAN GREGORIO DE LAS HERAS\" - ALBARDON ANEXO', 'INICIAL', 'PUBLICO', 4, 1),
('700097402', 'J.I.N.Z. Nº 34 \"EJERCITO DE LOS ANDES\" - ALBARDON ANEXO', 'INICIAL', 'PUBLICO', 4, 1),
('700097403', 'J.I.N.Z. Nº 34 \"REGIMIENTO DE PATRICIOS\" - ALBARDON ANEXO', 'INICIAL', 'PUBLICO', 4, 1),
('700097404', 'J.I.N.Z. Nº 34 \"ADAN QUIROGA\" - ALBARDON ANEXO', 'INICIAL', 'PUBLICO', 4, 1),
('700098200', 'J.I.N.Z. Nº 35 \"REPUBLICA DEL PERÚ\" - SAN MARTIN', 'INICIAL', 'PUBLICO', 4, 1),
('700098201', 'J.I.N.Z. Nº 35 \"PROVINCIA DE NEUQUEN\" - SAN MARTIN ANEXO', 'INICIAL', 'PUBLICO', 4, 1),
('700098202', 'J.I.N.Z. Nº 35 \"JULIO VERNE\" - SAN MARTIN ANEXO', 'INICIAL', 'PUBLICO', 4, 1),
('700098300', 'J.I.N.Z. Nº 42 MARIA LUISA VILLARINO DE DEL CARRIL', 'INICIAL', 'PUBLICO', 1, 1),
('700098301', 'J.I.N.Z. Nº 42 ANEXO PRESIDENTE HIPOLITO IRIGOYEN', 'INICIAL', 'PUBLICO', 2, 1),
('700098302', 'J.I.N.Z. Nº 42 ANEXO FAUSTINA SARMIENTO DE BELIN', 'INICIAL', 'PUBLICO', 2, 1),
('700098303', 'J.I.N.Z. Nº 42 \"CAMPAÑA DEL DESIERTO\" - ANEXO', 'INICIAL', 'PUBLICO', 2, 1),
('700098400', 'J.I.N.Z. Nº 41 CAPITAL FEDERAL', 'INICIAL', 'PUBLICO', 1, 1),
('700098401', 'J.I.N.Z. Nº 41 ANEXO MIGUEL DE AZCUENAGA', 'INICIAL', 'PUBLICO', 1, 1),
('700098402', 'J.I.N.Z. Nº 41 ANEXO COMANDANTE CABOT', 'INICIAL', 'PUBLICO', 1, 1),
('700098403', 'J.I.N.Z. Nº 41 ANEXO MANUEL LAINEZ', 'INICIAL', 'PUBLICO', 1, 1),
('700098404', 'J.I.N.Z. Nº 41 ANEXO TTE 1º FRANCISCO IBAÑEZ', 'INICIAL', 'PUBLICO', 1, 1),
('700098600', 'ESCUELA DE NIVEL INICIAL Nº 58', 'INICIAL', 'PUBLICO', 3, 1),
('700098700', 'JINZ N°46 MERCEDES NIEVAS DE CASTRO', 'INICIAL', 'PUBLICO', 4, 1),
('700098800', 'J.I.N.Z. Nº 38 \"ESCUELA EDUCACION POPULAR\"', 'INICIAL', 'PUBLICO', 3, 1),
('700098801', 'J.I.N.Z. Nº 38 \"JUAN ANTOLIN ZAPATA\" ANEXO', 'INICIAL', 'PUBLICO', 3, 1),
('700098802', 'J.I.N.Z. Nº 38 \"MIGUEL DE CERVANTES SAAVEDRA\" ANEXO', 'INICIAL', 'PUBLICO', 3, 1),
('700098804', 'J.I.N.Z. Nº 38 \"VALLE DE TULUM\" ANEXO', 'INICIAL', 'PUBLICO', 2, 1),
('700098900', 'J.I.N.Z. Nº 39 \"PROVINCIA DE CORRIENTES\"', 'INICIAL', 'PUBLICO', 2, 1),
('700098901', 'J.I.N.Z. Nº 39 \"JOSE PEDRO CORTINEZ\" ANEXO', 'INICIAL', 'PUBLICO', 3, 1),
('700098902', 'J.I.N.Z. Nº 39 \"FRANCISCO DE VILLAGRA\" ANEXO', 'INICIAL', 'PUBLICO', 3, 1),
('700099200', 'PROFESOR EDGARDO MENDOZA (EX ENI 59)', 'INICIAL', 'PUBLICO', 2, 1),
('700099500', 'J.I.N.Z Nº 7 \"BENITO LINCH\"', 'INICIAL', 'PUBLICO', 6, 1),
('700099501', 'J.I.N.Z Nº 7 \" FRAY CAYETANO RODRIGUEZ\" ANEXO', 'INICIAL', 'PUBLICO', 7, 1),
('700099502', 'J.I.N.Z Nº 7 \"BALDOMERO FERNANDEZ MORENO\" ANEXO', 'INICIAL', 'PUBLICO', 6, 1),
('700099508', 'J.I.N.Z Nº 7 ANEXO \"ALBERGUE BUENAVENTURA COLLADO\"', 'INICIAL', 'PUBLICO', 7, 1),
('700099509', 'J.I.N.Z Nº 7 ANEXO \"FRAGATA PRESIDENTE SARMIENTO\"', 'INICIAL', 'PUBLICO', 7, 1),
('700099510', 'J.I.N.Z Nº 7 ANEXO \"ESCUELA DE LA PATRIA\"', 'INICIAL', 'PUBLICO', 7, 1),
('700099600', 'J.I.N.Z. Nº 43 \"POLICIA DE LA PROVINCIA DE SAN JUAN\"', 'INICIAL', 'PUBLICO', 2, 1),
('700099601', 'J.I.N.Z. Nº 43 \"PROVINCIA DE TUCUMAN\" ANEXO', 'INICIAL', 'PUBLICO', 2, 1),
('700099602', 'J.I.N.Z. Nº 43 \"DOCENTES SANJUANINOS\" ANEXO', 'INICIAL', 'PUBLICO', 2, 1),
('700099603', 'J.I.N.Z. Nº 43 \"TIMOTEO MARADONA\" ANEXO', 'INICIAL', 'PUBLICO', 2, 1),
('700099700', 'J.I.N.Z. Nº 44 \"CRUCE DE LOS ANDES\"', 'INICIAL', 'PUBLICO', 2, 1),
('700099701', 'J.I.N.Z. Nº 44 \"INDEPENDENCIA ARGENTINA\" ANEXO', 'INICIAL', 'PUBLICO', 2, 1),
('700099702', 'J.I.N.Z. Nº 44 \" CORNELIO SAAVEDRA\" ANEXO', 'INICIAL', 'PUBLICO', 2, 1),
('700099703', 'J.I.N.Z. Nº 44 \" CORNELIO SAAVEDRA\" ANEXO', 'INICIAL', 'PUBLICO', 2, 1),
('700099900', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 62', 'INICIAL', 'PUBLICO', 2, 1),
('700100000', 'LIHUE (Ex ENI 63)', 'INICIAL', 'PUBLICO', 1, 1),
('700100700', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 61', 'INICIAL', 'PUBLICO', 3, 1),
('700101600', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 60', 'INICIAL', 'PUBLICO', 2, 1),
('700101700', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 64', 'INICIAL', 'PUBLICO', 2, 1),
('700102000', 'J.I.N.Z. Nº 06 \"17 DE AGOSTO\"', 'INICIAL', 'PUBLICO', 6, 1),
('700102001', 'J.I.N.Z. Nº 06 ANEXO JUAN JOSE DE VERTIZ', 'INICIAL', 'PUBLICO', 6, 1),
('700102002', 'J.I.N.Z. Nº 06 ANEXO MANUEL ALBERTI', 'INICIAL', 'PUBLICO', 6, 1),
('700102003', 'J.I.N.Z. Nº 06 ANEXO RICARDO GÜIRALDES', 'INICIAL', 'PUBLICO', 6, 1),
('700102004', 'J.I.N.Z. Nº 06 ANEXO YAPEYÚ', 'INICIAL', 'PUBLICO', 6, 1),
('700102100', 'J.I.N.Z. Nº 5 Albert Einstein', 'INICIAL', 'PUBLICO', 6, 1),
('700102101', 'J.I.N.Z. Nº 5 ANEXO ALB JOSEFA RAMIREZ DE GARCIA', 'INICIAL', 'PUBLICO', 6, 1),
('700102102', 'J.I.N.Z. Nº 5 ANEXO PROFESOR ALEJANDRO MATHUS', 'INICIAL', 'PUBLICO', 6, 1),
('700102103', 'J.I.N.Z. Nº 5 ANEXO JOSE LOMBARDO RADICE', 'INICIAL', 'PUBLICO', 6, 1),
('700102104', 'J.I.N.Z. Nº 5 ANEXO OLEGARIO VICTOR ANDRADE', 'INICIAL', 'PUBLICO', 7, 1),
('700102200', 'J.I.N.Z. Nº 47 TRÁNSITO DE ORO DE RODRIGUEZ', 'INICIAL', 'PUBLICO', 3, 1),
('700102201', 'J.I.N.Z. Nº 47 ANEXO ARTURO CAPDEVILA', 'INICIAL', 'PUBLICO', 3, 1),
('700102202', 'J.I.N.Z.. Nº 47 ANEXO PASO DE VALLE HERMOSO', 'INICIAL', 'PUBLICO', 2, 1),
('700102300', 'J.I.N.Z. Nº 48 DR HONORIO PUEYRREDÓN', 'INICIAL', 'PUBLICO', 2, 1),
('700102301', 'J.I.N.Z. Nº 48 ANEXO REPÚBLICA ORIENTAL DEL URUGUAY', 'INICIAL', 'PUBLICO', 3, 1),
('700102600', 'J.I.N.Z. Nº 8 ESCUELA PRESIDENTE MITRE', 'INICIAL', 'PUBLICO', 6, 1),
('700102601', 'J.I.N.Z. Nº 8 ANEXO ESCUELA ANEXO CACIQUE PISMANTA', 'INICIAL', 'PUBLICO', 6, 1),
('700102602', 'J.I.N.Z. Nº 8 ANEXO ESCUELA DALMACIO VELEZ SARFIELD', 'INICIAL', 'PUBLICO', 6, 1),
('700102603', 'J.I.N.Z. Nº 8 ANEXO ESCUELA ANTÁRTIDA ARGENTINA', 'INICIAL', 'PUBLICO', 6, 1),
('700102604', 'J.I.N.Z. Nº 8 ANEXO ESCUELA HILARIO ASCASUBI', 'INICIAL', 'PUBLICO', 7, 1),
('700102700', 'J.I.N.Z. Nº 13 ESCUELA CAPITAN JUAN EUGENIO DE MALLEA', 'INICIAL', 'PUBLICO', 4, 1),
('700102701', 'J.I.N.Z. Nº 13 ANEXO ESCUELA JOSE ALEJANDRO SEGOVIA', 'INICIAL', 'PUBLICO', 4, 1),
('700102702', 'J.I.N.Z. Nº 13 ANEXO ESCUELA JUAN PASCUAL PRINGLES', 'INICIAL', 'PUBLICO', 4, 1),
('700102703', 'J.I.N.Z. Nº 13 ANEXO ESCUELA CIRILO SARMIENTO', 'INICIAL', 'PUBLICO', 4, 1),
('700102704', 'J.I.N.Z. Nº 13 ANEXO ESCUELA ISLA VICECOMODORO MARAMBIO', 'INICIAL', 'PUBLICO', 4, 1),
('700102800', 'J.I.N.Z. Nº 15 SEDE ESCUELA JUAN LARREA', 'INICIAL', 'PUBLICO', 4, 1),
('700102801', 'J.I.N.Z. Nº 15 ANEXO ESCUELA ANTONIO PULENTA', 'INICIAL', 'PUBLICO', 4, 1),
('700102803', 'J.I.N.Z. Nº 15 ANEXO ESCUELA COMBATE DE SAN LORENZO', 'INICIAL', 'PUBLICO', 4, 1),
('700103000', 'J.I.N.Z. Nº 32 SEDE ESCUELA EUSEBIO SEGUNDO ZAPATA', 'INICIAL', 'PUBLICO', 4, 1),
('700103001', 'J.I.N.Z. Nº 32 ANEXO DR. SATURNINO SALAS', 'INICIAL', 'PUBLICO', 4, 1),
('700103002', 'J.I.N.Z. Nº 32 ANEXO ESCUELA ARTURO BERUTI', 'INICIAL', 'PUBLICO', 4, 1),
('700103003', 'J.I.N.Z. Nº 32 ANEXO ESCUELA ESTEBAN DE LUCA', 'INICIAL', 'PUBLICO', 4, 1),
('700103004', 'J.I.N.Z. Nº 32 ANEXO ESCUELA DR. LUIS AGOTE', 'INICIAL', 'PUBLICO', 3, 1),
('700103005', 'J.I.N.Z. Nº 32 ANEXO ESCUELA PROCESA SARMIENTO DE LENOIR', 'INICIAL', 'PUBLICO', 3, 1),
('700103100', 'J.I.N.Z. Nº 29 SEDE ESCUELA GENERAL MARIANO ACHA', 'INICIAL', 'PUBLICO', 4, 1),
('700103101', 'J.I.N.Z. Nº 29 ANEXO ESCUELA RABINDRANATH TAGORE', 'INICIAL', 'PUBLICO', 3, 1),
('700103102', 'J.I.N.Z. Nº 29 ANEXO ESCUELA JORGE WASHINGTON', 'INICIAL', 'PUBLICO', 3, 1),
('700103103', 'J.I.N.Z. Nº 29 ANEXO ESCUELA JUSTO JOSE DE URQUIZA', 'INICIAL', 'PUBLICO', 3, 1),
('700103200', 'J.I.N.Z. Nº 30 SEDE ESCUELA GOBERNADOR ELOY CAMUS', 'INICIAL', 'PUBLICO', 3, 1),
('700103201', 'J.I.N.Z. Nº 30 ANEXO ESCUELA LAS HORNILLAS', 'INICIAL', 'PUBLICO', 2, 1),
('700103202', 'J.I.N.Z. Nº 30 ANEXO ESCUELA DR. CARLOS SAAVEDRA LAMAS', 'INICIAL', 'PUBLICO', 3, 1),
('700103204', 'J.I.N.Z. Nº 30 ANEXO ESCUELA 12 DE AGOSTO', 'INICIAL', 'PUBLICO', 4, 1),
('700103300', 'J.I.N.Z. Nº 37 SEDE ESCUELA ROQUE SAENZ PEÑA', 'INICIAL', 'PUBLICO', 3, 1),
('700103301', 'J.I.N.Z. Nº 37 ANEXO ESCUELA PEDRO DE MARQUEZ', 'INICIAL', 'PUBLICO', 3, 1),
('700103400', 'J.I.N.Z. Nº 36 SEDE ESCUELA DIÓGENES PERRAMÓN', 'INICIAL', 'PUBLICO', 3, 1),
('700103401', 'J.I.N.Z. Nº 36 ANEXO ANEXO DIÓGENES PERRAMÓN', 'INICIAL', 'PUBLICO', 3, 1),
('700103402', 'J.I.N.Z. Nº 36 ANEXO JUAN JOSÉ CASTELLI', 'INICIAL', 'PUBLICO', 3, 1),
('700103403', 'J.I.N.Z. Nº 36 ANEXO ESCUELA JUAN JOSE CASTELLI T T', 'INICIAL', 'PUBLICO', 3, 1),
('700103500', 'J.I.N.Z. Nº 9 SEDE ESCUELA PROVINCIA DE SAN JUAN', 'INICIAL', 'PUBLICO', 5, 1),
('700103501', 'J.I.N.Z. Nº 9 ANEXO ESCUELA MARTÍN YANZÓN', 'INICIAL', 'PUBLICO', 5, 1),
('700103502', 'J.I.N.Z. Nº 9 ANEXO ESCUELA RAMÓN BARRERA', 'INICIAL', 'PUBLICO', 5, 1),
('700103503', 'J.I.N.Z. Nº 9 ANEXO ESCUELA JUANA DE IBARBOUROU', 'INICIAL', 'PUBLICO', 5, 1),
('700103504', 'J.I.N.Z. Nº 9 ANEXO ESCUELA PASCUAL CHENA', 'INICIAL', 'PUBLICO', 5, 1),
('700103600', 'J.I.N.Z. Nº 4 SEDE ESCUELA FLORENCIA NIGHTINGALE', 'INICIAL', 'PUBLICO', 5, 1),
('700103602', 'J.I.N.Z. Nº 4 ANEXO ESCUELA BARTOLOMÉ DEL BONO', 'INICIAL', 'PUBLICO', 5, 1),
('700103603', 'J.I.N.Z. Nº 4 ANEXO ESCUELA DOMINGO DE ORO', 'INICIAL', 'PUBLICO', 5, 1),
('700103604', 'J.I.N.Z. Nº 4 ANEXO ESCUELA AUTONIMÍA BARTOLOMÉ DEL BONO', 'INICIAL', 'PUBLICO', 5, 1),
('700103700', 'J.I.N.Z. Nº 12 SEDE ESCUELA AUTONOMÍA CIUDAD DE BAILÉN', 'INICIAL', 'PUBLICO', 4, 1),
('700103701', 'J.I.N.Z. Nº 12 ANEXO ESCUELA DOMINGUITO', 'INICIAL', 'PUBLICO', 4, 1),
('700103702', 'J.I.N.Z. Nº 12 ANEXO HORACIO MANN', 'INICIAL', 'PUBLICO', 4, 1),
('700103703', 'J.I.N.Z. Nº 12 ANEXO ESCUELA ERNESTINA ECHEGARAY DE ANDINO', 'INICIAL', 'PUBLICO', 4, 1),
('700103800', 'J.I.N.Z. Nº 14 SEDE ESCUELA DR. BERNARDO HOUSSAY', 'INICIAL', 'PUBLICO', 4, 1),
('700103801', 'J.I.N.Z. Nº 14 ANEXO JUAN JOSÉ PASO', 'INICIAL', 'PUBLICO', 4, 1),
('700103802', 'J.I.N.Z. Nº 14 ANEXO MARY MANN', 'INICIAL', 'PUBLICO', 4, 1),
('700103803', 'J.I.N.Z. Nº 14 ANEXO PROFESOR VICTOR MERCANTE', 'INICIAL', 'PUBLICO', 4, 1),
('700103804', 'J.I.N.Z. Nº 14 ANEXO ESCUELA JUAN HUARPE', 'INICIAL', 'PUBLICO', 4, 1),
('700103900', 'J.I.N.Z. Nº 11 ESCUELA SATURNINO SEGUROLA', 'INICIAL', 'PUBLICO', 5, 1),
('700103901', 'J.I.N.Z. Nº 11 ANEXO ESCUELA JUAN JOSE LARREA', 'INICIAL', 'PUBLICO', 5, 1),
('700103902', 'J.I.N.Z. Nº 11 ANEXO PRESIDENTE MANUEL QUINTANA', 'INICIAL', 'PUBLICO', 6, 1),
('700103903', 'J.I.N.Z. Nº 11 ANEXO ESCUELA ALBERGUE DOMINGO FRENCH', 'INICIAL', 'PUBLICO', 5, 1),
('700104000', 'J.I.N.Z. Nº 10 SEDE ESCUELA JOSE MARIA DEL CARRIL', 'INICIAL', 'PUBLICO', 5, 1),
('700104001', 'J.I.N.Z. Nº 10 SEDE ESCUELA JOSE MARIA DEL CARRIL ANEXO ESCUELA DR CARLOS DONCEL', 'INICIAL', 'PUBLICO', 5, 1),
('700104002', 'J.I.N.Z. Nº 10 SEDE ESCUELA JOSE MARIA DEL CARRIL ANEXO ESCUELA CARLOS GUIDO SPANO', 'INICIAL', 'PUBLICO', 5, 1),
('700104003', 'J.I.N.Z. Nº 10 SEDE ESCUELA JOSE MARIA DEL CARRIL ANEXO ESCUELA PAULO VI', 'INICIAL', 'PUBLICO', 5, 1),
('700104004', 'J.I.N.Z. Nº 10 SEDE ESCUELA JOSE MARIA DEL CARRIL ANEXO ESCUELA CONSTANCIO C VIGIL', 'INICIAL', 'PUBLICO', 5, 1),
('700104005', 'J.I.N.Z. Nº 10 SEDE ESCUELA JOSE MARIA DEL CARRIL ANEXO ESCUELA COMANDANTE LUIS PIEDRABUENA', 'INICIAL', 'PUBLICO', 5, 1),
('700104100', 'J.I.N.Z. Nº 27 SEDE ESCUELA ALBERT SCHWEITZER', 'INICIAL', 'PUBLICO', 4, 1),
('700104101', 'J.I.N.Z. Nº 27 ANEXO ESCUELA CONTRALMIRANTE ELEAZAR VIDELA', 'INICIAL', 'PUBLICO', 4, 1),
('700104102', 'J.I.N.Z. Nº 27 ANEXO ESCUELA LUIS VERNET', 'INICIAL', 'PUBLICO', 4, 1),
('700104103', 'J.I.N.Z. Nº 27 ANEXO ESCUELA BATALLA DE TUCUMAN', 'INICIAL', 'PUBLICO', 4, 1),
('700104200', 'J.I.N.Z. Nº 28 SEDE ESCUELA TIERRA DEL FUEGO', 'INICIAL', 'PUBLICO', 4, 1),
('700104201', 'J.I.N.Z. Nº 28 ANEXO ESCUELA SAN JOSE DE CALASANZ', 'INICIAL', 'PUBLICO', 4, 1),
('700104202', 'J.I.N.Z. Nº 28 ANEXO GRAL. MARTIN MIGUEL DE GÜEMES', 'INICIAL', 'PUBLICO', 4, 1),
('700104300', 'COLEGIO NUESTRA SEÑORA DE LA MEDALLA MILAGROSA INICIAL', 'INICIAL', 'PRIVADO', 1, 1),
('700104400', 'J.I.N.Z. Nº 26 SEDE ESCUELA PEDRO DE VALDIVIA', 'INICIAL', 'PUBLICO', 4, 1),
('700104401', 'J.I.N.Z. Nº 26 ANEXO ESCUELA CARLOS N VERGARA', 'INICIAL', 'PUBLICO', 4, 1),
('700104402', 'J.I.N.Z. Nº 26 ANEXO MAESTRO ARGENTINO', 'INICIAL', 'PUBLICO', 4, 1),
('700104403', 'J.I.N.Z. Nº 26 ANEXO ESCUELA VIRGINIA MORENO DE PARKES', 'INICIAL', 'PUBLICO', 4, 1),
('700104404', 'J.I.N.Z. Nº 26 ANEXO ESCUELA PEDRO ALVAREZ', 'INICIAL', 'PUBLICO', 4, 1),
('700104500', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 65', 'INICIAL', 'PUBLICO', 1, 1),
('700104600', 'ESCUELA DE NIVEL INICIAL PEQUEÑOS GRANADEROS (EX ENI Nº 66)', 'INICIAL', 'PUBLICO', 4, 1),
('700104700', 'ESCUELA DE EDUCACIÓN INTEGRAL PARA ADOLESCENTES Y JÓVENES CON DISCAPACIDAD \"PROF. IVONNE BARUD DE QUATTROPANI\"', 'PRIMARIO', 'PUBLICO', 1, 1),
('700105100', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 70', 'INICIAL', 'PUBLICO', 2, 1),
('700105200', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 67', 'INICIAL', 'PUBLICO', 2, 1),
('700105300', 'RINCONCITO DE LUZ (EX ENI Nº 69)', 'INICIAL', 'PUBLICO', 4, 1),
('700105500', 'J.I.N.Z. Nº 25 SEDE ESCUELA LUIS PASTEUR', 'INICIAL', 'PUBLICO', 6, 1),
('700105501', 'J.I.N.Z. Nº 25 ANEXO ESCUELA 12 DE OCTUBRE', 'INICIAL', 'PUBLICO', 6, 1),
('700105502', 'J.I.N.Z. Nº 25 ANEXO ESCUELA CLOTILDE GUILLEN DE REZZANO', 'INICIAL', 'PUBLICO', 6, 1),
('700105503', 'J.I.N.Z. Nº 25 ANEXO ESCUELA SATURNINO MARÍA DE LASPIUR', 'INICIAL', 'PUBLICO', 6, 1),
('700105504', 'J.I.N.Z. Nº 25 ANEXO ESCUELA BENITO JUAREZ', 'INICIAL', 'PUBLICO', 6, 1),
('700105505', 'J.I.N.Z. Nº 25 ANEXO ESCUELA ALBERGUE TENIENTE CORONEL ALVAREZ CONDARCO', 'INICIAL', 'PUBLICO', 6, 1),
('700105600', 'J.I.N.Z. Nº 24 SEDE ESCUELA MARTÍN GIL', 'INICIAL', 'PUBLICO', 6, 1),
('700105601', 'J.I.N.Z. Nº 24 ANEXO ESCUELA FRANCISCO JAVIER MUÑIZ', 'INICIAL', 'PUBLICO', 6, 1),
('700105602', 'J.I.N.Z. Nº 24 ANEXO ESCUELA REMEDIOS ESCALADA DE SAN MARTÍN', 'INICIAL', 'PUBLICO', 6, 1),
('700105603', 'J.I.N.Z. Nº 24 ANEXO ESCUELA BATALLA DE MAIPU', 'INICIAL', 'PUBLICO', 6, 1),
('700105604', 'J.I.N.Z. Nº 24 ANEXO ESCUELA BATALLA DE CHACABUCO', 'INICIAL', 'PUBLICO', 6, 1),
('700105700', 'J.I.N.Z. Nº 31 SEDE ESCUELA PRESBITERO CAYETANO DE QUIROGA', 'INICIAL', 'PUBLICO', 7, 1),
('700105701', 'J.I.N.Z. Nº 31 ANEXO ESCUELA ALBERGUE HERNANDO DE MAGALLANES', 'INICIAL', 'PUBLICO', 7, 1),
('700105702', 'J.I.N.Z. Nº 31 ANEXO ESCUELA ARMADA ARGENTINA', 'INICIAL', 'PUBLICO', 7, 1),
('700105703', 'J.I.N.Z. Nº 31 ANEXO ESCUELA JOSE IGNACIO FERNANDEZ DE MARADONA', 'INICIAL', 'PUBLICO', 7, 1),
('700105705', 'J.I.N.Z. Nº 31 ANEXO ESCUELA ALBERGUE MARCOS J. GOMEZ NARVAEZ', 'INICIAL', 'PUBLICO', 7, 1),
('700105800', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 71', 'INICIAL', 'PUBLICO', 2, 1),
('700105900', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 68', 'INICIAL', 'PUBLICO', 3, 1),
('700106300', 'BARRIO VALLE GRANDE TURNO MAÑANA', 'PRIMARIO', 'PUBLICO', 3, 1),
('700106400', 'BARRIO VALLE GRANDE TURNO TARDE', 'PRIMARIO', 'PUBLICO', 3, 1),
('700106800', 'COLEGIO LOS ANDES', 'INICIAL', 'PRIVADO', NULL, 1),
('700106900', 'FALUCHO TURNO TARDE', 'PRIMARIO', 'PUBLICO', 6, 1),
('700107100', '\tANTONIO AGULLES (EX ENI 72)', 'INICIAL', 'PUBLICO', 4, 1),
('700107800', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 73', 'INICIAL', 'PUBLICO', 4, 1),
('700108200', 'ESCUELA DE EDUCACION PRIMARIA NUEVO CUYO T.T.', 'PRIMARIO', 'PUBLICO', 3, 1),
('700108300', 'J.I.N.Z. Nº 53 SEDE ESCUELA ANDINA', 'INICIAL', 'PUBLICO', 4, 1),
('700108301', 'J.I.N.Z. Nº 53 ANEXO ESCUELA JUAN DE DIOS FLORES', 'INICIAL', 'PUBLICO', 4, 1),
('700108302', 'J.I.N.Z. Nº 53 ANEXO ESCUELA SUBOFICIAL MAYOR SEGUNDO ATENOR YUBEL', 'INICIAL', 'PUBLICO', 4, 1),
('700108303', 'J.I.N.Z. Nº 53 ANEXO ESCUELA OBISPO ZAPATA', 'INICIAL', 'PUBLICO', 4, 1),
('700110800', 'COLEGIO PARROQUIAL SANTA LUCIA NIVEL INICIAL', 'INICIAL', 'PRIVADO', 1, 1),
('700111000', 'CENTRO DE FORMACION PROFESIONAL DE LA UOCRA', 'PRIMARIO', 'PUBLICO', 1, 1),
('700111200', 'J.I.N.Z. Nº 55 SEDE ESCUELA JOSE MARIA DE LOS RIOS', 'INICIAL', 'PUBLICO', 4, 1),
('700111201', 'J.I.N.Z. Nº 55 ANEXO ESCUELA PEDRO ECHAGÜE', 'INICIAL', 'PUBLICO', 4, 1),
('700111202', 'J.I.N.Z. Nº 55 ANEXO ESCUELA JUAN LAVALLE', 'INICIAL', 'PUBLICO', 4, 1),
('700111203', 'J.I.N.Z. Nº 55 ANEXO ESCUELA ESTANISLAO DEL CAMPO', 'INICIAL', 'PUBLICO', 4, 1),
('700111300', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 76', 'INICIAL', 'PUBLICO', 3, 1),
('700111400', 'J.I.N.Z. Nº 54 SEDE ESCUELA REPUBLICA DEL PARAGUAY', 'INICIAL', 'PUBLICO', 6, 1),
('700111401', 'J.I.N.Z. Nº 54 ANEXO ESCUELA REPUBLICA ARGENTINA', 'INICIAL', 'PUBLICO', 6, 1),
('700111402', 'J.I.N.Z. Nº 54 ANEXO REPUBLICA ARGENTINA ANEXO CASAS VIEJAS', 'INICIAL', 'PUBLICO', 6, 1),
('700111403', 'J.I.N.Z. Nº 54 ANEXO ESCUELA REPUBLICA DE BOLIVIA', 'INICIAL', 'PUBLICO', 7, 1),
('700111404', 'J.I.N.Z. Nº 54 ANEXO ESCUELA ROMULO GIUFFRA', 'INICIAL', 'PUBLICO', 7, 1),
('700111405', 'J.I.N.Z. Nº 54 ANEXO ESCUELA PRESIDENTE JULIO ARGENTINO ROCA', 'INICIAL', 'PUBLICO', 7, 1),
('700111500', 'CENTRO DE INNOVACIÓN EDUCATIVA TECNOLÓGICA \"INFINITO POR DESCUBRIR\"', 'PRIMARIO', 'PUBLICO', 1, 1),
('700111600', 'J.I.N.Z. Nº 58 SEDE ESCUELA COMANDANTE TOMAS ESPORA', 'INICIAL', 'PUBLICO', 5, 1),
('700111601', 'J.I.N.Z. Nº 58 ANEXO ESCUELA MARIE CURIE', 'INICIAL', 'PUBLICO', 5, 1),
('700111602', 'J.I.N.Z. Nº 58 ANEXO ESCUELA PEDRO VALENZUELA', 'INICIAL', 'PUBLICO', 4, 1),
('700111603', 'J.I.N.Z. Nº 58 ANEXO ESCUELA COMODORO RIVADAVIA', 'INICIAL', 'PUBLICO', 5, 1),
('700111604', 'J.I.N.Z. Nº 58 ANEXO ESCUELA RAFAEL ALBERTO ARRIETA', 'INICIAL', 'PUBLICO', 5, 1),
('700111605', 'J.I.N.Z. Nº 58 ANEXO ESCUELA MAR ARGENTINO', 'INICIAL', 'PUBLICO', 5, 1),
('700111700', 'Colegio San Pablo', 'INICIAL', 'PRIVADO', 1, 1),
('700113100', 'J.I.N.Z. Nº 57 - DR. JUAN CARLOS NAVARRO', 'INICIAL', 'PUBLICO', 6, 1),
('700113101', 'J.I.N.Z. Nº 57 - PADRE FEDERICO MAGGIO \"EMER\"', 'INICIAL', 'PUBLICO', 6, 1),
('700113102', 'J.I.N.Z. Nº 57 -  PROVINCIA DE SAN LUIS', 'INICIAL', 'PUBLICO', 7, 1),
('700113103', 'J.I.N.Z. Nº 57 - JUAN IGNACIO GORRITI', 'INICIAL', 'PUBLICO', 5, 1),
('700113400', 'J.I.N.Z. Nº 49 SEDE ESCUELA ROSARIO VERA PEÑALOZA', 'INICIAL', 'PUBLICO', 4, 1),
('700113401', 'J.I.N.Z. Nº 49 ANEXO ESCUELA HECTOR CONTE GRAND', 'INICIAL', 'PUBLICO', 4, 1),
('700113402', 'J.I.N.Z. Nº 49 ANEXO ESCUELA AMERICA', 'INICIAL', 'PUBLICO', 4, 1),
('700113403', 'J.I.N.Z. Nº 49 ANEXO ESCUELA JUANA CARDOSO ABERASTAIN', 'INICIAL', 'PUBLICO', 4, 1),
('700113404', 'J.I.N.Z. Nº 49 ANEXO ESCUELA PROVINCIA DE MISIONES', 'INICIAL', 'PUBLICO', 4, 1),
('700113500', 'J.I.N.Z. Nº 50 SEDE ESCUELA CRISTOBAL COLON', 'INICIAL', 'PUBLICO', 3, 1),
('700113501', 'J.I.N.Z. Nº 50 ANEXO ESCUELA MAESTRO JOSÉ JOAQUÍN BERRUTTI', 'INICIAL', 'PUBLICO', 3, 1),
('700113502', 'J.I.N.Z. Nº 50 ANEXO ESCUELA WALT DISNEY', 'INICIAL', 'PUBLICO', 3, 1),
('700113503', 'J.I.N.Z. Nº 50 ANEXO ESCUELA PATRICIAS MENDOCINAS', 'INICIAL', 'PUBLICO', 3, 1),
('700113504', 'J.I.N.Z. Nº 50 ANEXO ESCUELA PRESIDENTE SARMIENTO', 'INICIAL', 'PUBLICO', 3, 1),
('700113600', 'J.I.N.Z. Nº 51 SEDE ESCUELA PROVINCIA DEL CHACO', 'INICIAL', 'PUBLICO', 2, 1),
('700113601', 'J.I.N.Z. Nº 51 ANEXO ESCUELA CECILIO AVILA', 'INICIAL', 'PUBLICO', 2, 1),
('700113602', 'J.I.N.Z. Nº 51 ANEXO ESCUELA Bº EJERCITO DE LOS ANDES', 'INICIAL', 'PUBLICO', 2, 1),
('700113700', 'J.I.N.Z. Nº 52 SEDE ESCUELA ALAS ARGENTINAS', 'INICIAL', 'PUBLICO', 2, 1),
('700113701', 'J.I.N.Z. Nº 52 ANEXO ESCUELA ALBERGUE JOSE MANUEL ESTRADA', 'INICIAL', 'PUBLICO', 2, 1),
('700113702', 'J.I.N.Z. Nº 52 ANEXO ESCUELA DR NICANOR LARRAIN', 'INICIAL', 'PUBLICO', 2, 1),
('700113703', 'J.I.N.Z. Nº 52 ANEXO ESCUELA DR. PABLO A. RAMELLA', 'INICIAL', 'PUBLICO', 3, 1),
('700113704', 'J.I.N.Z. Nº 52 ANEXO ESCUELA MARCELINO GUARDIOLA', 'INICIAL', 'PUBLICO', 3, 1),
('700114000', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 75', 'INICIAL', 'PUBLICO', 2, 1),
('700114500', 'J.I.N.Z. Nº 56 \"REPUBLICA DE BRASIL', 'INICIAL', 'PUBLICO', 6, 1),
('700114501', 'J.I.N.Z. Nº 56 ANEXO \"SARGENTO CABRAL\"', 'INICIAL', 'PUBLICO', 6, 1),
('700114502', 'J.I.N.Z. Nº 56 ANEXO \"BETHSABE PELLIZA DE ESPINOZA\"', 'INICIAL', 'PUBLICO', 6, 1),
('700114503', 'J.I.N.Z. Nº 56 ANEXO \"DRA. JULIETA LANTERI\"', 'INICIAL', 'PUBLICO', 7, 1),
('700114504', 'J.I.N.Z. Nº 56 ANEXO \"MARIA ELENA VIDART DE MAURIN\"', 'INICIAL', 'PUBLICO', 6, 1),
('700114505', 'J.I.N.Z. Nº 56 ANEXO \"RECONQUISTA DE BUENOS AIRES\"', 'INICIAL', 'PUBLICO', 7, 1),
('700114506', 'J.I.N.Z. Nº 56 ANEXO \"PBRO CARLOS HUGO MEDINA SUAREZ\"', 'INICIAL', 'PUBLICO', 7, 1),
('700114900', 'E.N.I. Nº 80 \"CIELO ALTO\"', 'INICIAL', 'PUBLICO', 4, 1),
('700115000', 'E.N.I. Nº 81', 'INICIAL', 'PUBLICO', 4, 1),
('700115100', 'ESCUELA NOCTURNA \"CEFERINO NAMUNCURÁ\"', 'PRIMARIO', 'PUBLICO', 4, 1),
('700115200', 'E.N.I. Nº 77', 'INICIAL', 'PUBLICO', 1, 1),
('700115300', 'E.N.I. Nº 79', 'INICIAL', 'PUBLICO', 1, 1),
('700115400', 'E.N.I. Nº 78', 'INICIAL', 'PUBLICO', 1, 1),
('700116600', 'ESCUELA DE NIVEL INICIAL (E.N.I.) Nº 82', 'INICIAL', 'PUBLICO', 2, 1),
('700116800', 'ESCUELA DE NIVEL INICIAL Nº 74', 'INICIAL', 'PUBLICO', 6, 1),
('709998601', 'AULAS TALLER MOVIL (ATM) ANEXO 1', 'PRIMARIO', 'PUBLICO', NULL, 1),
('709998602', 'AULAS TALLER MOVIL (ATM) ANEXO 2', 'PRIMARIO', 'PUBLICO', NULL, 1),
('709998603', 'AULAS TALLER MOVIL (ATM) ANEXO 3', 'PRIMARIO', 'PUBLICO', NULL, 1),
('709998604', 'AULAS TALLER MOVIL (ATM) ANEXO 4', 'PRIMARIO', 'PUBLICO', NULL, 1),
('709998605', 'AULAS TALLER MOVIL (ATM) ANEXO 5', 'PRIMARIO', 'PUBLICO', NULL, 1),
('709998606', 'AULAS TALLER MOVIL (ATM) ANEXO 6', 'PRIMARIO', 'PUBLICO', NULL, 1),
('709998607', 'AULAS TALLER MOVIL (ATM) ANEXO 7', 'PRIMARIO', 'PUBLICO', NULL, 1),
('709999000', 'TRASLADO INTERJURIDICCIONAL', 'PRIMARIO', 'PUBLICO', NULL, 1);

-- =====================================================
-- INSERTAR TURNOS DE ESTABLECIMIENTOS
-- =====================================================

-- NOTA: Los turnos se insertarán después con los IDs correctos
-- de establecimientos generados por AUTO_INCREMENT

-- CUE 700000100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (2, 'VESPERTINO');
-- CUE 700000100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (2, 'NOCHE');
-- CUE 700000101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (3, 'VESPERTINO');
-- CUE 700000101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (3, 'NOCHE');
-- CUE 700000200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (4, 'MAÑANA');
-- CUE 700000300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (5, 'VESPERTINO');
-- CUE 700000300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (5, 'NOCHE');
-- CUE 700000400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (6, 'MAÑANA');
-- CUE 700000400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (6, 'TARDE');
-- CUE 700000500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (7, 'MAÑANA');
-- CUE 700000500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (7, 'TARDE');
-- CUE 700000600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (8, 'NOCHE');
-- CUE 700000700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (9, 'MAÑANA');
-- CUE 700000700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (9, 'TARDE');
-- CUE 700000800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (10, 'MAÑANA');
-- CUE 700000800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (10, 'TARDE');
-- CUE 700001000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (11, 'MAÑANA');
-- CUE 700001300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (12, 'MAÑANA');
-- CUE 700001300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (12, 'TARDE');
-- CUE 700001500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (13, 'MAÑANA');
-- CUE 700001500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (13, 'TARDE');
-- CUE 700001700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (14, 'MAÑANA');
-- CUE 700001700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (14, 'TARDE');
-- CUE 700001800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (15, 'VESPERTINO');
-- CUE 700001800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (15, 'NOCHE');
-- CUE 700001801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (16, 'VESPERTINO');
-- CUE 700001801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (16, 'NOCHE');
-- CUE 700001900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (17, 'TARDE');
-- CUE 700002000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (18, 'NOCHE');
-- CUE 700002000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (18, 'VESPERTINO');
-- CUE 700002001: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (19, 'NOCHE');
-- CUE 700002001: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (19, 'VESPERTINO');
-- CUE 700002100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (20, 'MAÑANA');
-- CUE 700002200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (21, 'TARDE');
-- CUE 700002300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (22, 'MAÑANA');
-- CUE 700002400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (23, 'MAÑANA');
-- CUE 700002400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (23, 'TARDE');
-- CUE 700002401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (24, 'MAÑANA');
-- CUE 700002401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (24, 'TARDE');
-- CUE 700002403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (25, 'MAÑANA');
-- CUE 700002404: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (26, 'MAÑANA');
-- CUE 700002404: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (26, 'TARDE');
-- CUE 700002500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (27, 'MAÑANA');
-- CUE 700002600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (28, 'MAÑANA');
-- CUE 700002600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (28, 'TARDE');
-- CUE 700002600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (28, 'INTERTURNO');
-- CUE 700002700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (29, 'VESPERTINO');
-- CUE 700002700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (29, 'NOCHE');
-- CUE 700003000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (30, 'MAÑANA');
-- CUE 700003000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (30, 'TARDE');
-- CUE 700003300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (31, 'MAÑANA');
-- CUE 700003400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (32, 'MAÑANA');
-- CUE 700003400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (32, 'TARDE');
-- CUE 700003500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (33, 'MAÑANA');
-- CUE 700003500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (33, 'TARDE');
-- CUE 700003500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (33, 'INTERTURNO');
-- CUE 700003600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (34, 'MAÑANA');
-- CUE 700003600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (34, 'TARDE');
-- CUE 700003900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (35, 'MAÑANA');
-- CUE 700003900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (35, 'TARDE');
-- CUE 700004200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (36, 'MAÑANA');
-- CUE 700004200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (36, 'TARDE');
-- CUE 700004300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (37, 'VESPERTINO');
-- CUE 700004300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (37, 'NOCHE');
-- CUE 700004400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (38, 'VESPERTINO');
-- CUE 700004400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (38, 'NOCHE');
-- CUE 700004500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (39, 'MAÑANA');
-- CUE 700004500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (39, 'TARDE');
-- CUE 700004500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (39, 'INTERTURNO');
-- CUE 700004600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (40, 'MAÑANA');
-- CUE 700004700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (41, 'MAÑANA');
-- CUE 700004700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (41, 'TARDE');
-- CUE 700004900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (42, 'MAÑANA');
-- CUE 700005000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (43, 'MAÑANA');
-- CUE 700005000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (43, 'TARDE');
-- CUE 700005100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (44, 'VESPERTINO');
-- CUE 700005100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (44, 'NOCHE');
-- CUE 700005400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (45, 'MAÑANA');
-- CUE 700005400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (45, 'TARDE');
-- CUE 700005400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (45, 'JORNADA_COMPLETA');
-- CUE 700005500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (46, 'MAÑANA');
-- CUE 700005500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (46, 'TARDE');
-- CUE 700005700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (47, 'MAÑANA');
-- CUE 700005800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (48, 'MAÑANA');
-- CUE 700005800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (48, 'TARDE');
-- CUE 700005900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (49, 'MAÑANA');
-- CUE 700005900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (49, 'TARDE');
-- CUE 700006000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (50, 'MAÑANA');
-- CUE 700006000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (50, 'TARDE');
-- CUE 700006000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (50, 'INTERTURNO');
-- CUE 700006200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (51, 'VESPERTINO');
-- CUE 700006200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (51, 'NOCHE');
-- CUE 700006300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (52, 'TARDE');
-- CUE 700006500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (53, 'MAÑANA');
-- CUE 700006500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (53, 'TARDE');
-- CUE 700006700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (55, 'MAÑANA');
-- CUE 700006800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (56, 'MAÑANA');
-- CUE 700006800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (56, 'TARDE');
-- CUE 700006800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (56, 'JORNADA_COMPLETA');
-- CUE 700006900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (57, 'MAÑANA');
-- CUE 700006900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (57, 'TARDE');
-- CUE 700006900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (57, 'JORNADA_COMPLETA');
-- CUE 700007100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (58, 'MAÑANA');
-- CUE 700007200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (59, 'MAÑANA');
-- CUE 700007300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (60, 'MAÑANA');
-- CUE 700007300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (60, 'TARDE');
-- CUE 700007500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (61, 'MAÑANA');
-- CUE 700007500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (61, 'TARDE');
-- CUE 700007800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (62, 'MAÑANA');
-- CUE 700007800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (62, 'TARDE');
-- CUE 700007800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (62, 'JORNADA_COMPLETA');
-- CUE 700008000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (63, 'MAÑANA');
-- CUE 700008001: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (64, 'MAÑANA');
-- CUE 700008100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (65, 'MAÑANA');
-- CUE 700008100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (65, 'TARDE');
-- CUE 700008200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (66, 'MAÑANA');
-- CUE 700008200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (66, 'TARDE');
-- CUE 700008300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (67, 'MAÑANA');
-- CUE 700008400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (68, 'MAÑANA');
-- CUE 700008400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (68, 'TARDE');
-- CUE 700008500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (69, 'MAÑANA');
-- CUE 700008700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (70, 'VESPERTINO');
-- CUE 700008701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (71, 'VESPERTINO');
-- CUE 700008900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (72, 'MAÑANA');
-- CUE 700009000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (73, 'MAÑANA');
-- CUE 700009000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (73, 'TARDE');
-- CUE 700009100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (74, 'VESPERTINO');
-- CUE 700009300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (76, 'MAÑANA');
-- CUE 700009600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (77, 'VESPERTINO');
-- CUE 700009700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (78, 'MAÑANA');
-- CUE 700009700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (78, 'TARDE');
-- CUE 700009800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (79, 'MAÑANA');
-- CUE 700009800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (79, 'TARDE');
-- CUE 700009900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (80, 'MAÑANA');
-- CUE 700010000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (81, 'MAÑANA');
-- CUE 700010100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (82, 'MAÑANA');
-- CUE 700010100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (82, 'TARDE');
-- CUE 700010100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (82, 'INTERTURNO');
-- CUE 700010200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (83, 'MAÑANA');
-- CUE 700010300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (84, 'MAÑANA');
-- CUE 700010400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (85, 'NOCHE');
-- CUE 700010500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (86, 'MAÑANA');
-- CUE 700010600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (87, 'MAÑANA');
-- CUE 700010600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (87, 'TARDE');
-- CUE 700010600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (87, 'INTERTURNO');
-- CUE 700010800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (88, 'TARDE');
-- CUE 700010900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (89, 'MAÑANA');
-- CUE 700011100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (90, 'MAÑANA');
-- CUE 700011100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (90, 'TARDE');
-- CUE 700011300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (91, 'MAÑANA');
-- CUE 700011300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (91, 'TARDE');
-- CUE 700011400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (92, 'TARDE');
-- CUE 700011400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (92, 'MAÑANA');
-- CUE 700011500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (93, 'TARDE');
-- CUE 700011600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (94, 'MAÑANA');
-- CUE 700011600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (94, 'TARDE');
-- CUE 700011600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (94, 'INTERTURNO');
-- CUE 700011700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (95, 'MAÑANA');
-- CUE 700011700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (95, 'TARDE');
-- CUE 700011900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (96, 'MAÑANA');
-- CUE 700011900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (96, 'TARDE');
-- CUE 700012000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (97, 'MAÑANA');
-- CUE 700012000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (97, 'TARDE');
-- CUE 700012100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (98, 'TARDE');
-- CUE 700012100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (98, 'MAÑANA');
-- CUE 700012200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (99, 'TARDE');
-- CUE 700012300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (100, 'MAÑANA');
-- CUE 700012400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (101, 'VESPERTINO');
-- CUE 700012400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (101, 'NOCHE');
-- CUE 700012500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (102, 'MAÑANA');
-- CUE 700012500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (102, 'TARDE');
-- CUE 700012800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (103, 'VESPERTINO');
-- CUE 700012800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (103, 'NOCHE');
-- CUE 700013000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (104, 'MAÑANA');
-- CUE 700013100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (105, 'MAÑANA');
-- CUE 700013200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (106, 'MAÑANA');
-- CUE 700013200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (106, 'TARDE');
-- CUE 700013200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (106, 'INTERTURNO');
-- CUE 700013400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (107, 'VESPERTINO');
-- CUE 700013400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (107, 'NOCHE');
-- CUE 700013500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (108, 'MAÑANA');
-- CUE 700013500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (108, 'TARDE');
-- CUE 700013700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (109, 'MAÑANA');
-- CUE 700013800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (110, 'MAÑANA');
-- CUE 700013900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (111, 'MAÑANA');
-- CUE 700014000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (112, 'MAÑANA');
-- CUE 700014000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (112, 'TARDE');
-- CUE 700014100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (113, 'MAÑANA');
-- CUE 700014200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (114, 'MAÑANA');
-- CUE 700014200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (114, 'TARDE');
-- CUE 700014300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (115, 'MAÑANA');
-- CUE 700014400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (116, 'MAÑANA');
-- CUE 700014500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (117, 'MAÑANA');
-- CUE 700014500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (117, 'TARDE');
-- CUE 700014500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (117, 'JORNADA_COMPLETA');
-- CUE 700014600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (118, 'MAÑANA');
-- CUE 700014600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (118, 'TARDE');
-- CUE 700014600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (118, 'JORNADA_COMPLETA');
-- CUE 700014700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (119, 'MAÑANA');
-- CUE 700014700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (119, 'TARDE');
-- CUE 700014700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (119, 'JORNADA_COMPLETA');
-- CUE 700014800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (120, 'MAÑANA');
-- CUE 700014900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (121, 'MAÑANA');
-- CUE 700015000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (122, 'TARDE');
-- CUE 700015100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (123, 'MAÑANA');
-- CUE 700015200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (124, 'MAÑANA');
-- CUE 700015200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (124, 'TARDE');
-- CUE 700015300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (125, 'MAÑANA');
-- CUE 700015400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (126, 'MAÑANA');
-- CUE 700015400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (126, 'TARDE');
-- CUE 700015500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (127, 'MAÑANA');
-- CUE 700015500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (127, 'TARDE');
-- CUE 700015500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (127, 'INTERTURNO');
-- CUE 700015600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (128, 'MAÑANA');
-- CUE 700015600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (128, 'TARDE');
-- CUE 700015601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (129, 'TARDE');
-- CUE 700015602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (130, 'TARDE');
-- CUE 700015700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (131, 'TARDE');
-- CUE 700015800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (132, 'MAÑANA');
-- CUE 700015800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (132, 'TARDE');
-- CUE 700015900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (133, 'MAÑANA');
-- CUE 700015900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (133, 'TARDE');
-- CUE 700016000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (134, 'MAÑANA');
-- CUE 700016100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (135, 'MAÑANA');
-- CUE 700016100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (135, 'TARDE');
-- CUE 700016200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (136, 'VESPERTINO');
-- CUE 700016201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (137, 'VESPERTINO');
-- CUE 700016300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (138, 'MAÑANA');
-- CUE 700016300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (138, 'TARDE');
-- CUE 700016400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (139, 'TARDE');
-- CUE 700016400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (139, 'VESPERTINO');
-- CUE 700016400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (139, 'NOCHE');
-- CUE 700016401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (140, 'VESPERTINO');
-- CUE 700016500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (141, 'VESPERTINO');
-- CUE 700016500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (141, 'NOCHE');
-- CUE 700016700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (142, 'MAÑANA');
-- CUE 700016800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (143, 'MAÑANA');
-- CUE 700016900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (144, 'MAÑANA');
-- CUE 700016900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (144, 'TARDE');
-- CUE 700017000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (145, 'MAÑANA');
-- CUE 700017000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (145, 'TARDE');
-- CUE 700017100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (146, 'MAÑANA');
-- CUE 700017100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (146, 'TARDE');
-- CUE 700017200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (147, 'NOCHE');
-- CUE 700017300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (148, 'MAÑANA');
-- CUE 700017300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (148, 'TARDE');
-- CUE 700017300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (148, 'INTERTURNO');
-- CUE 700017600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (149, 'MAÑANA');
-- CUE 700017700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (150, 'VESPERTINO');
-- CUE 700017700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (150, 'NOCHE');
-- CUE 700017701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (151, 'VESPERTINO');
-- CUE 700017701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (151, 'NOCHE');
-- CUE 700017800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (152, 'MAÑANA');
-- CUE 700018000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (153, 'MAÑANA');
-- CUE 700018100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (154, 'MAÑANA');
-- CUE 700018200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (155, 'MAÑANA');
-- CUE 700018200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (155, 'TARDE');
-- CUE 700018300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (156, 'MAÑANA');
-- CUE 700018400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (157, 'MAÑANA');
-- CUE 700018500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (158, 'MAÑANA');
-- CUE 700018600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (159, 'MAÑANA');
-- CUE 700018600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (159, 'TARDE');
-- CUE 700018600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (159, 'JORNADA_COMPLETA');
-- CUE 700018700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (160, 'MAÑANA');
-- CUE 700018700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (160, 'TARDE');
-- CUE 700018800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (161, 'MAÑANA');
-- CUE 700019000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (162, 'MAÑANA');
-- CUE 700019000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (162, 'JORNADA_COMPLETA');
-- CUE 700019100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (163, 'MAÑANA');
-- CUE 700019100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (163, 'TARDE');
-- CUE 700019100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (163, 'INTERTURNO');
-- CUE 700019200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (164, 'MAÑANA');
-- CUE 700019300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (165, 'MAÑANA');
-- CUE 700019400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (166, 'MAÑANA');
-- CUE 700019400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (166, 'TARDE');
-- CUE 700019500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (167, 'VESPERTINO');
-- CUE 700019501: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (168, 'VESPERTINO');
-- CUE 700019600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (169, 'MAÑANA');
-- CUE 700019600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (169, 'TARDE');
-- CUE 700019700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (170, 'MAÑANA');
-- CUE 700019700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (170, 'TARDE');
-- CUE 700019800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (171, 'MAÑANA');
-- CUE 700019800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (171, 'TARDE');
-- CUE 700019900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (172, 'MAÑANA');
-- CUE 700019900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (172, 'TARDE');
-- CUE 700020000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (173, 'MAÑANA');
-- CUE 700020200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (174, 'MAÑANA');
-- CUE 700020200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (174, 'TARDE');
-- CUE 700020300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (175, 'MAÑANA');
-- CUE 700020400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (176, 'MAÑANA');
-- CUE 700020400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (176, 'TARDE');
-- CUE 700020500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (177, 'MAÑANA');
-- CUE 700020500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (177, 'TARDE');
-- CUE 700020501: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (178, 'MAÑANA');
-- CUE 700020501: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (178, 'TARDE');
-- CUE 700020600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (179, 'MAÑANA');
-- CUE 700020600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (179, 'TARDE');
-- CUE 700020700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (180, 'MAÑANA');
-- CUE 700020700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (180, 'TARDE');
-- CUE 700021000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (181, 'MAÑANA');
-- CUE 700021200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (182, 'VESPERTINO');
-- CUE 700021200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (182, 'NOCHE');
-- CUE 700021201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (183, 'VESPERTINO');
-- CUE 700021201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (183, 'NOCHE');
-- CUE 700021300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (184, 'MAÑANA');
-- CUE 700021300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (184, 'TARDE');
-- CUE 700021400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (185, 'MAÑANA');
-- CUE 700021400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (185, 'TARDE');
-- CUE 700021400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (185, 'INTERTURNO');
-- CUE 700021500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (186, 'TARDE');
-- CUE 700021700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (187, 'MAÑANA');
-- CUE 700021701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (188, 'TARDE');
-- CUE 700021701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (188, 'MAÑANA');
-- CUE 700021702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (189, 'MAÑANA');
-- CUE 700021702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (189, 'TARDE');
-- CUE 700021800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (190, 'MAÑANA');
-- CUE 700021800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (190, 'TARDE');
-- CUE 700022000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (191, 'MAÑANA');
-- CUE 700022000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (191, 'TARDE');
-- CUE 700022100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (192, 'MAÑANA');
-- CUE 700022100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (192, 'TARDE');
-- CUE 700022100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (192, 'INTERTURNO');
-- CUE 700022200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (193, 'MAÑANA');
-- CUE 700022400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (194, 'MAÑANA');
-- CUE 700022400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (194, 'TARDE');
-- CUE 700022500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (195, 'MAÑANA');
-- CUE 700022500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (195, 'TARDE');
-- CUE 700022600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (196, 'MAÑANA');
-- CUE 700022600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (196, 'TARDE');
-- CUE 700022700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (197, 'VESPERTINO');
-- CUE 700022700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (197, 'NOCHE');
-- CUE 700022701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (198, 'NOCHE');
-- CUE 700022702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (199, 'NOCHE');
-- CUE 700023000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (200, 'MAÑANA');
-- CUE 700023100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (201, 'MAÑANA');
-- CUE 700023100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (201, 'INTERTURNO');
-- CUE 700023200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (202, 'MAÑANA');
-- CUE 700023400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (203, 'MAÑANA');
-- CUE 700023400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (203, 'TARDE');
-- CUE 700023500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (204, 'MAÑANA');
-- CUE 700023500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (204, 'TARDE');
-- CUE 700023600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (205, 'MAÑANA');
-- CUE 700023600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (205, 'TARDE');
-- CUE 700023700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (206, 'MAÑANA');
-- CUE 700023700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (206, 'TARDE');
-- CUE 700023800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (207, 'TARDE');
-- CUE 700023900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (208, 'MAÑANA');
-- CUE 700023900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (208, 'TARDE');
-- CUE 700023900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (208, 'INTERTURNO');
-- CUE 700024000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (209, 'VESPERTINO');
-- CUE 700024300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (210, 'VESPERTINO');
-- CUE 700024400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (211, 'VESPERTINO');
-- CUE 700024400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (211, 'NOCHE');
-- CUE 700024401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (212, 'NOCHE');
-- CUE 700024500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (213, 'MAÑANA');
-- CUE 700024500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (213, 'TARDE');
-- CUE 700024800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (214, 'MAÑANA');
-- CUE 700024900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (215, 'MAÑANA');
-- CUE 700025400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (216, 'MAÑANA');
-- CUE 700025400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (216, 'TARDE');
-- CUE 700025400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (216, 'INTERTURNO');
-- CUE 700025500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (217, 'MAÑANA');
-- CUE 700025600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (218, 'MAÑANA');
-- CUE 700025600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (218, 'TARDE');
-- CUE 700025700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (219, 'TARDE');
-- CUE 700026000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (220, 'MAÑANA');
-- CUE 700026000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (220, 'TARDE');
-- CUE 700026100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (221, 'MAÑANA');
-- CUE 700026100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (221, 'TARDE');
-- CUE 700026500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (222, 'MAÑANA');
-- CUE 700026500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (222, 'TARDE');
-- CUE 700026900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (223, 'TARDE');
-- CUE 700027100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (224, 'MAÑANA');
-- CUE 700027100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (224, 'TARDE');
-- CUE 700027200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (225, 'VESPERTINO');
-- CUE 700027200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (225, 'NOCHE');
-- CUE 700027201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (226, 'VESPERTINO');
-- CUE 700027201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (226, 'NOCHE');
-- CUE 700027300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (227, 'MAÑANA');
-- CUE 700027300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (227, 'TARDE');
-- CUE 700027400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (228, 'MAÑANA');
-- CUE 700027500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (229, 'TARDE');
-- CUE 700027800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (230, 'MAÑANA');
-- CUE 700027800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (230, 'TARDE');
-- CUE 700028000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (231, 'MAÑANA');
-- CUE 700028200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (232, 'MAÑANA');
-- CUE 700028200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (232, 'TARDE');
-- CUE 700028300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (233, 'MAÑANA');
-- CUE 700028300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (233, 'TARDE');
-- CUE 700028500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (234, 'VESPERTINO');
-- CUE 700028500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (234, 'NOCHE');
-- CUE 700028600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (235, 'MAÑANA');
-- CUE 700028600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (235, 'INTERTURNO');
-- CUE 700029000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (236, 'VESPERTINO');
-- CUE 700029000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (236, 'NOCHE');
-- CUE 700029100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (237, 'MAÑANA');
-- CUE 700029100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (237, 'TARDE');
-- CUE 700029100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (237, 'INTERTURNO');
-- CUE 700029200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (238, 'MAÑANA');
-- CUE 700029200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (238, 'TARDE');
-- CUE 700029400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (239, 'MAÑANA');
-- CUE 700029400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (239, 'TARDE');
-- CUE 700029400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (239, 'INTERTURNO');
-- CUE 700029500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (240, 'MAÑANA');
-- CUE 700029500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (240, 'TARDE');
-- CUE 700029600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (241, 'MAÑANA');
-- CUE 700029600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (241, 'TARDE');
-- CUE 700030000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (242, 'MAÑANA');
-- CUE 700030000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (242, 'TARDE');
-- CUE 700030100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (243, 'MAÑANA');
-- CUE 700030100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (243, 'TARDE');
-- CUE 700030200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (244, 'MAÑANA');
-- CUE 700030300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (245, 'MAÑANA');
-- CUE 700030300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (245, 'TARDE');
-- CUE 700030900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (246, 'MAÑANA');
-- CUE 700031100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (247, 'MAÑANA');
-- CUE 700031300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (248, 'MAÑANA');
-- CUE 700031400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (249, 'VESPERTINO');
-- CUE 700031400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (249, 'NOCHE');
-- CUE 700031401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (250, 'VESPERTINO');
-- CUE 700031401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (250, 'NOCHE');
-- CUE 700031700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (251, 'TARDE');
-- CUE 700031800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (252, 'MAÑANA');
-- CUE 700031900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (253, 'MAÑANA');
-- CUE 700031900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (253, 'TARDE');
-- CUE 700032000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (254, 'MAÑANA');
-- CUE 700032000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (254, 'TARDE');
-- CUE 700032300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (255, 'TARDE');
-- CUE 700032400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (256, 'MAÑANA');
-- CUE 700032500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (257, 'MAÑANA');
-- CUE 700032500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (257, 'TARDE');
-- CUE 700032500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (257, 'INTERTURNO');
-- CUE 700032600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (258, 'NOCHE');
-- CUE 700032600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (258, 'VESPERTINO');
-- CUE 700032601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (259, 'VESPERTINO');
-- CUE 700032601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (259, 'NOCHE');
-- CUE 700032602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (260, 'VESPERTINO');
-- CUE 700032800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (261, 'MAÑANA');
-- CUE 700032800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (261, 'TARDE');
-- CUE 700032900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (262, 'MAÑANA');
-- CUE 700032900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (262, 'TARDE');
-- CUE 700033000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (263, 'MAÑANA');
-- CUE 700033000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (263, 'TARDE');
-- CUE 700033200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (264, 'VESPERTINO');
-- CUE 700033200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (264, 'NOCHE');
-- CUE 700033300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (265, 'MAÑANA');
-- CUE 700033300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (265, 'TARDE');
-- CUE 700033400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (266, 'MAÑANA');
-- CUE 700033400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (266, 'TARDE');
-- CUE 700033500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (267, 'MAÑANA');
-- CUE 700033500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (267, 'TARDE');
-- CUE 700033500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (267, 'INTERTURNO');
-- CUE 700033600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (268, 'MAÑANA');
-- CUE 700033600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (268, 'TARDE');
-- CUE 700033700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (269, 'MAÑANA');
-- CUE 700033700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (269, 'TARDE');
-- CUE 700033900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (270, 'MAÑANA');
-- CUE 700033900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (270, 'TARDE');
-- CUE 700034000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (271, 'MAÑANA');
-- CUE 700034100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (272, 'MAÑANA');
-- CUE 700034100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (272, 'TARDE');
-- CUE 700034200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (273, 'MAÑANA');
-- CUE 700034200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (273, 'TARDE');
-- CUE 700034200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (273, 'INTERTURNO');
-- CUE 700034300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (274, 'MAÑANA');
-- CUE 700034300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (274, 'TARDE');
-- CUE 700034400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (275, 'TARDE');
-- CUE 700034500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (276, 'MAÑANA');
-- CUE 700034600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (277, 'NOCHE');
-- CUE 700034800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (278, 'TARDE');
-- CUE 700034900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (279, 'MAÑANA');
-- CUE 700034900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (279, 'TARDE');
-- CUE 700035000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (280, 'MAÑANA');
-- CUE 700035200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (281, 'MAÑANA');
-- CUE 700035200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (281, 'TARDE');
-- CUE 700035300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (282, 'MAÑANA');
-- CUE 700035300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (282, 'TARDE');
-- CUE 700035400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (283, 'MAÑANA');
-- CUE 700035400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (283, 'TARDE');
-- CUE 700035400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (283, 'INTERTURNO');
-- CUE 700035500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (284, 'MAÑANA');
-- CUE 700035500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (284, 'TARDE');
-- CUE 700035600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (285, 'MAÑANA');
-- CUE 700035600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (285, 'TARDE');
-- CUE 700035700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (286, 'MAÑANA');
-- CUE 700035700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (286, 'TARDE');
-- CUE 700035900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (287, 'MAÑANA');
-- CUE 700036000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (288, 'MAÑANA');
-- CUE 700036000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (288, 'TARDE');
-- CUE 700036000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (288, 'INTERTURNO');
-- CUE 700036100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (289, 'MAÑANA');
-- CUE 700036100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (289, 'TARDE');
-- CUE 700036200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (290, 'MAÑANA');
-- CUE 700036200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (290, 'TARDE');
-- CUE 700036300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (291, 'MAÑANA');
-- CUE 700036300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (291, 'TARDE');
-- CUE 700036400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (292, 'MAÑANA');
-- CUE 700036400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (292, 'TARDE');
-- CUE 700036500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (293, 'MAÑANA');
-- CUE 700036500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (293, 'TARDE');
-- CUE 700036600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (294, 'TARDE');
-- CUE 700036700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (295, 'MAÑANA');
-- CUE 700036900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (296, 'MAÑANA');
-- CUE 700036900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (296, 'TARDE');
-- CUE 700037000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (297, 'MAÑANA');
-- CUE 700037000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (297, 'TARDE');
-- CUE 700037000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (297, 'NOCHE');
-- CUE 700037200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (298, 'TARDE');
-- CUE 700037300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (299, 'MAÑANA');
-- CUE 700037300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (299, 'TARDE');
-- CUE 700037400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (300, 'MAÑANA');
-- CUE 700037400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (300, 'TARDE');
-- CUE 700037500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (301, 'MAÑANA');
-- CUE 700037500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (301, 'TARDE');
-- CUE 700037600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (302, 'MAÑANA');
-- CUE 700037600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (302, 'TARDE');
-- CUE 700037700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (303, 'MAÑANA');
-- CUE 700037700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (303, 'TARDE');
-- CUE 700037800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (304, 'MAÑANA');
-- CUE 700037800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (304, 'TARDE');
-- CUE 700038000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (305, 'NOCHE');
-- CUE 700038100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (306, 'MAÑANA');
-- CUE 700038100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (306, 'TARDE');
-- CUE 700038200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (307, 'MAÑANA');
-- CUE 700038200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (307, 'TARDE');
-- CUE 700038300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (308, 'MAÑANA');
-- CUE 700038400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (309, 'TARDE');
-- CUE 700038500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (310, 'MAÑANA');
-- CUE 700038500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (310, 'TARDE');
-- CUE 700038600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (311, 'MAÑANA');
-- CUE 700038700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (312, 'MAÑANA');
-- CUE 700038700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (312, 'TARDE');
-- CUE 700038800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (313, 'TARDE');
-- CUE 700038800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (313, 'MAÑANA');
-- CUE 700038900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (314, 'MAÑANA');
-- CUE 700038900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (314, 'TARDE');
-- CUE 700039000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (315, 'MAÑANA');
-- CUE 700039000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (315, 'TARDE');
-- CUE 700039100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (316, 'TARDE');
-- CUE 700039400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (317, 'MAÑANA');
-- CUE 700039500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (318, 'MAÑANA');
-- CUE 700039500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (318, 'TARDE');
-- CUE 700039500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (318, 'INTERTURNO');
-- CUE 700039600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (319, 'TARDE');
-- CUE 700039700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (320, 'MAÑANA');
-- CUE 700039700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (320, 'TARDE');
-- CUE 700039700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (320, 'INTERTURNO');
-- CUE 700039800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (321, 'MAÑANA');
-- CUE 700039800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (321, 'TARDE');
-- CUE 700039800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (321, 'VESPERTINO');
-- CUE 700039800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (321, 'INTERTURNO');
-- CUE 700040000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (322, 'VESPERTINO');
-- CUE 700040000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (322, 'NOCHE');
-- CUE 700040001: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (323, 'VESPERTINO');
-- CUE 700040100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (324, 'TARDE');
-- CUE 700040200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (325, 'MAÑANA');
-- CUE 700040600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (326, 'MAÑANA');
-- CUE 700040600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (326, 'TARDE');
-- CUE 700040600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (326, 'JORNADA_COMPLETA');
-- CUE 700040700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (327, 'MAÑANA');
-- CUE 700040700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (327, 'TARDE');
-- CUE 700040800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (328, 'MAÑANA');
-- CUE 700041000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (329, 'MAÑANA');
-- CUE 700041200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (330, 'MAÑANA');
-- CUE 700041200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (330, 'TARDE');
-- CUE 700041200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (330, 'NOCHE');
-- CUE 700041300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (331, 'MAÑANA');
-- CUE 700041300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (331, 'TARDE');
-- CUE 700041400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (332, 'MAÑANA');
-- CUE 700041400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (332, 'TARDE');
-- CUE 700041401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (333, 'MAÑANA');
-- CUE 700041500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (334, 'MAÑANA');
-- CUE 700041500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (334, 'TARDE');
-- CUE 700041600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (335, 'VESPERTINO');
-- CUE 700041600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (335, 'NOCHE');
-- CUE 700041601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (336, 'VESPERTINO');
-- CUE 700041601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (336, 'NOCHE');
-- CUE 700041700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (337, 'MAÑANA');
-- CUE 700041700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (337, 'TARDE');
-- CUE 700041700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (337, 'JORNADA_COMPLETA');
-- CUE 700041800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (338, 'TARDE');
-- CUE 700041900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (339, 'MAÑANA');
-- CUE 700041900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (339, 'TARDE');
-- CUE 700042000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (340, 'MAÑANA');
-- CUE 700042100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (341, 'MAÑANA');
-- CUE 700042100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (341, 'TARDE');
-- CUE 700042200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (342, 'MAÑANA');
-- CUE 700042400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (343, 'TARDE');
-- CUE 700042500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (344, 'TARDE');
-- CUE 700042600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (345, 'MAÑANA');
-- CUE 700042600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (345, 'TARDE');
-- CUE 700042700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (346, 'MAÑANA');
-- CUE 700042700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (346, 'TARDE');
-- CUE 700042700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (346, 'INTERTURNO');
-- CUE 700043000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (347, 'MAÑANA');
-- CUE 700043000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (347, 'TARDE');
-- CUE 700043000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (347, 'INTERTURNO');
-- CUE 700043100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (348, 'MAÑANA');
-- CUE 700043100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (348, 'TARDE');
-- CUE 700043200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (349, 'TARDE');
-- CUE 700043300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (350, 'MAÑANA');
-- CUE 700043400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (351, 'MAÑANA');
-- CUE 700043400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (351, 'TARDE');
-- CUE 700043500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (352, 'TARDE');
-- CUE 700043600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (353, 'MAÑANA');
-- CUE 700043600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (353, 'JORNADA_COMPLETA');
-- CUE 700043700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (354, 'MAÑANA');
-- CUE 700043700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (354, 'TARDE');
-- CUE 700043800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (355, 'MAÑANA');
-- CUE 700043800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (355, 'TARDE');
-- CUE 700044000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (356, 'MAÑANA');
-- CUE 700044300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (357, 'MAÑANA');
-- CUE 700044400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (358, 'MAÑANA');
-- CUE 700044400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (358, 'TARDE');
-- CUE 700044500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (359, 'MAÑANA');
-- CUE 700044600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (360, 'MAÑANA');
-- CUE 700044600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (360, 'TARDE');
-- CUE 700044700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (361, 'MAÑANA');
-- CUE 700044700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (361, 'TARDE');
-- CUE 700044800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (362, 'MAÑANA');
-- CUE 700044800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (362, 'TARDE');
-- CUE 700044800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (362, 'JORNADA_COMPLETA');
-- CUE 700044800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (362, 'NOCHE');
-- CUE 700045000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (363, 'MAÑANA');
-- CUE 700045200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (364, 'MAÑANA');
-- CUE 700045200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (364, 'TARDE');
-- CUE 700045400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (365, 'VESPERTINO');
-- CUE 700045400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (365, 'NOCHE');
-- CUE 700045600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (366, 'TARDE');
-- CUE 700045800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (367, 'MAÑANA');
-- CUE 700045800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (367, 'TARDE');
-- CUE 700045900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (368, 'TARDE');
-- CUE 700046000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (369, 'MAÑANA');
-- CUE 700046000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (369, 'TARDE');
-- CUE 700046400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (370, 'MAÑANA');
-- CUE 700046400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (370, 'TARDE');
-- CUE 700046400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (370, 'JORNADA_COMPLETA');
-- CUE 700046500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (371, 'VESPERTINO');
-- CUE 700046600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (372, 'MAÑANA');
-- CUE 700046600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (372, 'TARDE');
-- CUE 700046600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (372, 'JORNADA_COMPLETA');
-- CUE 700046700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (373, 'MAÑANA');
-- CUE 700046800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (374, 'JORNADA_COMPLETA');
-- CUE 700046900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (375, 'MAÑANA');
-- CUE 700046900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (375, 'TARDE');
-- CUE 700046900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (375, 'JORNADA_COMPLETA');
-- CUE 700047000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (376, 'MAÑANA');
-- CUE 700047000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (376, 'TARDE');
-- CUE 700047000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (376, 'JORNADA_COMPLETA');
-- CUE 700047100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (377, 'MAÑANA');
-- CUE 700047100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (377, 'TARDE');
-- CUE 700047300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (378, 'MAÑANA');
-- CUE 700047500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (379, 'MAÑANA');
-- CUE 700047700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (380, 'TARDE');
-- CUE 700048000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (381, 'MAÑANA');
-- CUE 700048100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (382, 'MAÑANA');
-- CUE 700048100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (382, 'TARDE');
-- CUE 700048100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (382, 'JORNADA_COMPLETA');
-- CUE 700048200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (383, 'MAÑANA');
-- CUE 700048200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (383, 'TARDE');
-- CUE 700048300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (384, 'MAÑANA');
-- CUE 700048400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (385, 'MAÑANA');
-- CUE 700048400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (385, 'TARDE');
-- CUE 700048400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (385, 'JORNADA_COMPLETA');
-- CUE 700048500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (386, 'MAÑANA');
-- CUE 700048500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (386, 'TARDE');
-- CUE 700048600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (387, 'MAÑANA');
-- CUE 700048700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (388, 'TARDE');
-- CUE 700048900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (389, 'MAÑANA');
-- CUE 700048900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (389, 'TARDE');
-- CUE 700049000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (390, 'MAÑANA');
-- CUE 700049200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (391, 'MAÑANA');
-- CUE 700049300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (392, 'VESPERTINO');
-- CUE 700049500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (393, 'MAÑANA');
-- CUE 700049600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (394, 'MAÑANA');
-- CUE 700049600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (394, 'TARDE');
-- CUE 700049800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (395, 'MAÑANA');
-- CUE 700049800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (395, 'TARDE');
-- CUE 700049800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (395, 'INTERTURNO');
-- CUE 700049900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (396, 'TARDE');
-- CUE 700050000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (397, 'MAÑANA');
-- CUE 700050000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (397, 'TARDE');
-- CUE 700050000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (397, 'INTERTURNO');
-- CUE 700050200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (398, 'MAÑANA');
-- CUE 700050400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (399, 'VESPERTINO');
-- CUE 700050500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (400, 'MAÑANA');
-- CUE 700050500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (400, 'TARDE');
-- CUE 700050700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (401, 'MAÑANA');
-- CUE 700050700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (401, 'TARDE');
-- CUE 700051000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (402, 'MAÑANA');
-- CUE 700051000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (402, 'TARDE');
-- CUE 700051100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (403, 'MAÑANA');
-- CUE 700051100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (403, 'TARDE');
-- CUE 700051300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (405, 'MAÑANA');
-- CUE 700051300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (405, 'TARDE');
-- CUE 700051400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (406, 'MAÑANA');
-- CUE 700051400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (406, 'TARDE');
-- CUE 700051400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (406, 'INTERTURNO');
-- CUE 700051500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (407, 'MAÑANA');
-- CUE 700051500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (407, 'TARDE');
-- CUE 700051700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (408, 'MAÑANA');
-- CUE 700051700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (408, 'TARDE');
-- CUE 700051800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (409, 'MAÑANA');
-- CUE 700051900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (410, 'MAÑANA');
-- CUE 700051900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (410, 'TARDE');
-- CUE 700052000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (411, 'MAÑANA');
-- CUE 700052000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (411, 'TARDE');
-- CUE 700052200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (412, 'JORNADA_COMPLETA');
-- CUE 700052300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (413, 'MAÑANA');
-- CUE 700052300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (413, 'TARDE');
-- CUE 700052400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (414, 'MAÑANA');
-- CUE 700052500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (415, 'MAÑANA');
-- CUE 700052500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (415, 'TARDE');
-- CUE 700052600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (416, 'TARDE');
-- CUE 700052700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (417, 'MAÑANA');
-- CUE 700052700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (417, 'TARDE');
-- CUE 700052800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (418, 'MAÑANA');
-- CUE 700052800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (418, 'TARDE');
-- CUE 700052900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (419, 'MAÑANA');
-- CUE 700052900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (419, 'TARDE');
-- CUE 700053000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (420, 'MAÑANA');
-- CUE 700053000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (420, 'TARDE');
-- CUE 700053100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (421, 'MAÑANA');
-- CUE 700053100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (421, 'TARDE');
-- CUE 700053100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (421, 'INTERTURNO');
-- CUE 700053101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (422, 'MAÑANA');
-- CUE 700053101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (422, 'TARDE');
-- CUE 700053400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (424, 'MAÑANA');
-- CUE 700053500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (425, 'MAÑANA');
-- CUE 700053500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (425, 'TARDE');
-- CUE 700053600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (426, 'MAÑANA');
-- CUE 700053600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (426, 'TARDE');
-- CUE 700053600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (426, 'JORNADA_COMPLETA');
-- CUE 700053600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (426, 'VESPERTINO');
-- CUE 700053700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (427, 'MAÑANA');
-- CUE 700053800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (428, 'MAÑANA');
-- CUE 700053800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (428, 'TARDE');
-- CUE 700053900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (429, 'MAÑANA');
-- CUE 700054000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (430, 'MAÑANA');
-- CUE 700054000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (430, 'TARDE');
-- CUE 700054100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (431, 'MAÑANA');
-- CUE 700054200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (432, 'MAÑANA');
-- CUE 700054300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (433, 'MAÑANA');
-- CUE 700054400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (434, 'MAÑANA');
-- CUE 700054600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (435, 'MAÑANA');
-- CUE 700054600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (435, 'TARDE');
-- CUE 700054800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (436, 'VESPERTINO');
-- CUE 700054800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (436, 'NOCHE');
-- CUE 700054801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (437, 'MAÑANA');
-- CUE 700054801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (437, 'VESPERTINO');
-- CUE 700054802: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (438, 'MAÑANA');
-- CUE 700054802: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (438, 'VESPERTINO');
-- CUE 700054900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (439, 'MAÑANA');
-- CUE 700055000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (440, 'TARDE');
-- CUE 700055200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (441, 'MAÑANA');
-- CUE 700055200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (441, 'TARDE');
-- CUE 700055600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (442, 'MAÑANA');
-- CUE 700055600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (442, 'TARDE');
-- CUE 700055600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (442, 'INTERTURNO');
-- CUE 700055700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (443, 'TARDE');
-- CUE 700055900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (444, 'MAÑANA');
-- CUE 700055900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (444, 'TARDE');
-- CUE 700056000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (445, 'MAÑANA');
-- CUE 700056100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (446, 'MAÑANA');
-- CUE 700056200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (447, 'TARDE');
-- CUE 700056300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (448, 'MAÑANA');
-- CUE 700056300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (448, 'TARDE');
-- CUE 700056400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (449, 'VESPERTINO');
-- CUE 700056400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (449, 'NOCHE');
-- CUE 700056500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (450, 'MAÑANA');
-- CUE 700056500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (450, 'TARDE');
-- CUE 700056700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (451, 'MAÑANA');
-- CUE 700056800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (452, 'MAÑANA');
-- CUE 700056800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (452, 'INTERTURNO');
-- CUE 700056900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (453, 'MAÑANA');
-- CUE 700056900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (453, 'TARDE');
-- CUE 700057200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (454, 'MAÑANA');
-- CUE 700057200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (454, 'TARDE');
-- CUE 700057300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (455, 'MAÑANA');
-- CUE 700057300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (455, 'TARDE');
-- CUE 700057400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (456, 'MAÑANA');
-- CUE 700057500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (457, 'MAÑANA');
-- CUE 700057500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (457, 'TARDE');
-- CUE 700057600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (458, 'MAÑANA');
-- CUE 700057700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (459, 'MAÑANA');
-- CUE 700057700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (459, 'TARDE');
-- CUE 700057800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (460, 'MAÑANA');
-- CUE 700057800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (460, 'TARDE');
-- CUE 700057800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (460, 'INTERTURNO');
-- CUE 700058000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (461, 'MAÑANA');
-- CUE 700058000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (461, 'TARDE');
-- CUE 700058100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (462, 'TARDE');
-- CUE 700058200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (463, 'TARDE');
-- CUE 700058300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (464, 'MAÑANA');
-- CUE 700058400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (465, 'TARDE');
-- CUE 700058500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (466, 'MAÑANA');
-- CUE 700058500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (466, 'TARDE');
-- CUE 700058600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (467, 'TARDE');
-- CUE 700058700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (468, 'TARDE');
-- CUE 700058800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (469, 'MAÑANA');
-- CUE 700058800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (469, 'TARDE');
-- CUE 700058900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (470, 'MAÑANA');
-- CUE 700058900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (470, 'TARDE');
-- CUE 700059000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (471, 'MAÑANA');
-- CUE 700059000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (471, 'TARDE');
-- CUE 700059000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (471, 'INTERTURNO');
-- CUE 700059100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (472, 'VESPERTINO');
-- CUE 700059100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (472, 'NOCHE');
-- CUE 700059200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (473, 'MAÑANA');
-- CUE 700059400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (474, 'MAÑANA');
-- CUE 700059400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (474, 'TARDE');
-- CUE 700059500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (475, 'MAÑANA');
-- CUE 700059500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (475, 'TARDE');
-- CUE 700059600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (476, 'TARDE');
-- CUE 700059700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (477, 'VESPERTINO');
-- CUE 700059700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (477, 'NOCHE');
-- CUE 700059900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (478, 'TARDE');
-- CUE 700060000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (479, 'MAÑANA');
-- CUE 700060000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (479, 'JORNADA_COMPLETA');
-- CUE 700060100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (480, 'MAÑANA');
-- CUE 700060300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (481, 'MAÑANA');
-- CUE 700060301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (482, 'MAÑANA');
-- CUE 700060301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (482, 'TARDE');
-- CUE 700060400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (483, 'MAÑANA');
-- CUE 700060400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (483, 'TARDE');
-- CUE 700060500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (484, 'MAÑANA');
-- CUE 700060500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (484, 'TARDE');
-- CUE 700060500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (484, 'INTERTURNO');
-- CUE 700060700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (485, 'MAÑANA');
-- CUE 700060700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (485, 'TARDE');
-- CUE 700060800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (486, 'MAÑANA');
-- CUE 700060800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (486, 'TARDE');
-- CUE 700060800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (486, 'VESPERTINO');
-- CUE 700060800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (486, 'NOCHE');
-- CUE 700060900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (487, 'MAÑANA');
-- CUE 700060900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (487, 'TARDE');
-- CUE 700061200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (488, 'TARDE');
-- CUE 700061300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (489, 'MAÑANA');
-- CUE 700061300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (489, 'TARDE');
-- CUE 700061400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (490, 'MAÑANA');
-- CUE 700061400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (490, 'TARDE');
-- CUE 700061500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (491, 'MAÑANA');
-- CUE 700061500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (491, 'TARDE');
-- CUE 700062000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (492, 'MAÑANA');
-- CUE 700062400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (493, 'TARDE');
-- CUE 700062800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (494, 'MAÑANA');
-- CUE 700063100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (495, 'MAÑANA');
-- CUE 700063100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (495, 'TARDE');
-- CUE 700063100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (495, 'INTERTURNO');
-- CUE 700063300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (496, 'MAÑANA');
-- CUE 700063300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (496, 'TARDE');
-- CUE 700064000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (497, 'MAÑANA');
-- CUE 700064000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (497, 'TARDE');
-- CUE 700064100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (498, 'VESPERTINO');
-- CUE 700064100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (498, 'NOCHE');
-- CUE 700064300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (499, 'MAÑANA');
-- CUE 700064400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (500, 'TARDE');
-- CUE 700064500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (501, 'MAÑANA');
-- CUE 700064600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (502, 'MAÑANA');
-- CUE 700064600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (502, 'TARDE');
-- CUE 700065000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (503, 'MAÑANA');
-- CUE 700065000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (503, 'TARDE');
-- CUE 700065200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (504, 'TARDE');
-- CUE 700065200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (504, 'NOCHE');
-- CUE 700065200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (504, 'MAÑANA');
-- CUE 700065201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (505, 'TARDE');
-- CUE 700065700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (506, 'MAÑANA');
-- CUE 700066100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (508, 'MAÑANA');
-- CUE 700066100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (508, 'VESPERTINO');
-- CUE 700066100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (508, 'TARDE');
-- CUE 700066107: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (509, 'VESPERTINO');
-- CUE 700066116: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (510, 'MAÑANA');
-- CUE 700066200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (511, 'VESPERTINO');
-- CUE 700066202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (512, 'VESPERTINO');
-- CUE 700066206: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (513, 'MAÑANA');
-- CUE 700066206: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (513, 'VESPERTINO');
-- CUE 700066300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (514, 'MAÑANA');
-- CUE 700066300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (514, 'VESPERTINO');
-- CUE 700066313: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (515, 'TARDE');
-- CUE 700066326: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (516, 'TARDE');
-- CUE 700066400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (517, 'VESPERTINO');
-- CUE 700066402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (518, 'VESPERTINO');
-- CUE 700066405: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (519, 'VESPERTINO');
-- CUE 700066405: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (519, 'MAÑANA');
-- CUE 700066418: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (520, 'TARDE');
-- CUE 700066418: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (520, 'VESPERTINO');
-- CUE 700066500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (521, 'VESPERTINO');
-- CUE 700066600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (522, 'VESPERTINO');
-- CUE 700066600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (522, 'NOCHE');
-- CUE 700066601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (523, 'VESPERTINO');
-- CUE 700066601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (523, 'NOCHE');
-- CUE 700066602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (524, 'NOCHE');
-- CUE 700066700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (525, 'TARDE');
-- CUE 700066700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (525, 'VESPERTINO');
-- CUE 700066700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (525, 'NOCHE');
-- CUE 700066701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (526, 'TARDE');
-- CUE 700066702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (527, 'TARDE');
-- CUE 700066702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (527, 'VESPERTINO');
-- CUE 700066702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (527, 'NOCHE');
-- CUE 700066800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (528, 'VESPERTINO');
-- CUE 700066801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (529, 'VESPERTINO');
-- CUE 700066900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (530, 'VESPERTINO');
-- CUE 700066901: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (531, 'VESPERTINO');
-- CUE 700067000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (532, 'TARDE');
-- CUE 700067000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (532, 'VESPERTINO');
-- CUE 700067000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (532, 'NOCHE');
-- CUE 700067001: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (533, 'TARDE');
-- CUE 700067001: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (533, 'VESPERTINO');
-- CUE 700067001: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (533, 'NOCHE');
-- CUE 700067100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (534, 'VESPERTINO');
-- CUE 700067200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (535, 'TARDE');
-- CUE 700067200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (535, 'VESPERTINO');
-- CUE 700067300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (536, 'NOCHE');
-- CUE 700067400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (537, 'NOCHE');
-- CUE 700067500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (538, 'VESPERTINO');
-- CUE 700067600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (539, 'TARDE');
-- CUE 700067700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (540, 'VESPERTINO');
-- CUE 700067700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (540, 'NOCHE');
-- CUE 700067701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (541, 'VESPERTINO');
-- CUE 700067701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (541, 'NOCHE');
-- CUE 700067800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (542, 'VESPERTINO');
-- CUE 700067800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (542, 'NOCHE');
-- CUE 700067801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (543, 'VESPERTINO');
-- CUE 700067801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (543, 'NOCHE');
-- CUE 700067900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (544, 'VESPERTINO');
-- CUE 700067900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (544, 'NOCHE');
-- CUE 700067901: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (545, 'TARDE');
-- CUE 700067901: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (545, 'VESPERTINO');
-- CUE 700068000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (546, 'VESPERTINO');
-- CUE 700068001: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (547, 'VESPERTINO');
-- CUE 700068100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (548, 'NOCHE');
-- CUE 700068200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (549, 'TARDE');
-- CUE 700068201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (550, 'TARDE');
-- CUE 700068300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (551, 'VESPERTINO');
-- CUE 700068400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (552, 'VESPERTINO');
-- CUE 700068500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (553, 'TARDE');
-- CUE 700068500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (553, 'VESPERTINO');
-- CUE 700068600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (554, 'TARDE');
-- CUE 700068600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (554, 'VESPERTINO');
-- CUE 700068700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (555, 'TARDE');
-- CUE 700068800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (556, 'VESPERTINO');
-- CUE 700068801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (557, 'VESPERTINO');
-- CUE 700068900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (558, 'VESPERTINO');
-- CUE 700069000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (559, 'VESPERTINO');
-- CUE 700069000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (559, 'NOCHE');
-- CUE 700069100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (560, 'VESPERTINO');
-- CUE 700069101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (561, 'VESPERTINO');
-- CUE 700069200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (562, 'VESPERTINO');
-- CUE 700069200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (562, 'NOCHE');
-- CUE 700069201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (563, 'VESPERTINO');
-- CUE 700069201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (563, 'NOCHE');
-- CUE 700069300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (564, 'VESPERTINO');
-- CUE 700069300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (564, 'NOCHE');
-- CUE 700069400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (565, 'VESPERTINO');
-- CUE 700069600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (566, 'TARDE');
-- CUE 700069600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (566, 'VESPERTINO');
-- CUE 700069700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (567, 'VESPERTINO');
-- CUE 700069800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (568, 'MAÑANA');
-- CUE 700069800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (568, 'TARDE');
-- CUE 700069800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (568, 'NOCHE');
-- CUE 700069800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (568, 'VESPERTINO');
-- CUE 700069801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (569, 'MAÑANA');
-- CUE 700069801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (569, 'NOCHE');
-- CUE 700069801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (569, 'TARDE');
-- CUE 700069801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (569, 'VESPERTINO');
-- CUE 700069900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (570, 'VESPERTINO');
-- CUE 700070000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (571, 'VESPERTINO');
-- CUE 700070001: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (572, 'VESPERTINO');
-- CUE 700070100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (573, 'TARDE');
-- CUE 700070100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (573, 'VESPERTINO');
-- CUE 700070101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (574, 'TARDE');
-- CUE 700070101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (574, 'VESPERTINO');
-- CUE 700070200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (575, 'MAÑANA');
-- CUE 700070200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (575, 'VESPERTINO');
-- CUE 700070300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (576, 'VESPERTINO');
-- CUE 700070300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (576, 'NOCHE');
-- CUE 700070301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (577, 'VESPERTINO');
-- CUE 700070400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (578, 'VESPERTINO');
-- CUE 700070401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (579, 'VESPERTINO');
-- CUE 700070500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (580, 'VESPERTINO');
-- CUE 700070500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (580, 'NOCHE');
-- CUE 700070501: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (581, 'VESPERTINO');
-- CUE 700070501: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (581, 'NOCHE');
-- CUE 700070700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (582, 'TARDE');
-- CUE 700070800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (583, 'MAÑANA');
-- CUE 700070800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (583, 'TARDE');
-- CUE 700070800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (583, 'VESPERTINO');
-- CUE 700070900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (584, 'TARDE');
-- CUE 700070900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (584, 'VESPERTINO');
-- CUE 700070901: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (585, 'VESPERTINO');
-- CUE 700071000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (586, 'VESPERTINO');
-- CUE 700071100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (587, 'VESPERTINO');
-- CUE 700071200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (588, 'TARDE');
-- CUE 700071201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (589, 'TARDE');
-- CUE 700071300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (590, 'VESPERTINO');
-- CUE 700071301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (591, 'VESPERTINO');
-- CUE 700071400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (592, 'VESPERTINO');
-- CUE 700071400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (592, 'NOCHE');
-- CUE 700071500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (593, 'VESPERTINO');
-- CUE 700071600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (594, 'VESPERTINO');
-- CUE 700071700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (595, 'TARDE');
-- CUE 700071700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (595, 'VESPERTINO');
-- CUE 700071800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (596, 'TARDE');
-- CUE 700071801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (597, 'TARDE');
-- CUE 700071900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (598, 'VESPERTINO');
-- CUE 700072100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (599, 'TARDE');
-- CUE 700072100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (599, 'VESPERTINO');
-- CUE 700072200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (600, 'VESPERTINO');
-- CUE 700072300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (601, 'VESPERTINO');
-- CUE 700072400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (602, 'VESPERTINO');
-- CUE 700072401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (603, 'VESPERTINO');
-- CUE 700072500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (604, 'VESPERTINO');
-- CUE 700072600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (605, 'VESPERTINO');
-- CUE 700072800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (606, 'MAÑANA');
-- CUE 700072800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (606, 'TARDE');
-- CUE 700072900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (607, 'VESPERTINO');
-- CUE 700073300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (608, 'MAÑANA');
-- CUE 700073300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (608, 'TARDE');
-- CUE 700073300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (608, 'VESPERTINO');
-- CUE 700073400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (609, 'TARDE');
-- CUE 700073400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (609, 'VESPERTINO');
-- CUE 700073400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (609, 'NOCHE');
-- CUE 700073700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (610, 'VESPERTINO');
-- CUE 700073900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (611, 'MAÑANA');
-- CUE 700073900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (611, 'TARDE');
-- CUE 700074000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (612, 'MAÑANA');
-- CUE 700074100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (613, 'MAÑANA');
-- CUE 700074100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (613, 'TARDE');
-- CUE 700074400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (614, 'MAÑANA');
-- CUE 700074400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (614, 'TARDE');
-- CUE 700074500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (615, 'VESPERTINO');
-- CUE 700074700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (616, 'MAÑANA');
-- CUE 700074700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (616, 'TARDE');
-- CUE 700074800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (617, 'MAÑANA');
-- CUE 700074900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (618, 'MAÑANA');
-- CUE 700074900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (618, 'TARDE');
-- CUE 700075200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (619, 'NOCHE');
-- CUE 700075700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (620, 'MAÑANA');
-- CUE 700076200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (621, 'MAÑANA');
-- CUE 700076200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (621, 'TARDE');
-- CUE 700076400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (622, 'MAÑANA');
-- CUE 700076500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (623, 'MAÑANA');
-- CUE 700076500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (623, 'TARDE');
-- CUE 700077600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (624, 'TARDE');
-- CUE 700078000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (625, 'NOCHE');
-- CUE 700078300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (626, 'MAÑANA');
-- CUE 700078300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (626, 'TARDE');
-- CUE 700078600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (627, 'MAÑANA');
-- CUE 700078600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (627, 'TARDE');
-- CUE 700078800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (628, 'MAÑANA');
-- CUE 700078800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (628, 'TARDE');
-- CUE 700079000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (629, 'MAÑANA');
-- CUE 700079000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (629, 'TARDE');
-- CUE 700079300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (630, 'NOCHE');
-- CUE 700079400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (631, 'MAÑANA');
-- CUE 700079400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (631, 'TARDE');
-- CUE 700079401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (632, 'MAÑANA');
-- CUE 700079401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (632, 'TARDE');
-- CUE 700080700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (633, 'MAÑANA');
-- CUE 700080700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (633, 'TARDE');
-- CUE 700081300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (634, 'TARDE');
-- CUE 700081300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (634, 'INTERTURNO');
-- CUE 700081400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (635, 'TARDE');
-- CUE 700081600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (636, 'TARDE');
-- CUE 700081900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (637, 'MAÑANA');
-- CUE 700081900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (637, 'TARDE');
-- CUE 700082000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (638, 'MAÑANA');
-- CUE 700082100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (639, 'MAÑANA');
-- CUE 700082300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (640, 'MAÑANA');
-- CUE 700082300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (640, 'TARDE');
-- CUE 700082500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (641, 'MAÑANA');
-- CUE 700083100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (642, 'MAÑANA');
-- CUE 700083100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (642, 'TARDE');
-- CUE 700083400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (643, 'MAÑANA');
-- CUE 700083400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (643, 'TARDE');
-- CUE 700083500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (644, 'MAÑANA');
-- CUE 700083500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (644, 'TARDE');
-- CUE 700083800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (645, 'MAÑANA');
-- CUE 700083800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (645, 'TARDE');
-- CUE 700083800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (645, 'INTERTURNO');
-- CUE 700084000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (646, 'MAÑANA');
-- CUE 700084200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (647, 'TARDE');
-- CUE 700084500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (648, 'MAÑANA');
-- CUE 700084500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (648, 'TARDE');
-- CUE 700084500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (648, 'INTERTURNO');
-- CUE 700085000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (649, 'MAÑANA');
-- CUE 700085000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (649, 'TARDE');
-- CUE 700085000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (649, 'INTERTURNO');
-- CUE 700085100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (650, 'MAÑANA');
-- CUE 700085100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (650, 'TARDE');
-- CUE 700085100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (650, 'INTERTURNO');
-- CUE 700085200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (651, 'MAÑANA');
-- CUE 700085200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (651, 'TARDE');
-- CUE 700085200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (651, 'INTERTURNO');
-- CUE 700085300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (652, 'TARDE');
-- CUE 700085400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (653, 'MAÑANA');
-- CUE 700085400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (653, 'TARDE');
-- CUE 700085400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (653, 'INTERTURNO');
-- CUE 700085500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (654, 'MAÑANA');
-- CUE 700085500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (654, 'TARDE');
-- CUE 700085500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (654, 'INTERTURNO');
-- CUE 700085600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (655, 'MAÑANA');
-- CUE 700085600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (655, 'TARDE');
-- CUE 700085600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (655, 'INTERTURNO');
-- CUE 700085700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (656, 'MAÑANA');
-- CUE 700085700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (656, 'TARDE');
-- CUE 700085700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (656, 'INTERTURNO');
-- CUE 700085800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (657, 'MAÑANA');
-- CUE 700085800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (657, 'TARDE');
-- CUE 700085800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (657, 'INTERTURNO');
-- CUE 700086100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (658, 'MAÑANA');
-- CUE 700086100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (658, 'TARDE');
-- CUE 700086300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (659, 'MAÑANA');
-- CUE 700086300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (659, 'TARDE');
-- CUE 700086300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (659, 'INTERTURNO');
-- CUE 700086400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (660, 'MAÑANA');
-- CUE 700086400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (660, 'TARDE');
-- CUE 700086400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (660, 'INTERTURNO');
-- CUE 700086600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (661, 'MAÑANA');
-- CUE 700086600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (661, 'TARDE');
-- CUE 700086600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (661, 'INTERTURNO');
-- CUE 700086700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (662, 'MAÑANA');
-- CUE 700086700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (662, 'TARDE');
-- CUE 700086700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (662, 'INTERTURNO');
-- CUE 700086800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (663, 'MAÑANA');
-- CUE 700086800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (663, 'TARDE');
-- CUE 700086800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (663, 'INTERTURNO');
-- CUE 700086900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (664, 'MAÑANA');
-- CUE 700086900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (664, 'VESPERTINO');
-- CUE 700087000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (665, 'MAÑANA');
-- CUE 700087000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (665, 'TARDE');
-- CUE 700087000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (665, 'INTERTURNO');
-- CUE 700087100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (666, 'MAÑANA');
-- CUE 700087100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (666, 'TARDE');
-- CUE 700087300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (667, 'MAÑANA');
-- CUE 700087300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (667, 'TARDE');
-- CUE 700087300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (667, 'INTERTURNO');
-- CUE 700087400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (668, 'MAÑANA');
-- CUE 700087400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (668, 'TARDE');
-- CUE 700087400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (668, 'INTERTURNO');
-- CUE 700087500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (669, 'MAÑANA');
-- CUE 700087500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (669, 'TARDE');
-- CUE 700087500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (669, 'INTERTURNO');
-- CUE 700087600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (670, 'MAÑANA');
-- CUE 700087600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (670, 'TARDE');
-- CUE 700087700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (671, 'MAÑANA');
-- CUE 700087700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (671, 'TARDE');
-- CUE 700087700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (671, 'INTERTURNO');
-- CUE 700087800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (672, 'MAÑANA');
-- CUE 700087800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (672, 'TARDE');
-- CUE 700087800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (672, 'INTERTURNO');
-- CUE 700087900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (673, 'MAÑANA');
-- CUE 700087900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (673, 'TARDE');
-- CUE 700087900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (673, 'INTERTURNO');
-- CUE 700088000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (674, 'MAÑANA');
-- CUE 700088000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (674, 'TARDE');
-- CUE 700088100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (675, 'MAÑANA');
-- CUE 700088100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (675, 'VESPERTINO');
-- CUE 700088200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (676, 'MAÑANA');
-- CUE 700088300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (677, 'MAÑANA');
-- CUE 700088400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (678, 'MAÑANA');
-- CUE 700088400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (678, 'TARDE');
-- CUE 700088400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (678, 'INTERTURNO');
-- CUE 700088500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (679, 'MAÑANA');
-- CUE 700088500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (679, 'TARDE');
-- CUE 700088500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (679, 'INTERTURNO');
-- CUE 700088900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (680, 'MAÑANA');
-- CUE 700088900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (680, 'TARDE');
-- CUE 700088900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (680, 'NOCHE');
-- CUE 700089000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (681, 'MAÑANA');
-- CUE 700089000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (681, 'TARDE');
-- CUE 700089400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (682, 'MAÑANA');
-- CUE 700089400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (682, 'TARDE');
-- CUE 700089400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (682, 'INTERTURNO');
-- CUE 700089500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (683, 'MAÑANA');
-- CUE 700089500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (683, 'TARDE');
-- CUE 700089500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (683, 'INTERTURNO');
-- CUE 700089600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (684, 'MAÑANA');
-- CUE 700089600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (684, 'TARDE');
-- CUE 700089800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (685, 'MAÑANA');
-- CUE 700089800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (685, 'TARDE');
-- CUE 700089900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (686, 'MAÑANA');
-- CUE 700089900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (686, 'TARDE');
-- CUE 700090000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (687, 'MAÑANA');
-- CUE 700090000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (687, 'TARDE');
-- CUE 700090000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (687, 'INTERTURNO');
-- CUE 700090100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (688, 'MAÑANA');
-- CUE 700090100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (688, 'TARDE');
-- CUE 700090200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (689, 'MAÑANA');
-- CUE 700090200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (689, 'TARDE');
-- CUE 700090200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (689, 'INTERTURNO');
-- CUE 700090300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (690, 'MAÑANA');
-- CUE 700090400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (691, 'MAÑANA');
-- CUE 700090400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (691, 'TARDE');
-- CUE 700090400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (691, 'INTERTURNO');
-- CUE 700090800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (692, 'MAÑANA');
-- CUE 700090800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (692, 'TARDE');
-- CUE 700091000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (693, 'MAÑANA');
-- CUE 700091000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (693, 'TARDE');
-- CUE 700091100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (694, 'MAÑANA');
-- CUE 700091100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (694, 'TARDE');
-- CUE 700091500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (695, 'MAÑANA');
-- CUE 700091500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (695, 'TARDE');
-- CUE 700091600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (696, 'MAÑANA');
-- CUE 700091600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (696, 'TARDE');
-- CUE 700092000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (697, 'MAÑANA');
-- CUE 700092000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (697, 'TARDE');
-- CUE 700092000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (697, 'INTERTURNO');
-- CUE 700092700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (698, 'MAÑANA');
-- CUE 700092700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (698, 'TARDE');
-- CUE 700093000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (699, 'MAÑANA');
-- CUE 700093000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (699, 'TARDE');
-- CUE 700093100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (700, 'TARDE');
-- CUE 700093600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (701, 'MAÑANA');
-- CUE 700093600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (701, 'TARDE');
-- CUE 700093600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (701, 'INTERTURNO');
-- CUE 700093900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (702, 'MAÑANA');
-- CUE 700093900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (702, 'TARDE');
-- CUE 700093900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (702, 'INTERTURNO');
-- CUE 700094100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (703, 'MAÑANA');
-- CUE 700094100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (703, 'TARDE');
-- CUE 700094101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (704, 'MAÑANA');
-- CUE 700094101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (704, 'TARDE');
-- CUE 700094102: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (705, 'MAÑANA');
-- CUE 700094102: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (705, 'TARDE');
-- CUE 700094102: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (705, 'JORNADA_COMPLETA');
-- CUE 700094103: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (706, 'MAÑANA');
-- CUE 700094103: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (706, 'TARDE');
-- CUE 700094104: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (707, 'MAÑANA');
-- CUE 700094104: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (707, 'TARDE');
-- CUE 700094105: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (708, 'MAÑANA');
-- CUE 700094105: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (708, 'TARDE');
-- CUE 700094200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (709, 'MAÑANA');
-- CUE 700094200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (709, 'TARDE');
-- CUE 700094201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (710, 'MAÑANA');
-- CUE 700094201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (710, 'TARDE');
-- CUE 700094202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (711, 'MAÑANA');
-- CUE 700094202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (711, 'TARDE');
-- CUE 700094300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (712, 'MAÑANA');
-- CUE 700094300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (712, 'TARDE');
-- CUE 700094301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (713, 'MAÑANA');
-- CUE 700094301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (713, 'TARDE');
-- CUE 700094302: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (714, 'MAÑANA');
-- CUE 700094302: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (714, 'TARDE');
-- CUE 700094303: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (715, 'MAÑANA');
-- CUE 700094303: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (715, 'TARDE');
-- CUE 700094400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (716, 'MAÑANA');
-- CUE 700094400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (716, 'TARDE');
-- CUE 700094400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (716, 'INTERTURNO');
-- CUE 700094600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (717, 'MAÑANA');
-- CUE 700094600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (717, 'TARDE');
-- CUE 700094600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (717, 'INTERTURNO');
-- CUE 700094701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (718, 'MAÑANA');
-- CUE 700094701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (718, 'TARDE');
-- CUE 700094701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (718, 'VESPERTINO');
-- CUE 700094701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (718, 'NOCHE');
-- CUE 700094702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (719, 'MAÑANA');
-- CUE 700094702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (719, 'TARDE');
-- CUE 700094702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (719, 'VESPERTINO');
-- CUE 700094702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (719, 'NOCHE');
-- CUE 700094703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (720, 'MAÑANA');
-- CUE 700094703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (720, 'TARDE');
-- CUE 700094703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (720, 'VESPERTINO');
-- CUE 700094703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (720, 'NOCHE');
-- CUE 700094704: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (721, 'MAÑANA');
-- CUE 700094704: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (721, 'TARDE');
-- CUE 700094704: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (721, 'VESPERTINO');
-- CUE 700094704: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (721, 'NOCHE');
-- CUE 700094705: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (722, 'MAÑANA');
-- CUE 700094705: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (722, 'TARDE');
-- CUE 700094705: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (722, 'VESPERTINO');
-- CUE 700094705: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (722, 'NOCHE');
-- CUE 700094706: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (723, 'MAÑANA');
-- CUE 700094706: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (723, 'TARDE');
-- CUE 700094706: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (723, 'VESPERTINO');
-- CUE 700094706: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (723, 'NOCHE');
-- CUE 700095000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (724, 'MAÑANA');
-- CUE 700095000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (724, 'TARDE');
-- CUE 700095400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (725, 'MAÑANA');
-- CUE 700095400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (725, 'TARDE');
-- CUE 700095500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (726, 'MAÑANA');
-- CUE 700095500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (726, 'TARDE');
-- CUE 700095500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (726, 'INTERTURNO');
-- CUE 700095600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (727, 'MAÑANA');
-- CUE 700095600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (727, 'TARDE');
-- CUE 700095600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (727, 'INTERTURNO');
-- CUE 700095800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (728, 'MAÑANA');
-- CUE 700095800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (728, 'TARDE');
-- CUE 700096000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (729, 'MAÑANA');
-- CUE 700096000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (729, 'TARDE');
-- CUE 700096001: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (730, 'MAÑANA');
-- CUE 700096002: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (731, 'MAÑANA');
-- CUE 700096003: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (732, 'MAÑANA');
-- CUE 700096004: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (733, 'MAÑANA');
-- CUE 700096004: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (733, 'TARDE');
-- CUE 700096004: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (733, 'INTERTURNO');
-- CUE 700096005: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (734, 'MAÑANA');
-- CUE 700096100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (735, 'MAÑANA');
-- CUE 700096100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (735, 'TARDE');
-- CUE 700096101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (736, 'TARDE');
-- CUE 700096102: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (737, 'MAÑANA');
-- CUE 700096102: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (737, 'TARDE');
-- CUE 700096103: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (738, 'TARDE');
-- CUE 700096200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (739, 'MAÑANA');
-- CUE 700096200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (739, 'TARDE');
-- CUE 700096201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (740, 'MAÑANA');
-- CUE 700096201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (740, 'TARDE');
-- CUE 700096201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (740, 'JORNADA_COMPLETA');
-- CUE 700096202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (741, 'MAÑANA');
-- CUE 700096202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (741, 'TARDE');
-- CUE 700096203: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (742, 'MAÑANA');
-- CUE 700096203: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (742, 'TARDE');
-- CUE 700096204: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (743, 'MAÑANA');
-- CUE 700096204: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (743, 'TARDE');
-- CUE 700096205: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (744, 'MAÑANA');
-- CUE 700096205: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (744, 'TARDE');
-- CUE 700096206: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (745, 'MAÑANA');
-- CUE 700096206: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (745, 'TARDE');
-- CUE 700096300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (746, 'TARDE');
-- CUE 700096300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (746, 'MAÑANA');
-- CUE 700096300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (746, 'JORNADA_COMPLETA');
-- CUE 700096300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (746, 'INTERTURNO');
-- CUE 700096301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (747, 'MAÑANA');
-- CUE 700096301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (747, 'TARDE');
-- CUE 700096301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (747, 'INTERTURNO');
-- CUE 700096303: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (749, 'MAÑANA');
-- CUE 700096304: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (750, 'MAÑANA');
-- CUE 700096305: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (751, 'MAÑANA');
-- CUE 700096306: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (752, 'JORNADA_COMPLETA');
-- CUE 700096307: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (753, 'MAÑANA');
-- CUE 700096308: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (754, 'MAÑANA');
-- CUE 700096308: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (754, 'TARDE');
-- CUE 700096308: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (754, 'INTERTURNO');
-- CUE 700096500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (755, 'MAÑANA');
-- CUE 700096500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (755, 'TARDE');
-- CUE 700096500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (755, 'INTERTURNO');
-- CUE 700096600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (756, 'MAÑANA');
-- CUE 700096600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (756, 'TARDE');
-- CUE 700096600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (756, 'INTERTURNO');
-- CUE 700097000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (757, 'NOCHE');
-- CUE 700097100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (758, 'MAÑANA');
-- CUE 700097100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (758, 'TARDE');
-- CUE 700097100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (758, 'VESPERTINO');
-- CUE 700097100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (758, 'INTERTURNO');
-- CUE 700097200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (759, 'MAÑANA');
-- CUE 700097200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (759, 'TARDE');
-- CUE 700097200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (759, 'INTERTURNO');
-- CUE 700097300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (760, 'MAÑANA');
-- CUE 700097300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (760, 'TARDE');
-- CUE 700097300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (760, 'JORNADA_COMPLETA');
-- CUE 700097301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (761, 'MAÑANA');
-- CUE 700097301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (761, 'TARDE');
-- CUE 700097301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (761, 'JORNADA_COMPLETA');
-- CUE 700097302: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (762, 'MAÑANA');
-- CUE 700097302: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (762, 'TARDE');
-- CUE 700097400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (763, 'MAÑANA');
-- CUE 700097400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (763, 'TARDE');
-- CUE 700097400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (763, 'JORNADA_COMPLETA');
-- CUE 700097401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (764, 'MAÑANA');
-- CUE 700097401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (764, 'TARDE');
-- CUE 700097402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (765, 'MAÑANA');
-- CUE 700097402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (765, 'TARDE');
-- CUE 700097402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (765, 'JORNADA_COMPLETA');
-- CUE 700097402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (765, 'INTERTURNO');
-- CUE 700097403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (766, 'MAÑANA');
-- CUE 700097403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (766, 'TARDE');
-- CUE 700097404: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (767, 'MAÑANA');
-- CUE 700097404: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (767, 'TARDE');
-- CUE 700098200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (768, 'MAÑANA');
-- CUE 700098200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (768, 'TARDE');
-- CUE 700098200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (768, 'JORNADA_COMPLETA');
-- CUE 700098200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (768, 'INTERTURNO');
-- CUE 700098201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (769, 'MAÑANA');
-- CUE 700098201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (769, 'TARDE');
-- CUE 700098202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (770, 'MAÑANA');
-- CUE 700098202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (770, 'TARDE');
-- CUE 700098300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (771, 'MAÑANA');
-- CUE 700098300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (771, 'TARDE');
-- CUE 700098300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (771, 'JORNADA_COMPLETA');
-- CUE 700098300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (771, 'INTERTURNO');
-- CUE 700098301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (772, 'MAÑANA');
-- CUE 700098301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (772, 'TARDE');
-- CUE 700098302: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (773, 'TARDE');
-- CUE 700098303: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (774, 'MAÑANA');
-- CUE 700098303: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (774, 'TARDE');
-- CUE 700098400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (775, 'MAÑANA');
-- CUE 700098400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (775, 'TARDE');
-- CUE 700098401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (776, 'TARDE');
-- CUE 700098402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (777, 'MAÑANA');
-- CUE 700098402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (777, 'TARDE');
-- CUE 700098403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (778, 'MAÑANA');
-- CUE 700098403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (778, 'TARDE');
-- CUE 700098403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (778, 'INTERTURNO');
-- CUE 700098404: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (779, 'MAÑANA');
-- CUE 700098404: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (779, 'TARDE');
-- CUE 700098600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (780, 'MAÑANA');
-- CUE 700098600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (780, 'TARDE');
-- CUE 700098700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (781, 'MAÑANA');
-- CUE 700098700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (781, 'TARDE');
-- CUE 700098700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (781, 'INTERTURNO');
-- CUE 700098800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (782, 'MAÑANA');
-- CUE 700098800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (782, 'TARDE');
-- CUE 700098801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (783, 'MAÑANA');
-- CUE 700098801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (783, 'TARDE');
-- CUE 700098802: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (784, 'MAÑANA');
-- CUE 700098802: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (784, 'TARDE');
-- CUE 700098802: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (784, 'JORNADA_COMPLETA');
-- CUE 700098802: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (784, 'INTERTURNO');
-- CUE 700098804: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (785, 'MAÑANA');
-- CUE 700098804: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (785, 'TARDE');
-- CUE 700098900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (786, 'MAÑANA');
-- CUE 700098900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (786, 'TARDE');
-- CUE 700098901: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (787, 'MAÑANA');
-- CUE 700098901: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (787, 'TARDE');
-- CUE 700098902: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (788, 'JORNADA_COMPLETA');
-- CUE 700099200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (789, 'MAÑANA');
-- CUE 700099200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (789, 'TARDE');
-- CUE 700099200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (789, 'INTERTURNO');
-- CUE 700099500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (790, 'MAÑANA');
-- CUE 700099500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (790, 'TARDE');
-- CUE 700099501: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (791, 'MAÑANA');
-- CUE 700099501: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (791, 'TARDE');
-- CUE 700099502: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (792, 'MAÑANA');
-- CUE 700099502: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (792, 'TARDE');
-- CUE 700099508: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (793, 'MAÑANA');
-- CUE 700099508: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (793, 'TARDE');
-- CUE 700099508: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (793, 'INTERTURNO');
-- CUE 700099509: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (794, 'MAÑANA');
-- CUE 700099509: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (794, 'TARDE');
-- CUE 700099509: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (794, 'INTERTURNO');
-- CUE 700099510: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (795, 'MAÑANA');
-- CUE 700099510: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (795, 'TARDE');
-- CUE 700099510: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (795, 'INTERTURNO');
-- CUE 700099600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (796, 'MAÑANA');
-- CUE 700099600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (796, 'TARDE');
-- CUE 700099601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (797, 'MAÑANA');
-- CUE 700099601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (797, 'TARDE');
-- CUE 700099601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (797, 'INTERTURNO');
-- CUE 700099602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (798, 'MAÑANA');
-- CUE 700099602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (798, 'TARDE');
-- CUE 700099603: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (799, 'MAÑANA');
-- CUE 700099603: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (799, 'TARDE');
-- CUE 700099700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (800, 'MAÑANA');
-- CUE 700099700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (800, 'TARDE');
-- CUE 700099701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (801, 'MAÑANA');
-- CUE 700099701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (801, 'TARDE');
-- CUE 700099702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (802, 'MAÑANA');
-- CUE 700099702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (802, 'TARDE');
-- CUE 700099703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (803, 'MAÑANA');
-- CUE 700099703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (803, 'TARDE');
-- CUE 700099900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (804, 'MAÑANA');
-- CUE 700099900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (804, 'TARDE');
-- CUE 700099900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (804, 'INTERTURNO');
-- CUE 700100000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (805, 'MAÑANA');
-- CUE 700100000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (805, 'TARDE');
-- CUE 700100000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (805, 'INTERTURNO');
-- CUE 700100700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (806, 'MAÑANA');
-- CUE 700100700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (806, 'TARDE');
-- CUE 700100700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (806, 'INTERTURNO');
-- CUE 700101600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (807, 'MAÑANA');
-- CUE 700101600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (807, 'TARDE');
-- CUE 700101700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (808, 'MAÑANA');
-- CUE 700101700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (808, 'TARDE');
-- CUE 700101700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (808, 'INTERTURNO');
-- CUE 700102000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (809, 'TARDE');
-- CUE 700102000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (809, 'MAÑANA');
-- CUE 700102000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (809, 'JORNADA_COMPLETA');
-- CUE 700102002: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (811, 'JORNADA_COMPLETA');
-- CUE 700102003: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (812, 'JORNADA_COMPLETA');
-- CUE 700102100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (814, 'MAÑANA');
-- CUE 700102100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (814, 'TARDE');
-- CUE 700102101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (815, 'MAÑANA');
-- CUE 700102101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (815, 'TARDE');
-- CUE 700102101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (815, 'JORNADA_COMPLETA');
-- CUE 700102102: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (816, 'MAÑANA');
-- CUE 700102102: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (816, 'TARDE');
-- CUE 700102103: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (817, 'MAÑANA');
-- CUE 700102103: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (817, 'TARDE');
-- CUE 700102104: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (818, 'MAÑANA');
-- CUE 700102104: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (818, 'TARDE');
-- CUE 700102104: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (818, 'JORNADA_COMPLETA');
-- CUE 700102200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (819, 'MAÑANA');
-- CUE 700102200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (819, 'TARDE');
-- CUE 700102200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (819, 'INTERTURNO');
-- CUE 700102201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (820, 'MAÑANA');
-- CUE 700102201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (820, 'TARDE');
-- CUE 700102201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (820, 'INTERTURNO');
-- CUE 700102202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (821, 'MAÑANA');
-- CUE 700102202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (821, 'TARDE');
-- CUE 700102202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (821, 'INTERTURNO');
-- CUE 700102300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (822, 'MAÑANA');
-- CUE 700102300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (822, 'TARDE');
-- CUE 700102300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (822, 'INTERTURNO');
-- CUE 700102301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (823, 'MAÑANA');
-- CUE 700102301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (823, 'TARDE');
-- CUE 700102600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (824, 'MAÑANA');
-- CUE 700102600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (824, 'TARDE');
-- CUE 700102601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (825, 'MAÑANA');
-- CUE 700102601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (825, 'TARDE');
-- CUE 700102602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (826, 'MAÑANA');
-- CUE 700102602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (826, 'TARDE');
-- CUE 700102603: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (827, 'MAÑANA');
-- CUE 700102603: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (827, 'TARDE');
-- CUE 700102604: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (828, 'MAÑANA');
-- CUE 700102604: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (828, 'TARDE');
-- CUE 700102604: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (828, 'JORNADA_COMPLETA');
-- CUE 700102700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (829, 'MAÑANA');
-- CUE 700102700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (829, 'TARDE');
-- CUE 700102701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (830, 'MAÑANA');
-- CUE 700102701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (830, 'TARDE');
-- CUE 700102702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (831, 'MAÑANA');
-- CUE 700102702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (831, 'TARDE');
-- CUE 700102703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (832, 'MAÑANA');
-- CUE 700102703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (832, 'TARDE');
-- CUE 700102704: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (833, 'MAÑANA');
-- CUE 700102704: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (833, 'TARDE');
-- CUE 700102800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (834, 'MAÑANA');
-- CUE 700102800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (834, 'TARDE');
-- CUE 700102801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (835, 'MAÑANA');
-- CUE 700102801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (835, 'TARDE');
-- CUE 700102803: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (836, 'MAÑANA');
-- CUE 700102803: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (836, 'TARDE');
-- CUE 700103000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (837, 'MAÑANA');
-- CUE 700103000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (837, 'TARDE');
-- CUE 700103000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (837, 'INTERTURNO');
-- CUE 700103001: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (838, 'MAÑANA');
-- CUE 700103001: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (838, 'TARDE');
-- CUE 700103002: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (839, 'MAÑANA');
-- CUE 700103002: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (839, 'TARDE');
-- CUE 700103003: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (840, 'MAÑANA');
-- CUE 700103003: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (840, 'TARDE');
-- CUE 700103004: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (841, 'MAÑANA');
-- CUE 700103004: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (841, 'TARDE');
-- CUE 700103005: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (842, 'MAÑANA');
-- CUE 700103005: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (842, 'TARDE');
-- CUE 700103100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (843, 'MAÑANA');
-- CUE 700103100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (843, 'TARDE');
-- CUE 700103101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (844, 'MAÑANA');
-- CUE 700103101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (844, 'TARDE');
-- CUE 700103102: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (845, 'MAÑANA');
-- CUE 700103102: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (845, 'TARDE');
-- CUE 700103103: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (846, 'MAÑANA');
-- CUE 700103103: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (846, 'TARDE');
-- CUE 700103200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (847, 'MAÑANA');
-- CUE 700103200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (847, 'TARDE');
-- CUE 700103200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (847, 'JORNADA_COMPLETA');
-- CUE 700103201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (848, 'MAÑANA');
-- CUE 700103201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (848, 'TARDE');
-- CUE 700103202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (849, 'MAÑANA');
-- CUE 700103202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (849, 'TARDE');
-- CUE 700103204: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (850, 'MAÑANA');
-- CUE 700103204: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (850, 'TARDE');
-- CUE 700103300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (851, 'MAÑANA');
-- CUE 700103300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (851, 'TARDE');
-- CUE 700103301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (852, 'MAÑANA');
-- CUE 700103301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (852, 'TARDE');
-- CUE 700103400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (853, 'MAÑANA');
-- CUE 700103400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (853, 'TARDE');
-- CUE 700103401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (854, 'MAÑANA');
-- CUE 700103401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (854, 'TARDE');
-- CUE 700103402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (855, 'MAÑANA');
-- CUE 700103402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (855, 'TARDE');
-- CUE 700103402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (855, 'INTERTURNO');
-- CUE 700103403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (856, 'TARDE');
-- CUE 700103403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (856, 'INTERTURNO');
-- CUE 700103500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (857, 'MAÑANA');
-- CUE 700103500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (857, 'TARDE');
-- CUE 700103500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (857, 'INTERTURNO');
-- CUE 700103501: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (858, 'MAÑANA');
-- CUE 700103501: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (858, 'TARDE');
-- CUE 700103502: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (859, 'MAÑANA');
-- CUE 700103502: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (859, 'TARDE');
-- CUE 700103503: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (860, 'MAÑANA');
-- CUE 700103503: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (860, 'TARDE');
-- CUE 700103504: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (861, 'MAÑANA');
-- CUE 700103504: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (861, 'TARDE');
-- CUE 700103600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (862, 'MAÑANA');
-- CUE 700103600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (862, 'TARDE');
-- CUE 700103602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (863, 'MAÑANA');
-- CUE 700103602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (863, 'TARDE');
-- CUE 700103602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (863, 'INTERTURNO');
-- CUE 700103603: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (864, 'MAÑANA');
-- CUE 700103603: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (864, 'TARDE');
-- CUE 700103604: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (865, 'MAÑANA');
-- CUE 700103604: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (865, 'TARDE');
-- CUE 700103700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (866, 'MAÑANA');
-- CUE 700103700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (866, 'TARDE');
-- CUE 700103700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (866, 'INTERTURNO');
-- CUE 700103701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (867, 'MAÑANA');
-- CUE 700103701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (867, 'TARDE');
-- CUE 700103702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (868, 'MAÑANA');
-- CUE 700103702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (868, 'TARDE');
-- CUE 700103703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (869, 'MAÑANA');
-- CUE 700103703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (869, 'TARDE');
-- CUE 700103800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (870, 'MAÑANA');
-- CUE 700103800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (870, 'TARDE');
-- CUE 700103801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (871, 'MAÑANA');
-- CUE 700103801: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (871, 'TARDE');
-- CUE 700103802: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (872, 'MAÑANA');
-- CUE 700103802: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (872, 'TARDE');
-- CUE 700103803: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (873, 'MAÑANA');
-- CUE 700103803: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (873, 'TARDE');
-- CUE 700103804: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (874, 'MAÑANA');
-- CUE 700103804: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (874, 'TARDE');
-- CUE 700103900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (875, 'MAÑANA');
-- CUE 700103900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (875, 'TARDE');
-- CUE 700103900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (875, 'INTERTURNO');
-- CUE 700103901: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (876, 'MAÑANA');
-- CUE 700103901: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (876, 'TARDE');
-- CUE 700103902: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (877, 'MAÑANA');
-- CUE 700103902: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (877, 'TARDE');
-- CUE 700103903: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (878, 'MAÑANA');
-- CUE 700103903: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (878, 'TARDE');
-- CUE 700104000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (879, 'MAÑANA');
-- CUE 700104000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (879, 'TARDE');
-- CUE 700104001: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (880, 'MAÑANA');
-- CUE 700104001: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (880, 'TARDE');
-- CUE 700104002: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (881, 'MAÑANA');
-- CUE 700104002: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (881, 'TARDE');
-- CUE 700104003: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (882, 'MAÑANA');
-- CUE 700104003: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (882, 'TARDE');
-- CUE 700104004: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (883, 'MAÑANA');
-- CUE 700104004: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (883, 'TARDE');
-- CUE 700104005: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (884, 'MAÑANA');
-- CUE 700104005: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (884, 'TARDE');
-- CUE 700104100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (885, 'MAÑANA');
-- CUE 700104100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (885, 'TARDE');
-- CUE 700104101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (886, 'MAÑANA');
-- CUE 700104101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (886, 'TARDE');
-- CUE 700104102: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (887, 'MAÑANA');
-- CUE 700104102: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (887, 'TARDE');
-- CUE 700104103: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (888, 'MAÑANA');
-- CUE 700104103: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (888, 'TARDE');
-- CUE 700104200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (889, 'MAÑANA');
-- CUE 700104200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (889, 'TARDE');
-- CUE 700104200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (889, 'INTERTURNO');
-- CUE 700104201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (890, 'MAÑANA');
-- CUE 700104201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (890, 'TARDE');
-- CUE 700104201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (890, 'INTERTURNO');
-- CUE 700104202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (891, 'MAÑANA');
-- CUE 700104202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (891, 'TARDE');
-- CUE 700104202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (891, 'INTERTURNO');
-- CUE 700104300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (892, 'MAÑANA');
-- CUE 700104300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (892, 'TARDE');
-- CUE 700104400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (893, 'MAÑANA');
-- CUE 700104400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (893, 'TARDE');
-- CUE 700104400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (893, 'INTERTURNO');
-- CUE 700104401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (894, 'MAÑANA');
-- CUE 700104401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (894, 'TARDE');
-- CUE 700104401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (894, 'INTERTURNO');
-- CUE 700104402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (895, 'MAÑANA');
-- CUE 700104402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (895, 'TARDE');
-- CUE 700104402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (895, 'INTERTURNO');
-- CUE 700104403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (896, 'MAÑANA');
-- CUE 700104403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (896, 'TARDE');
-- CUE 700104403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (896, 'INTERTURNO');
-- CUE 700104404: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (897, 'MAÑANA');
-- CUE 700104404: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (897, 'TARDE');
-- CUE 700104404: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (897, 'INTERTURNO');
-- CUE 700104500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (898, 'MAÑANA');
-- CUE 700104500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (898, 'TARDE');
-- CUE 700104500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (898, 'INTERTURNO');
-- CUE 700104600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (899, 'MAÑANA');
-- CUE 700104600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (899, 'TARDE');
-- CUE 700104600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (899, 'INTERTURNO');
-- CUE 700104700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (900, 'MAÑANA');
-- CUE 700105100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (901, 'MAÑANA');
-- CUE 700105100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (901, 'TARDE');
-- CUE 700105100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (901, 'INTERTURNO');
-- CUE 700105200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (902, 'MAÑANA');
-- CUE 700105200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (902, 'TARDE');
-- CUE 700105200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (902, 'INTERTURNO');
-- CUE 700105300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (903, 'MAÑANA');
-- CUE 700105300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (903, 'TARDE');
-- CUE 700105300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (903, 'INTERTURNO');
-- CUE 700105500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (904, 'MAÑANA');
-- CUE 700105500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (904, 'TARDE');
-- CUE 700105500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (904, 'INTERTURNO');
-- CUE 700105502: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (906, 'MAÑANA');
-- CUE 700105502: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (906, 'TARDE');
-- CUE 700105502: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (906, 'INTERTURNO');
-- CUE 700105503: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (907, 'MAÑANA');
-- CUE 700105503: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (907, 'TARDE');
-- CUE 700105503: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (907, 'INTERTURNO');
-- CUE 700105504: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (908, 'MAÑANA');
-- CUE 700105504: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (908, 'TARDE');
-- CUE 700105504: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (908, 'INTERTURNO');
-- CUE 700105600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (910, 'MAÑANA');
-- CUE 700105600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (910, 'TARDE');
-- CUE 700105600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (910, 'INTERTURNO');
-- CUE 700105601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (911, 'MAÑANA');
-- CUE 700105601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (911, 'TARDE');
-- CUE 700105601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (911, 'INTERTURNO');
-- CUE 700105602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (912, 'MAÑANA');
-- CUE 700105602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (912, 'TARDE');
-- CUE 700105602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (912, 'INTERTURNO');
-- CUE 700105603: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (913, 'MAÑANA');
-- CUE 700105603: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (913, 'TARDE');
-- CUE 700105603: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (913, 'INTERTURNO');
-- CUE 700105604: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (914, 'MAÑANA');
-- CUE 700105604: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (914, 'TARDE');
-- CUE 700105604: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (914, 'INTERTURNO');
-- CUE 700105700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (915, 'MAÑANA');
-- CUE 700105700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (915, 'TARDE');
-- CUE 700105700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (915, 'INTERTURNO');
-- CUE 700105701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (916, 'MAÑANA');
-- CUE 700105701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (916, 'TARDE');
-- CUE 700105701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (916, 'INTERTURNO');
-- CUE 700105702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (917, 'MAÑANA');
-- CUE 700105702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (917, 'TARDE');
-- CUE 700105702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (917, 'INTERTURNO');
-- CUE 700105703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (918, 'MAÑANA');
-- CUE 700105703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (918, 'TARDE');
-- CUE 700105703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (918, 'INTERTURNO');
-- CUE 700105705: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (919, 'MAÑANA');
-- CUE 700105705: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (919, 'TARDE');
-- CUE 700105705: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (919, 'INTERTURNO');
-- CUE 700105800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (920, 'MAÑANA');
-- CUE 700105800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (920, 'TARDE');
-- CUE 700105800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (920, 'INTERTURNO');
-- CUE 700105900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (921, 'MAÑANA');
-- CUE 700105900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (921, 'TARDE');
-- CUE 700105900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (921, 'INTERTURNO');
-- CUE 700106300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (922, 'MAÑANA');
-- CUE 700106400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (923, 'TARDE');
-- CUE 700106800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (924, 'MAÑANA');
-- CUE 700106900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (925, 'TARDE');
-- CUE 700107100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (926, 'MAÑANA');
-- CUE 700107100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (926, 'TARDE');
-- CUE 700107100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (926, 'INTERTURNO');
-- CUE 700107800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (927, 'MAÑANA');
-- CUE 700107800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (927, 'TARDE');
-- CUE 700107800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (927, 'INTERTURNO');
-- CUE 700108200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (928, 'TARDE');
-- CUE 700108300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (929, 'MAÑANA');
-- CUE 700108300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (929, 'TARDE');
-- CUE 700108300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (929, 'INTERTURNO');
-- CUE 700108301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (930, 'MAÑANA');
-- CUE 700108301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (930, 'TARDE');
-- CUE 700108301: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (930, 'INTERTURNO');
-- CUE 700108302: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (931, 'MAÑANA');
-- CUE 700108302: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (931, 'TARDE');
-- CUE 700108302: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (931, 'INTERTURNO');
-- CUE 700108303: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (932, 'MAÑANA');
-- CUE 700108303: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (932, 'TARDE');
-- CUE 700108303: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (932, 'INTERTURNO');
-- CUE 700110800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (933, 'MAÑANA');
-- CUE 700110800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (933, 'TARDE');
-- CUE 700111000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (934, 'MAÑANA');
-- CUE 700111000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (934, 'TARDE');
-- CUE 700111000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (934, 'VESPERTINO');
-- CUE 700111000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (934, 'NOCHE');
-- CUE 700111200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (935, 'MAÑANA');
-- CUE 700111200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (935, 'TARDE');
-- CUE 700111200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (935, 'INTERTURNO');
-- CUE 700111201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (936, 'MAÑANA');
-- CUE 700111201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (936, 'TARDE');
-- CUE 700111201: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (936, 'INTERTURNO');
-- CUE 700111202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (937, 'MAÑANA');
-- CUE 700111202: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (937, 'TARDE');
-- CUE 700111300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (939, 'MAÑANA');
-- CUE 700111300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (939, 'TARDE');
-- CUE 700111300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (939, 'INTERTURNO');
-- CUE 700111400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (940, 'MAÑANA');
-- CUE 700111400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (940, 'TARDE');
-- CUE 700111400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (940, 'INTERTURNO');
-- CUE 700111401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (941, 'MAÑANA');
-- CUE 700111401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (941, 'TARDE');
-- CUE 700111401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (941, 'INTERTURNO');
-- CUE 700111403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (943, 'MAÑANA');
-- CUE 700111403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (943, 'TARDE');
-- CUE 700111404: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (944, 'MAÑANA');
-- CUE 700111404: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (944, 'TARDE');
-- CUE 700111405: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (945, 'INTERTURNO');
-- CUE 700111500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (946, 'MAÑANA');
-- CUE 700111500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (946, 'TARDE');
-- CUE 700111600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (947, 'MAÑANA');
-- CUE 700111600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (947, 'TARDE');
-- CUE 700111600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (947, 'INTERTURNO');
-- CUE 700111601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (948, 'MAÑANA');
-- CUE 700111601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (948, 'TARDE');
-- CUE 700111601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (948, 'INTERTURNO');
-- CUE 700111602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (949, 'MAÑANA');
-- CUE 700111602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (949, 'TARDE');
-- CUE 700111602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (949, 'INTERTURNO');
-- CUE 700111603: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (950, 'MAÑANA');
-- CUE 700111603: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (950, 'TARDE');
-- CUE 700111603: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (950, 'INTERTURNO');
-- CUE 700111604: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (951, 'MAÑANA');
-- CUE 700111604: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (951, 'TARDE');
-- CUE 700111604: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (951, 'INTERTURNO');
-- CUE 700111605: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (952, 'MAÑANA');
-- CUE 700111605: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (952, 'TARDE');
-- CUE 700111605: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (952, 'INTERTURNO');
-- CUE 700111700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (953, 'MAÑANA');
-- CUE 700111700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (953, 'TARDE');
-- CUE 700113100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (954, 'MAÑANA');
-- CUE 700113100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (954, 'TARDE');
-- CUE 700113100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (954, 'INTERTURNO');
-- CUE 700113101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (955, 'MAÑANA');
-- CUE 700113101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (955, 'TARDE');
-- CUE 700113101: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (955, 'INTERTURNO');
-- CUE 700113102: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (956, 'MAÑANA');
-- CUE 700113102: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (956, 'TARDE');
-- CUE 700113102: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (956, 'INTERTURNO');
-- CUE 700113103: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (957, 'MAÑANA');
-- CUE 700113103: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (957, 'TARDE');
-- CUE 700113103: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (957, 'INTERTURNO');
-- CUE 700113400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (958, 'MAÑANA');
-- CUE 700113400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (958, 'TARDE');
-- CUE 700113400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (958, 'INTERTURNO');
-- CUE 700113401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (959, 'MAÑANA');
-- CUE 700113401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (959, 'TARDE');
-- CUE 700113401: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (959, 'INTERTURNO');
-- CUE 700113402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (960, 'MAÑANA');
-- CUE 700113402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (960, 'TARDE');
-- CUE 700113402: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (960, 'INTERTURNO');
-- CUE 700113403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (961, 'MAÑANA');
-- CUE 700113403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (961, 'TARDE');
-- CUE 700113403: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (961, 'INTERTURNO');
-- CUE 700113404: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (962, 'MAÑANA');
-- CUE 700113404: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (962, 'TARDE');
-- CUE 700113404: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (962, 'INTERTURNO');
-- CUE 700113500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (963, 'MAÑANA');
-- CUE 700113500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (963, 'TARDE');
-- CUE 700113500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (963, 'INTERTURNO');
-- CUE 700113501: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (964, 'MAÑANA');
-- CUE 700113501: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (964, 'TARDE');
-- CUE 700113501: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (964, 'INTERTURNO');
-- CUE 700113502: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (965, 'MAÑANA');
-- CUE 700113502: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (965, 'TARDE');
-- CUE 700113502: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (965, 'INTERTURNO');
-- CUE 700113503: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (966, 'MAÑANA');
-- CUE 700113503: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (966, 'TARDE');
-- CUE 700113503: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (966, 'INTERTURNO');
-- CUE 700113504: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (967, 'MAÑANA');
-- CUE 700113504: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (967, 'TARDE');
-- CUE 700113504: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (967, 'INTERTURNO');
-- CUE 700113600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (968, 'MAÑANA');
-- CUE 700113600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (968, 'TARDE');
-- CUE 700113600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (968, 'INTERTURNO');
-- CUE 700113601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (969, 'MAÑANA');
-- CUE 700113601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (969, 'TARDE');
-- CUE 700113601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (969, 'INTERTURNO');
-- CUE 700113602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (970, 'MAÑANA');
-- CUE 700113602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (970, 'TARDE');
-- CUE 700113602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (970, 'INTERTURNO');
-- CUE 700113700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (971, 'MAÑANA');
-- CUE 700113700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (971, 'TARDE');
-- CUE 700113700: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (971, 'INTERTURNO');
-- CUE 700113701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (972, 'MAÑANA');
-- CUE 700113701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (972, 'TARDE');
-- CUE 700113701: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (972, 'INTERTURNO');
-- CUE 700113702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (973, 'MAÑANA');
-- CUE 700113702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (973, 'TARDE');
-- CUE 700113702: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (973, 'INTERTURNO');
-- CUE 700113703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (974, 'MAÑANA');
-- CUE 700113703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (974, 'TARDE');
-- CUE 700113703: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (974, 'INTERTURNO');
-- CUE 700113704: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (975, 'MAÑANA');
-- CUE 700113704: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (975, 'TARDE');
-- CUE 700113704: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (975, 'INTERTURNO');
-- CUE 700114000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (976, 'MAÑANA');
-- CUE 700114000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (976, 'TARDE');
-- CUE 700114000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (976, 'INTERTURNO');
-- CUE 700114500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (977, 'MAÑANA');
-- CUE 700114500: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (977, 'TARDE');
-- CUE 700114501: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (978, 'MAÑANA');
-- CUE 700114501: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (978, 'TARDE');
-- CUE 700114502: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (979, 'MAÑANA');
-- CUE 700114502: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (979, 'TARDE');
-- CUE 700114503: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (980, 'MAÑANA');
-- CUE 700114503: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (980, 'TARDE');
-- CUE 700114504: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (981, 'MAÑANA');
-- CUE 700114504: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (981, 'TARDE');
-- CUE 700114505: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (982, 'MAÑANA');
-- CUE 700114505: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (982, 'TARDE');
-- CUE 700114506: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (983, 'MAÑANA');
-- CUE 700114506: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (983, 'TARDE');
-- CUE 700114506: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (983, 'INTERTURNO');
-- CUE 700114900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (984, 'MAÑANA');
-- CUE 700114900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (984, 'TARDE');
-- CUE 700114900: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (984, 'INTERTURNO');
-- CUE 700115000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (985, 'MAÑANA');
-- CUE 700115000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (985, 'TARDE');
-- CUE 700115000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (985, 'INTERTURNO');
-- CUE 700115100: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (986, 'VESPERTINO');
-- CUE 700115200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (987, 'MAÑANA');
-- CUE 700115200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (987, 'TARDE');
-- CUE 700115200: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (987, 'INTERTURNO');
-- CUE 700115300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (988, 'MAÑANA');
-- CUE 700115300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (988, 'TARDE');
-- CUE 700115300: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (988, 'INTERTURNO');
-- CUE 700115400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (989, 'MAÑANA');
-- CUE 700115400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (989, 'TARDE');
-- CUE 700115400: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (989, 'INTERTURNO');
-- CUE 700116600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (990, 'MAÑANA');
-- CUE 700116600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (990, 'TARDE');
-- CUE 700116600: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (990, 'INTERTURNO');
-- CUE 700116800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (991, 'MAÑANA');
-- CUE 700116800: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (991, 'TARDE');
-- CUE 709998601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (992, 'MAÑANA');
-- CUE 709998601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (992, 'TARDE');
-- CUE 709998601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (992, 'VESPERTINO');
-- CUE 709998601: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (992, 'INTERTURNO');
-- CUE 709998602: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (993, 'MAÑANA');
-- CUE 709998603: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (994, 'MAÑANA');
-- CUE 709998604: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (995, 'MAÑANA');
-- CUE 709998605: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (996, 'MAÑANA');
-- CUE 709998606: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (997, 'MAÑANA');
-- CUE 709998607: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (998, 'MAÑANA');
-- CUE 709999000: INSERT INTO establecimientos_turnos (id_establecimiento, turno) VALUES (999, 'MAÑANA');

