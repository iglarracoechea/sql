/*
es una consulta dentro de otra. compara una consulta interna con una consulta externa(o padre). select dentro de otro
tipos:
escalonada:
de lista:
correlacionada:

comparación:
in, any, all
like: para comparar cadenas de caracteres

*/

-- subconsulta escalonada: la consulta interna devuelve una unica columna o unico registro.(consulta dentro de otra)

--PRIMER PASO
SELECT AVG(PRECIO) FROM productos -- A PARTIR DEL PROM DE PRECIO SE HACE OTRA CONSULTA(SUBCONSULTA)

--SEGUNDO PASO

SELECT NOMBREARTÍCULO, SECCIÓN FROM productos WHERE PRECIO > ( SELECT AVG(PRECIO) FROM productos)




--subconsulta de lista: devuelve una lista de registros(se usan mucho in, any , all)
-- all el precio que tiene que superior a todos los valores de la subconsulta( precio = cerámica, es decir mayor a 99.99)

SELECT * FROM productos WHERE PRECIO > all (SELECT PRECIO FROM productos WHERE SECCIÓN = 'Cerámica')


-- con any es lo opuesto. mayor a cualquier preci de cerámica

SELECT * FROM productos WHERE PRECIO > any(SELECT PRECIO FROM productos WHERE SECCIÓN = 'Cerámica')

-- ejemplo con ambos

SELECT * FROM productos WHERE PRECIO > ALL (SELECT PRECIO FROM productos WHERE SECCIÓN = 'Deportes')
SELECT * FROM productos WHERE PRECIO > any (SELECT PRECIO FROM productos WHERE SECCIÓN = 'Deportes')