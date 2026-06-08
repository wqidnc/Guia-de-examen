-- Ejercicio 3: Procedimiento para agregar cliente y dirección

DELIMITER $$

CREATE PROCEDURE agregar_cliente_y_direccion(
    IN p_first_name VARCHAR(45),
    IN p_last_name VARCHAR(45),
    IN p_email VARCHAR(50),
    IN p_address VARCHAR(50),
    IN p_city_id INT,
    IN p_store_id INT
)
BEGIN

    DECLARE v_address_id INT;

    INSERT INTO address(address, city_id, last_update)
    VALUES(p_address, p_city_id, NOW());

    SET v_address_id = LAST_INSERT_ID();

    INSERT INTO customer(
        store_id,
        first_name,
        last_name,
        email,
        address_id,
        create_date
    )
    VALUES(
        p_store_id,
        p_first_name,
        p_last_name,
        p_email,
        v_address_id,
        NOW()
    );

END$$

DELIMITER ;