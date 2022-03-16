INSERT INTO pasajero(idpasajero, idlugar, nombre, apellido, fechanacimiento) 
VALUES ('1003125521', '00001', 'Julian','Velasco','05/03/2000');

UPDATE pasajero
SET idlugar='00002', nombre='Hernesto', apellido='Velasco', fechanacimiento='05/03/2000' 
WHERE idpasajero = '1003125521';

DELETE FROM pasajero
WHERE idpasajero = '1003125521';

INSERT INTO aerolinea (codlinea, nombrelinea)
VALUES ('001','Avianca');