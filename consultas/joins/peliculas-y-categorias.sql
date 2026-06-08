-- Ejercicio 1: Lista todas las películas junto con su categoría (si tiene)

SELECT f.title, c.name AS categoria
FROM film f
LEFT JOIN film_category fc ON f.film_id = fc.film_id
LEFT JOIN category c ON fc.category_id = c.category_id;