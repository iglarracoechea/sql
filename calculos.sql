/*select Nombre_Articulo, sección, precio, round(precio*1.21,2) as Precio_Iva  -- round para redondear con 2 digitos 	
from productos;*/
-- now devuelve fecha y hora actuales
-- datediff refleja los dias de diferencia entre la fecha de hoy(now) y fecha de la tabla

use gestion_pedidos;
select Nombre_Articulo, sección, precio,fecha, date_format(now(),'%d-%m-%y') as dia_hoy, datediff(now(),fecha) as diferencia_dias 
from productos
where sección='Deportes';