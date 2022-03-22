INSERT into diaprograma (idprograma, iddia)
Values (00001,3)

Select * from diaprograma

INSERT INTO programavuelo (idprograma,idlugar, lug_idlugar, lug_idlugar2, codlinea) 
VALUES (00001, '00037','00039', '00033', 'AVI')
delete from programavuelo

Select * from programavuelo
select * from diaprograma

Select pv.idprograma, pv.idlugar, pv.lug_idlugar, pv.lug_idlugar2, pv.codlinea 
FROM programavuelo as pv, diaprograma as dp, dia as d 
WHERE (dp.iddia = d.iddia) and upper(d.anomdia) = upper('lunes') and dp.idprograma = pv.idprograma

select * from lugar
Where idlugar = '00034'