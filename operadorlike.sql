-- operador like
-- se usa con where
	-- like 'v%'   -- devuelve los que empiezan con v
    -- like '%v'   -- devuelve los que terminan con v
    -- like '%V%'
    use fifa; 
    
    select *
    from jugadores
    where nombre like 'Li%';
    
	select *
    from equipo
    where Nombre_Equipo like '%s%'; -- devuelve los que tienen un . en el medio	