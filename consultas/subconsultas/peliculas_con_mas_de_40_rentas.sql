-- Ejercicio 6: Películas con más de 40 rentas

SELECT titulo, total_rentas
FROM (
    SELECT f.title AS titulo,
           COUNT(r.rental_id) AS total_rentas
    FROM film f
    JOIN inventory i ON f.film_id = i.film_id
    JOIN rental r ON i.inventory_id = r.inventory_id
    GROUP BY f.title
) AS subconsulta
WHERE total_rentas > 40;