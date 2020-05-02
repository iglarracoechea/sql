/*select sección, avg(precio) as prom_precio
from productos
where not sección='juguetería'
group by sección;
*/

select sección, count(Codigoarticulo) as count_sec
from productos
where sección='deportes';