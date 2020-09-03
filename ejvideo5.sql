/*
1.	Realizar una consulta sobre la tabla “Clientes”  que muestre los campos “Dirección”, “Teléfono” y “Población”. 
Este último debe aparecer 
en la consulta con el nombre de “Residencia”. Los registros aparecerán ordenados descendentemente por el campo “Población”.
*/

SELECT DIRECCIÓN, TELÉFONO, POBLACIÓN as residencia from clientes order by residencia DESC

/*

2.	Realizar una consulta que muestre que poblaciones hay en la tabla “Clientes”.

*/

SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) as total FROM clientes GROUP BY POBLACIÓN

/*
3.	Realizar una consulta de agrupación que muestre la media del precio de los artículos de todas las secciones. 
Mostrar en la consulta los campos sección y suma por sección.
*/

SELECT SECCIÓN, AVG(PRECIO) as promedio_precio FROM productos GROUP by SECCIÓN
SELECT SECCIÓN, sum(PRECIO) as total_precio FROM productos GROUP by SECCIÓN

/*

4.	Realizar una consulta de agrupación que muestre la media del precio de todas 
las secciones menos de juguetería. En la consulta deberán aparecer los campos “Sección” y “Media por sección”.

*/

SELECT SECCIÓN, avg(PRECIO) as promedio_precio FROM productos 
WHERE SECCIÓN <> 'juguetería' 
GROUP by SECCIÓN 
HAVING promedio_precio > 40

/*
5.	Realizar Una consulta que muestre cuantos artículos hay de la sección “Deportes”.
*/

SELECT SECCIÓN, count(CÓDIGOARTÍCULO) as contar_articulos from productos 
where SECCIÓN = 'Deportes'
GROUP by SECCIÓN;