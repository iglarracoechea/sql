create table contrato(idequipo integer not null, 
idjugador integer not null, 
cant_goles integer,
primary key(idequipo, idjugador),
foreign key(idequipo)references equipo(idequipo),
foreign key(idjugador)references jugadores(idjugador));

-- id equipo e idjugador van a estar referenciados a la tabla que corresponde, y se crea una llave compuesta

