-- Ejercicio 4: Cambiar dirección de un cliente

DELIMITER $$

CREATE PROCEDURE cambiar_direccion_cliente(
    IN p_customer_id INT,
    IN p_nueva_direccion VARCHAR(50)
)
BEGIN

    DECLARE v_address_id INT;

    SELECT address_id
    INTO v_address_id
    FROM customer
    WHERE customer_id = p_customer_id;

    UPDATE address
    SET address = p_nueva_direccion,
        last_update = NOW()
    WHERE address_id = v_address_id;

END$$

DELIMITER ;