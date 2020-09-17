/*
procedimientos almacenados:
se implementan para más eficiencia y seguridad
consiste en almacenar en un procedimiento instrucciones repetitivas que se ejecutan desde diferentes aplicaciones, usuarios
creamos en el servidor y almacenamos en el servidor un procedimiento con la instrucción. y despues se llama 
desde la aplicación a ese procedimento almacenado
*/

create PROCEDURE muestra_clientes()

SELECT * from clientes WHERE POBLACIÓN = 'Madrid'
-- para llamar a un procedimiento: con esto se evita que los clientes no tengan acceso a las instrucciones sql (seguridad)
-- solo se les permite llamar a un procedimiento. el procedure se almacena en el servidor y se encarga de ejecutarlo

CALL `muestra_clientes`(); 

-- con parametros

CREATE PROCEDURE actualiza_productos(n_precio INT,codigo varchar(4))

UPDATE productos set precio = n_precio WHERE códigoartículo= codigo;

CALL actualiza_productos(60,'AR22')





-- procedure 2



DELIMITER $$
CREATE PROCEDURE calc_edad(year_nacimiento int)

	BEGIN
	 	declare year_actual int DEFAULT 2020;
     	declare age int;
     
     	SET age = year_actual - year_nacimiento;

	
    	SELECT age;
    
	END; $$
DELIMITER ;

CALL calc_edad(25)





-- trigger/ procedure

DELIMITER $$

CREATE TRIGGER revisa_precio_bu BEFORE UPDATE on productos FOR EACH ROW

	BEGIN
    	IF(new.precio < 0 ) THEN
        	set new.precio = 0;
            
    	ELSEIF(new.precio > 1000) THEN
        
        	SET new.precio = 1000;
        END IF;
    END; $$

    
DELIMITER;