use empresa;
select *
from calificaciones
where calificacion between 6 and 8 and not nombre='Julian';  -- between incluye tambien el 8