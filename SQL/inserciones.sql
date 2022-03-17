INSERT INTO tipolugar (idtipolugar, desctipolugar)
VALUES ('001','Pais'),
		('002','Region'),
		('003','Departamento'),
		('004','Ciudad'),
		('005', 'Municipio'),
		('006', 'Provincia'),
		('007', 'Estado');
		('008', 'Aeropuerto')
		
INSERT into lugar (idlugar, idtipolugar, nomlugar)
VALUES ('00001', '001','Colombia');

-- Regiones
INSERT into lugar (idlugar, idtipolugar, lug_idlugar, nomlugar)
VALUES 	('00002', '002','00001','Andina'),
		('00003', '002','00001','Caribe'),
		('00004', '002','00001','Pacifica'),
		('00005', '002','00001','Llanos Orientales'),
		('00006', '002','00001','Amazonia'),
		
-- Ciudades
		('00007', '003','00002','Bogota'),
		('00008', '003','00002','Medellin'),
		('00009', '003','00004','Cali'),
		('00010', '003','00003','Barranquilla'),
		('00011', '003','00003','Cartagena'),
		('00012', '003','00002','Popayan');
--llenado aeropuetos internacionales
--paises
INSERT into lugar (idlugar, idtipolugar, nomlugar)
VALUES 	('00013', '001','Estados Unidos'),
		('00014', '001','venezuela'),
		('00015', '001','Brazil');
--estados usa
INSERT into lugar (idlugar, idtipolugar, lug_idlugar, nomlugar)
VALUES 	('00016', '007','00013','Florida'),
		('00017', '007','00013','New York'),
		('00018', '007','00013','Texas'),
		('00019', '007','00014','Zulia'),
		('00020', '007','00014','Amazonia'),
		('00021', '007','00015','Sao Pablo'),
--Ciudades
		('00022', '004','00016','Miami'),
		('00023', '004','00017','New York'),
		('00024', '004','00018','Dallas'),
		('00025', '004','00019','Maracaibo'),
		('00026', '004','00020','Puerto Ayacucho'),
		('00027', '007','00021','Sao Pablo'),
--Aeropuerto
		('00028', '004','00022','Aeropuerto Internacional de Miami - MIA'),
		('00029', '004','00023','Aeropuerto Internacional John F. Kennedy'),
		('00030', '004','00024','Aeropuerto Internacional de Dallas-Fort Worth'),
		('00031', '004','00025','Aeropuerto Internacional de La Chinita'),
		('00032', '004','00026','Aeropuerto Cacique Aramare'),
		('00033', '007','00027','Aeropuerto Internacional de São Paulo-Guarulhos');

--Dias de la semana
INSERT into Dia (idDia, AnomDIa)
VALUES ('1', 'Lunes'),
		('2', 'Martes'),
		('3', 'Miercoles'),
		('4', 'Jueves'),
		('5', 'Viernes'),
		('6', 'Sabado'),
		('7', 'Domingo');

