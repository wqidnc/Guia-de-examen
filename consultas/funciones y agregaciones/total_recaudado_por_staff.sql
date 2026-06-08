-- Ejercicio 7: Total recaudado por cada miembro del staff

SELECT s.staff_id,
       s.first_name,
       s.last_name,
       SUM(p.amount) AS total_recaudado
FROM staff s
JOIN payment p ON s.staff_id = p.staff_id
GROUP BY s.staff_id;