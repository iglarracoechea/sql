-- order by: ordena de forma ascendente o descendente
select idequipo, idjugador, cant_goles
from contrato
where cant_goles between 0 and 50
order by cant_goles asc;

