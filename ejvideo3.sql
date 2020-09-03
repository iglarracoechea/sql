-- ej 1 video
--Realizar una consulta que muestre los campos “Empresa” y “Población” de la tabla “Clientes”

SELECT EMPRESA, POBLACIÓN from clientes

-- ej 2 video 3. Realizar una consulta que muestre los artículos d la sección “Cerámica”.

SELECT CÓDIGOARTÍCULO, SECCIÓN FROM productos WHERE SECCIÓN = 'cerámica'

-- ej 3 video 3.Realizar una consulta que muestre los productos de la sección “Deportes” cuyo
--precio esté entre 100 y 200 €. En la consulta solo se mostrarán los campos
--“Nombre de artículo” y “Precio”

select nombrearticulo, precio from productos WHERE SECCIÓN = 'Deportes' and PRECIO BETWEEN 100 and 200

-- ej 4 video 3. Realizar una consulta que muestre los productos cuyo país no sea España

SELECT * from productos WHERE not PAÍSDEORIGEN = 'España'


-- ej 5 video 3.Realizar una consulta que muestre los artículos españoles de la sección “Deportes”
--o aquellos cuyo precio sea superior a 350 € independientemente de cual sea su
--sección o país de origen.

SELECT * FROM productos WHERE SECCIÓN = 'deportes' or PRECIO > 350

-- ej 6 video 3.Realizar una consulta que muestre los productos cuya fecha esté entre 1/05/2001
--y 15/12/2001. En la consulta solo se visualizarán los campos “Nombre de
--artículo”, “Sección” y “Fecha”.

SELECT NOMBREARTÍCULO, SECCIÓN, FECHA FROM productos WHERE FECHA BETWEEN '2001-05-01' AND '2001-12-05' 

