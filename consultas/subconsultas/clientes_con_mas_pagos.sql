-- Ejercicio 5: Clientes con más pagos que el cliente con menos pagos

SELECT c.customer_id,
       c.first_name,
       COUNT(p.payment_id) AS total_pagos
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id
HAVING total_pagos > (
    SELECT MIN(conteo)
    FROM (
        SELECT COUNT(payment_id) AS conteo
        FROM payment
        GROUP BY customer_id
    ) AS sub
);