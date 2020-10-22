-- triggers en sql server

create trigger TR_INSERTAR_CLIENTES 
ON CLIENTES FOR INSERT 
as
insert into after_insert_clientes values(SYSTEM_USER, GETDATE(), 'Registro Insertado')


-- insert. inserted tabla temporal ya dada por sql

alter trigger TR_INSERTAR_CLIENTES 
ON CLIENTES FOR INSERT 
as
set nocount on -- impide que se muestre en los mensajes los registros afectados en la ejecución
declare @cod_cliente varchar(4), @empresa varchar(25), @poblacion varchar(10) 
select @cod_cliente = codigo_cliente, @empresa = empresa, @poblacion = poblacion from inserted 
insert into after_insert_clientes values(@cod_cliente,@empresa, @poblacion ,GETDATE(),SYSTEM_USER, 'Registro Insertado')
go



-- deleted inserted = tablas temporales

create trigger TR_ELIMINAR_CLIENTES
ON CLIENTES FOR delete
AS
SET NOCOUNT ON 
declare @cod_cliente varchar(4), @empresa varchar(25), @poblacion varchar (10)
select @cod_cliente = codigo_cliente, @empresa = empresa , @poblacion = poblacion from deleted
insert into after_eliminar_clientes values(@cod_cliente, @empresa, getdate(), getdate(), system_user, 'Registro ELIMINADO')
go

alter table after_eliminar_clientes alter column fecha_eliminacion date

-- update

create trigger tr_actualizar_clientes
on clientes for update
as
set nocount on 
declare @cod_cliente varchar(4), @empresa varchar(25), @poblacion varchar(10)
select @cod_cliente = codigo_cliente, @empresa = empresa, @poblacion = poblacion from inserted
insert into after_actualizar_clientes values (@cod_cliente, @empresa, @poblacion, GETDATE(), SYSTEM_USER, 'Registro Actualizado')
go

