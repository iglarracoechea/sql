select Población,count(codigocliente) as contador_cliente
from clientes
group by Población
