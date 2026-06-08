-- Ejercicio 10: Vista de películas con categoría

CREATE VIEW vista_peliculas_categoria AS
SELECT f.film_id,
       f.title,
       c.name AS categoria
FROM film f
LEFT JOIN film_category fc ON f.film_id = fc.film_id
LEFT JOIN category c ON fc.category_id = c.category_id;