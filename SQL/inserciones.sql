INSERT INTO tipolugar (idtipolugar, desctipolugar)
VALUES ('001','Pais'),
		('002','Region'),
		('003','Departamento'),
		('004','Ciudad'),
		('005', 'Municipio'),
		('006', 'Provincia'),
		('007', 'Estado');
		
INSERT into lugar (idlugar, idtipolugar, nomlugar)
VALUES ('00001', '001','Colombia');

-- Regiones
INSERT into lugar (idlugar, idtipolugar, lug_idlugar, nomlugar)
VALUES ('00002', '002','00001','Andina'),
		('00003', '002','00001','Caribe')
		('00004', '002','00001','Pacifica')
		('00005', '002','00001','Llanos Orientales')
		('00006', '002','00001','Amazonia')
		
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
VALUES 	('00002', '001','Estados Unidos'),
		('00003', '001','venezuela'),
		('00004', '001','Brazil');
--estados usa
INSERT into lugar (idlugar, idtipolugar, lug_idlugar, nomlugar)
VALUES ('00013', '007','00002','Florida'),
		('00014', '007','00002','New York'),
		('00015', '007','00002','Texas'),
		('00016', '007','00003','Zulia'),
		('00017', '007','00003','Amazonia'),
		('00018', '007','00004','Sao Pablo'),
--Ciudades
		('00019', '004','00013','Miami')
		('00020', '004','00014','New York'),
		('00021', '004','00015','Dallas'),
		('00022', '004','00016','Maracaibo'),
		('00023', '004','00017','Puerto Ayacucho'),
		('00023', '007','00018','Sao Pablo');
