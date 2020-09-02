/*sentencia*/

select EMPRESA, DIRECCIÓN, POBLACIÓN FROM clientes ;  

/*clausulas
from: especifica la tbla de la que se quieren obtener registros
where especifica las condiciones o criterios de los registros seleccionados
group by: para agrupar los registros seleccionados en función de un campo
having: especifica las condiciones o criterios que deben cumplir los grupos
order by: ordena los registros seleccionados en función de un campo

*/

/*operadores

between: para especificar rangos (muy utlizado con digitos)
<> : distinto
like : como 
in: para especificar registros en un campo concreto 


logicos:and or not


orden de escritura 

comando + From + Where + Group by + Having + Order by

* para ver todos los campos

en los nombres de las tablas lo recomendable es no incluir tildes
*/

SELECT nombreartículo , sección , precio From  productos 
where sección = "CERÁMICA" 

-- en este caso no muestra nada porque el campo no puede tener dos secciones a la vez
SELECT nombreartículo , sección , precio From  productos where sección = "CERÁMICA" AND sección = "DEPORTES"


-- este es el correcto

SELECT nombreartículo , sección , precio From  productos where sección = "CERÁMICA" or sección = "DEPORTES"

SELECT nombreartículo , sección , precio From  productos where sección = "CERÁMICA" or sección = "DEPORTES" and Paísdeorigen = "USA"

-- REGISTROS POR PAIS DE ORIGEN CON TODOS LOS CAMPOS MOSTRADOS

SELECT * FROM productos WHERE `PAÍSDEORIGEN` = 'USA'

-- REGISTROS POR PAIS DE ORIGEN CON TODOS LOS CAMPOS MOSTRADOS DIFERENCIADOS POR SECCIÓN
SELECT * FROM productos WHERE SECCIÓN= 'DEPORTES' AND PAÍSDEORIGEN = 'USA'

--POR PAISORIGEN CON TODOS LOS CAMPOS MOSTRADOS DIFERENCIADOS en SECCIÓN Y PRECIO no funciona en mysql por el tipo de dato varchar 
SELECT * FROM productos WHERE SECCIÓN= 'DEPORTES' AND PAÍSDEORIGEN = 'USA' AND PRECIO > 110 AND PRECIO < 300
SELECT * FROM productos WHERE SECCIÓN= 'DEPORTES' AND PAÍSDEORIGEN = 'USA' AND PRECIO BETWEEN 1 AND 100

--solucion eliminar tabla y volver a importar cambiando tipo de dato

SELECT SECCIÓN , PRECIO FROM `productos` WHERE PRECIO BETWEEN 0 AND 7

SELECT SECCIÓN , PRECIO FROM `productos` WHERE SECCIÓN = 'DEPORTES' AND PRECIO BETWEEN 0 AND 200

-- CON FECHA. EN MYSQL VAN ENTRE ''

-- DATE EN SQL SERVER FORMATO FECHA ES LA VERSION AMERICANA 04-31-2018

SELECT * FROM `productos` WHERE FECHA BETWEEN '2000-03-01' AND '2000-05-31'
SELECT * FROM `productos` WHERE FECHA >='2000-03-01' AND FECHA <= '2000-05-31' -- OTRA FORMA