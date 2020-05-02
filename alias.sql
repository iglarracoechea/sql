-- alias para simplificar las consultas en sql.
/*select idequipo as equipo, Nombre_Equipo as nom_equipo  
from equipo ;*/
/*
select idjugador as jugador, Nombre as nom, apellido as ape
from jugadores;*/

select  jug.idjugador, eq.idequipo      
from jugadores jug, equipo eq;    -- alias para tablas 

-- especificación de campos, para uniones de dos tablas 
-- funciona para subconsultas, facilita la obtención de campos
