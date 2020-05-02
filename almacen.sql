use almacen;

create table Compra(idproducto integer not null, idcliente integer not null, 
Marca varchar(35), Precio float,
Apenom varchar(75), Telefono integer,
primary key(idproducto,idcliente),
foreign key(idproducto) references productos(idproducto),
foreign key(idcliente) references cliente(idcliente));




