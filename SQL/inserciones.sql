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
