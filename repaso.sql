-- select * from clientes
select count(codigo_cliente) as total, empresa from clientes group by empresa order by empresa

select * from productos

select seccion, nombre_articulo, precio + (precio*0.21) as precio_iva, fecha from productos where fecha between '2001-08-15' and '2002-07-24'

select productos_pedidos.codigo_articulo, seccion, cantidad, nombre_articulo, precio, productos.codigo_articulo
from productos_pedidos inner join productos on productos_pedidos.codigo_articulo = productos.codigo_articulo

create view pedidos_fecha_cliente as

select productos_pedidos.numero_pedido as solicitados, pedidos.numero_pedido, pedidos.codigo_cliente as realizados, fecha_pedido, empresa, poblacion, clientes.codigo_cliente 
from productos_pedidos inner join pedidos on productos_pedidos.numero_pedido = pedidos.numero_pedido 
inner join clientes on pedidos.codigo_cliente = clientes.codigo_cliente


create table socios(idsocios bigint identity(1,1) primary key, nombre varchar(25), fecha date, edad tinyint, fecha_incorporacion date)

insert into socios
values('ignacio', 28, '2020-10-01')

select * from socios

update socios set fecha_incorporacion = '2019-04-30' where idsocios = 2

delete from socios where idsocios = 2

truncate table socios

create table insert_socio(idsocios bigint, nombre varchar(25), fecha_insersion date, usuario varchar (18))

alter table insert_socios alter column idsocios bigint

create trigger tr_insertar_socios
on socios for insert
as
set nocount on
declare @idsocios bigint, @nombre varchar(25)
select @idsocios = idsocios, @nombre = nombre from inserted
insert into insert_socio
values(@idsocios,@nombre, GETDATE(), SYSTEM_USER)

select * from insert_socio

create proc Sp_consulta_datos_productos
as 
select * from productos

execute Sp_consulta_datos_productos



create proc sp_sumar_cantidad
@codigo_articulo as varchar(4),
@ajustar  as int
as
update productos_pedidos set cantidad = cantidad + @ajustar
where codigo_articulo = @codigo_articulo

exec sp_sumar_cantidad 'AR10', 1

DROP PROC sp_sumar_cantidad

select * from productos_pedidos
