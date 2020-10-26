/*
NO FORMAN PARTE DEL STANDAR SQL

Clave primaria: valor único, not null
ordinarios: permite duplicados, null(index no agrupado)
únicos: no permite duplicados si null(index no agrupado)
compuestos: múltiples columnas, si null. no permite repeticion 

*/

-- MYSQL

alter table add PRIMARY KEY (campo)
create table prueba(nombre varchar(20), apellido varchar(20), edad TINYINT, fecha_nacimiento DATE, CARNET BOOLEAN)
CREATE table prueba (id_alumno INT AUTO_INCREMENT, nombre varchar(20), EDAD TINY	INT,PRIMARY KEY(id_alumno))


--ordinarios: se comportan como un campo normal, pero permiten hacer búsquedas más rapidos

create index mi_indice on ejemplo(apellido)

-- únicos: como los ordinarios pero sin dúplicado

create unique index mi_indice on ejemplo(nombre)

-- puede haber más de una clave primaria

--compuestos

create unique index mi_indice on ejemplo(nombre, apellido) -- puede estar formado por más de 2 campos


	

-- eliminar indices

drop index mi_indice on ejemplo --no es necesario especificar el campo

-- eliminar clave primaria

alter table ejemplo drop constraint nombre_de_indice             -- valido para sql server, access, y oracle
alter table ejemplo drop PRIMARY KEY   --en mysql


-- con parametros

CREATE PROCEDURE actualiza_productos(n_precio INT,codigo varchar(4))

UPDATE productos set precio = n_precio WHERE códigoartículo= codigo;


-- INDICE AGRUPADO: 

--Un índice agrupado define el orden en el cual los datos son físicamente almacenados en una tabla.
--La primary key

USE schooldb
					
EXECUTE sp_helpindex student




use schooldb
 
CREATE CLUSTERED INDEX IX_tblStudent_Gender_Score
ON student(gender ASC, total_score DESC)


/*

De la discusión encontramos las siguientes diferencias entre índices agrupados y no agrupados.

Puede haber sólo un índice agrupado por tabla. De todos modos, usted puede crear múltiples 
índices no agrupados en una sola tabla.
Los índices agrupados sólo ordenan tablas. Por lo tanto, no consumen almacenaje extra. 
Los índices no agrupados son almacenados en un lugar separado de la tabla real. Reclamando más espacio de almacenamiento.
Los índices agrupados son más rápidos que los índices no agrupados, ya que no involucran ningún paso extra de búsqueda.


-- Este índice agrupado almacena el registro en la tabla “student” en orden ascendente de “id”. 
--Por lo tanto, si el registro insertado tiene el id de 5, el registro será insertado en la 5ª fila de la tabla en 
--lugar de la primera fila. 
--De forma similar, si el cuarto registro tiene un id de 3, será insertado en la tercera fila en lugar de la cuarta fila.
								 
								 
*/
						
