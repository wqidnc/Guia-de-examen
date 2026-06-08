-- Ejercicio 8: Cantidad de películas por categoría

SELECT c.name AS categoria,
       COUNT(f.film_id) AS total_peliculas
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
GROUP BY c.name;