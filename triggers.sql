/*
un trigger es un objeto más, que va a estar asociado a una tabla. 
que este trigger ejecutara una acción cuando ocurre algo en esa tabla(insert, update,eliminar)

desencadena una acción despues de que cada usuario haya ingresado un registro en la tabla,

y que acción va a desencadenar, por ej: copiar o almacenar en otra tabla diferente 
el nombre usuario que inserto el registro, el momento(dia,mes, hora). se hará de forma automatica

se usa para crear copias de seguridad en otra tabla, antes de actualizar o eliminar algún dato.

se usan para tareas de mantenimiento y administración de bdd. no se pueden utilizar en access
las macros simulan los triggers en access

cuando se va a ejecutar la acción de ese triger. before or after (antes o despues) 
ej: trigger que compruebe que la edad sea siempre positiva

con insert: tendra que realizarse siempre despues(After)
ej: trigger que compruebe que la edad sea siempre positiva(en este caso before, para hacer la comprobación)

update:
*/
-- el new hace referencia al nuevo valor,  old: referencia al dato antiguo

--insert

CREATE TRIGGER PRODUCTOS_AI AFTER INSERT ON productos FOR EACH ROW 
INSERT INTO reg_productos(CODIGOARTICULO,NOMBREARTICULO,PRECIO,INSERTADO) 
VALUES (new.CÓDIGOARTÍCULO,new.NOMBREARTÍCULO,new.PRECIO, NOW()) 
	
-- update: se puede usar para mostrar en una tabla que valor tenian los registros de x campo antes de el update, y tambien
-- mostrar quien hizo ese cambio y cuando lo hizo



-- nueva tabla donde se copian los datos

CREATE TABLE Productos_actualizados (ANTERIOR_CODIGOARTICULO VARCHAR(4), ANTERIOR_NOMBREARTICULO VARCHAR(25), 
	ANTERIOR_SECCION VARCHAR(15), ANTERIOR_PRECIO INT (4), 				     								  
	ANTERIOR_IMPORTADO VARCHAR(15), ANTERIOR_PAISDEORIGEN VARCHAR(15), ANTERIOR_FECHA DATE, NUEVO_CODIGOARTICULO VARCHAR(4), 															 
	NUEVO_NOMBREARTICULO VARCHAR(25), NUEVO_SECCION VARCHAR(15), NUEVO_PRECIO INT (4), NUEVO_IMPORTADO VARCHAR(15), 
	NUEVO_PAÍSDEORIGEN VARCHAR (15), NUEVO_FECHA DATE, USUARIO VARCHAR(15), FECHA_MODIF DATE)


-- para almacenar el usuario que hizo la modificación(current_user), fecha_modificacion(now)
--update

create trigger ACTUALIZA_PRODUCTOS_BU before update on productos for each row INSERT into productos_actualizados 
(anterior_codigoarticulo, anterior_fecha, anterior_importado, anterior_nombrearticulo, anterior_paisdeorigen, 
anterior_precio, anterior_seccion, nuevo_codigoarticulo, nuevo_fecha, nuevo_importado, nuevo_nombrearticulo, 
nuevo_paisdeorigen, nuevo_precio, nuevo_seccion, usuario, f_modif)

VALUES (old.códigoartículo, old.fecha, old.importado, old.nombreartículo, old.paísdeorigen, old.precio, old.sección, 
new.codigoartículo, new.fecha, new.importado, new.nombreartículo, new.paísdeorigen, new.precio, new.sección, 
CURRENT_USER(), now())


--actulización de tabla
UPDATE productos set precio = precio + 20 WHERE códigoartículo='AR07'



-- delete

CREATE TRIGGER ELIMPRODUCT_AD AFTER DELETE ON productos FOR EACH ROW 
INSERT INTO product_eliminados( C_ART, NOMBRE, PAIS_ORIGEN, PRECIO, SECCION) 
VALUES (old.códigoartículo, old.nombreartículo, old.paísdeorigen, old.precio, old.sección)

-- PARA MODIFICAR UN TRIGGER DESDE CONSOLA HAY QUE ELIMINARLO PRIMERO Y DESPUES VOLVERLO A CREAR

DROP TRIGGER IF EXISTS `ELIMPRODUCT_AD`;CREATE DEFINER=`root`@`localhost` TRIGGER `ELIMPRODUCT_AD` 
AFTER DELETE ON `productos` FOR EACH ROW INSERT INTO product_eliminados( C_ART, NOMBRE, PAIS_ORIGEN, PRECIO, SECCION, 
USUARIO, FECHA_MODIF) 
VALUES (old.códigoartículo, old.nombreartículo, old.paísdeorigen, old.precio, old.sección, CURRENT_USER(), NOW())

DROP TRIGGER IF EXISTS ELIMPRODUCT_AD; CREATE TRIGGER ELIMPRODUCT_AD AFTER DELETE ON productos FOR EACH ROW 
INSERT INTO product_eliminados( C_ART, NOMBRE, PAIS_ORIGEN, PRECIO, SECCION, usuario, fecha_MODIF ) 
VALUES (old.códigoartículo, old.nombreartículo, old.paísdeorigen, old.precio, old.sección, CURRENT_USER, NOW())