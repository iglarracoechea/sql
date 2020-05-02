select sección, round((precio),2) as promedio_articulos from productos   			  
group by sección	  -- agrupa los registros por sección y los promedia
having sección='Deportes' or sección='Confección'	  -- para agrupación de totales usar having,
order by promedio_articulos desc;

