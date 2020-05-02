/*truncate table empleados; -- borra los datos de la tabla
drop table empleados;    -- borra por completo(Estructur)la tabla, incluyendo columnas.
drop database if exists empresa */ -- borra por completo la base de datos. 

create table empleados(idempleados int primary key, nombres varchar(30), cargo varchar(20)); 