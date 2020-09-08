/*
consultas multitabla: son consultas que podemos realizar pidiendo información de varias tablas alamacenas en la bdd

union externa: union, union all, except, intersect, minus
union interna: inner join, left join, right join


union externa: except, intersect, minus(ni mysql, ni access) no estas soportados por todos los gestores de base de datos. union, union all, si

union: permite unir varias tables almacenadas en la misma base de datos
requisitos de las tablas: 
deben tener mismo número de campos y compatibles.
tipos de datos compatibles. ej texto y numerico no es compatible. numerico y moneda si es compatible.
el nombre de los campos si pueden ser diferentes

la información de ambas tablas se unifica en una unica consulta y toma los nombres de los campos de la tabla 1

*/
--union: en el caso que haya registros repetidos en ambas tablas, los muestra una sola vez
-- indicar misma cantidad de campos en ambos select

SELECT * FROM productos WHERE SECCIÓN = 'deportes' UNION 
SELECT * FROM productosnuevos WHERE SECCIÓN='Deportes de riesgo' union 
SELECT


--union all: cuando hay registros repetidos los muestra siempre a todos

SELECT * FROM productos WHERE SECCIÓN = 'DEPORTES' UNION ALL SELECT * FROM productosnuevos


--Consultas de union interna. inner join, left join, right join. (estas 2 tambien llamadas outer join= composiciones externas)

--inner join: refleja la información común entre dos tablas(ambas con clave principal, y la otra con una foranea que hace 
-- referencia a la primera). devuelve información que existe en las dos tablas

--left join igual que inner pero devuelve además todos los registros de la tabla clientes

--ejemplo inner join

select *  from CLIENTES inner join PEDIDOS on CLIENTES.[CÓDIGO CLIENTE] = PEDIDOS.[CÓDIGO CLIENTE] 
where Población= 'Madrid'

-- ejemplo left join

select *  from CLIENTES left join PEDIDOS on CLIENTES.[CÓDIGO CLIENTE] = PEDIDOS.[CÓDIGO CLIENTE] 
where Población= 'Madrid'


-- ejemplo right join(en este caso no existe, por la integridad referencial)

select *  from CLIENTES right join PEDIDOS on CLIENTES.[CÓDIGO CLIENTE] = PEDIDOS.[CÓDIGO CLIENTE] 
where Población= 'Madrid'

/*
ATENCIÓN: Antes de hacer las relaciones, deben verificar que el "motor de almacenamiento" este como "InnoDB" y no como 
"MyIsam" . Para ello tienes que seleccionar cada tabla y después pinchar en la pestaña "OPERACIONES" al lado de "PRIVILEGIOS" 
y  luego en "opciones de tabla" debes cambiar una por una a "InnoDB", aprietas continuar y listo. 
Luego en el apartado de "ESTRUCTURA" en la parte superior te debiera aparecer la pestaña de "Vista de relaciones".
*/

/*desde mysql*/

SELECT clientes.CÓDIGOCLIENTE, POBLACIÓN, DIRECCIÓN, NÚMERODEPEDIDO, pedidos.CÓDIGOCLIENTE, FORMADEPAGO 
FROM clientes INNER JOIN pedidos ON clientes.CÓDIGOCLIENTE = pedidos.CÓDIGOCLIENTE 
WHERE POBLACIÓN= 'Madrid'

SELECT clientes.CÓDIGOCLIENTE, POBLACIÓN, DIRECCIÓN, NÚMERODEPEDIDO, pedidos.CÓDIGOCLIENTE, FORMADEPAGO 
FROM clientes LEFT JOIN pedidos ON clientes.CÓDIGOCLIENTE = pedidos.CÓDIGOCLIENTE 
WHERE POBLACIÓN= 'Madrid'

-- muestra los clientes que no hicieron pedidos

SELECT clientes.CÓDIGOCLIENTE, POBLACIÓN, DIRECCIÓN, NÚMERODEPEDIDO, pedidos.CÓDIGOCLIENTE, FORMADEPAGO 
FROM clientes left JOIN pedidos ON clientes.CÓDIGOCLIENTE = pedidos.CÓDIGOCLIENTE 
WHERE POBLACIÓN= 'Madrid' AND pedidos.CÓDIGOCLIENTE IS NULL