/*

1-Realizar una consulta que muestre aquellos productos españoles cuya fecha esté
comprendida entre febrero y mayo del 2002. Ordenar los resultados por el campo
“Nombre artículo” descendentemente.

*/

select CÓDIGOARTÍCULO, SECCIÓN, NOMBREARTÍCULO from productos
WHERE FECHA BETWEEN '2002-02-01' AND '2002-05-31'
ORDER BY NOMBREARTÍCULO DESC

/*2. Realizar una consulta que muestre los campos “Empresa”, “Dirección” y
“Población” de la tabla “Clientes”. Ordenar la consulta por el campo “Población”
ascendentemente y por “Dirección” descendentemente.*/

SELECT EMPRESA, POBLACIÓN,DIRECCIÓN FROM clientes ORDER BY POBLACIÓN, DIRECCIÓN DESC

/* 3- Realizar una consulta que muestre todos los campos de la tabla “Clientes”.
Ordenar los resultados por el campo “Población” ascendentemente.*/

SELECT * FROM clientes ORDER BY POBLACIÓN