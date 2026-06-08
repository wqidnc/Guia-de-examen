-- Ejercicio 9: Vista de películas no rentadas

CREATE VIEW vista_peliculas_no_rentadas AS
SELECT f.film_id,
       f.title
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
WHERE r.rental_id IS NULL;