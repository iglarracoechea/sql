select sección, avg(precio) as prom_precio
from productos
-- where sección='deportes'
group by sección;