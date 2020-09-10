/*
NO FORMAN PARTE DEL STANDAR SQL

Clave primaria: valor único, not null
ordinarios: permite duplicados, null
únicos: no permite duplicados si null
compuestos: múltiples columnas, si null. no permite repeticion 

*/

-- MYSQL

alter table add PRIMARY KEY (campo)
create table prueba(nombre varchar(20), apellido varchar(20), edad TINYINT, fecha_nacimiento DATE, CARNET BOOLEAN)
CREATE table prueba (id_alumno INT AUTO_INCREMENT, nombre varchar(20), EDAD TINYINT,PRIMARY KEY(id_alumno))


--ordinarios: se comportan como un campo normal, pero permiten hacer búsquedas más rapidos

create index mi_indice on ejemplo(apellido)

-- únicos: como los ordinarios pero sin dúplicado

create unique index mi_indice on ejemplo(nombre)

-- puede haber más de una clave primaria

--compuestos

create unique index mi_indice on ejemplo(nombre, apellido) -- puede estar formado por más de 2 campos