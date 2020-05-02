use gestion_pedidos;

-- select Nombre_articulo,sección,precio, round(precio-(precio*0.07),2)as descuento_7 from productos

/*select Nombre_Articulo,fecha,sección, precio, round(precio-2,2)as DTO2$_EN_Ceramica from productos
where sección='cerámica' or sección='deportes'
group by sección
order by fecha desc;*/

select Nombre_Articulo, sección, precio, round(precio*1.02,2) as Precio_Aumentado_en_2 from productos
where sección='ferreteria';
