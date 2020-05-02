use gestion_pedidos;
/*create table Productos_Pedidos( Número_pedido integer not null, 
codigoarticulo integer not null, 
Unidades integer,
primary key(Número_pedido, codigoarticulo),
foreign key(Número_pedido) references pedidos(Número_pedido),
foreign key(codigoarticulo) references productos(codigoarticulo));*/

alter table cliente rename Clientes
alter table Clientes drop column teléfono
alter table Clientes add Teléfono varchar(30) after Población    

alter table Productos 
change importados  Importado varchar(2);

alter table pedidos modify Código_cliente integer
Decimal para numeros bien precisos
 
insert into productos_pedidos
values(10,9,8);

