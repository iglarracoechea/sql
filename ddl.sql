/*
DDL: creación de tablas.

create: crear tablas o base de datos
alter: modificar las prodiedades, los campos de las tablas
drop:eliminar base de datos y tablas
truncate: borrar todas las filas(registros)

tipos de tablas: tablas base(persistentes,temporales:globales, temporales: locales creadas, temporales: locales declaradas)

tablas temporales: se usa por ejemplo para informes
*/

/*
tipos de datos: predefinido, construido, definido por el usuario

predefinido: cadena(char,varchar), numérico, fecha/hora, booleanos. los subtipos de datos dependen del gestor de BDD

TINYINT CANTIDAD DE NUEROS ENTRE 0 Y 255
*/

-- mysql int int auto_increment

create table prueba(nombre varchar(12))
drop TABLE prueba 

create table prueba(nombre varchar(20), apellido varchar(20), edad TINYINT, fecha_nacimiento DATE, CARNET BOOLEAN)
CREATE table prueba (id_alumno INT AUTO_INCREMENT, nombre varchar(20), apellido varchar(20), EDAD TINYINT, 
fecha_nacimiento DATE, CARNET BOOLEAN, PRIMARY KEY(id_alumno)) --hay que indicarle una primary key para el auto_increment

-- access. autonúmerico counter

create table prueba(nombre text(20))

create table prueba(nombre text(20), apellido text(20), edad BYTE, fecha_nacimiento DATE, CARNET BIT)

create table prueba(idalumno counter nombre text(20), apellido text(20), edad BYTE, fecha_nacimiento DATE, CARNET BIT)

--modificar/agregar tablas en mysql

alter table prueba add column población varchar(20)
ALTER TABLE prueba DROP COLUMN población

--modificar/agregar tablas en access

alter table clientes add column fecha_baja DATE

alter table clientes drop column fecha_baja

--modificar propiedad de un campo mysql

ALTER TABLE prueba ALTER COLUMN Lugar_nacimiento SET DEFAULT 'desconocido' -- cambia de null a desconocido
ALTER TABLE prueba ALTER COLUMN Lugar_nacimiento DROP DEFAULT 
alter TABLE prueba MODIFY column apellido varchar(20)


--modificar propiedad de un campo access

alter table clientes alter column fecha_baja DATE


UPDATE clientes SET POBLACIÓN ='Buenos Aires' where CÓDIGOCLIENTE = 'CT01'
delete from calificaciones
where idalumno=3;

alter table add PRIMARY KEY (campo)
                                
alter table clientes alter column fecha_baja DATE


UPDATE clientes SET POBLACIÓN ='Buenos Aires' where CÓDIGOCLIENTE = 'CT01'

delete from calificaciones
where idalumno=3;

alter table add PRIMARY KEY (campo)

INSERT INTO `prueba` (`idprueba`, `nombre`, `apellido`, `fecha`, `edad`, `contado`) 
VALUES ('1', 'ignacio', 'larracoechea', '09/04/1995', '25', '1');
