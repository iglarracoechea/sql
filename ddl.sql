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

create table prueba(idalumno counter, nombre text(20), apellido text(20), edad BYTE, fecha_nacimiento DATE, CARNET BIT)

--modificar/agregar tablas en mysql

alter table prueba add column población varchar(20)
ALTER TABLE prueba DROP COLUMN población

--modificar/agregar tablas en access

alter table clientes add column fecha_baja DATE

alter table clientes drop column fecha_baja

--modificar propiedad de un campo mysql

ALTER TABLE prueba ALTER COLUMN Lugar_nacimiento SET DEFAULT 'desconocido' -- cambia de null a desconocido. sql server
ALTER TABLE prueba ALTER COLUMN Lugar_nacimiento DROP DEFAULT 
alter TABLE prueba MODIFY column apellido varchar(20)


--modificar propiedad de un campo access

alter table clientes alter column fecha_baja DATE


UPDATE clientes SET POBLACIÓN ='Buenos Aires' where CÓDIGOCLIENTE = 'CT01'

delete from calificaciones
where idalumno=3;

alter table add PRIMARY KEY (campo)

INSERT INTO `prueba` (`idprueba`, `nombre`, `apellido`, `fecha`, `edad`, `contado`) 
VALUES ('1', 'ignacio', 'larracoechea', '09/04/1995', '25', '1');

-- YYYY-MM-DD formato en sql server
-- sql server

CREATE TABLE Persons (
    Personid int IDENTITY(1,1) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);


/*create table Productos_Pedidos( Número_pedido integer not null, 
codigoarticulo integer not null, 
Unidades integer,
primary key(Número_pedido, codigoarticulo),

constraint FK_Detalle_pedidos
foreign key(Número_pedido) references pedidos(Número_pedido)
ON UPDATE CASCADE
ON DELETE CASCADE,	

foreign key(codigoarticulo) references productos(codigoarticulo)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);


ALTER TABLE PEDIDOS
ADD CONSTRAINT FK_DETALLES_PEDIDOS
FOREIGN KEY(NUMERO_PEDIDO) REFERENCES PEDIDOS(NUMERO_PEDIDOS)
ON UPDATE CASCADE
ON DELETE CASCADE,
FOREING KEY(CODIGOARTICULO) REFERENCES PRODUCTOS(CODIGOARTICULO)
	ON UPDATE CASCADE 
	ON DELETE CASCADE
*/

/* para cargar imagenes:

CREATE TABLE Nota ( Id int IDENTITY (1, 1) NOT NULL, Titulo varchar(50) NOT NULL, Imagen varbinary(MAX) NOT NULL) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]




db gestion pedidos sql server

alter table pedidos add constraint fk_pedidos foreign key (codigo_cliente) references clientes(codigo_cliente) on update cascade on delete cascade
alter table productos_pedidos add constraint fk_productos_pedidos_2 foreign key(codigo_articulo) references productos (codigo_articulo) on update cascade on delete cascade

create table productos_pedidos(numero_pedido int primary key, codigo_articulo int
constraint fk_detalles_pedidos
foreign key(numero_pedido) references pedidos(numero_pedido)
on update cascade
on delete cascade
);

/*
insert into clientes(codigo_cliente, empresa, direccion, poblacion,telefono,responsable)
values('CT01','Beltrán e Hijos','Las Fuentes 78', 'Madrid','914-45-64-35','Angel Martinez')

*/
