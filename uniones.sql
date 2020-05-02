use fifa;

-- goles de messi en boca 

select eq.idequipo, jug.idjugador, cont.cant_goles
from equipo eq, jugadores jug, contrato cont
where jug.idjugador=cont.idjugador and eq.idequipo=cont.idequipo
-- and jug.Apellido='Ronaldo' and eq.Nombre_Equipo='Boca Juniors'
order by jug.idjugador desc, cont.cant_goles desc;  -- ordena primero por id jugador, si coinciden lo hace por cant_goles


