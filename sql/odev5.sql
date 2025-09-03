-- Ödev 5 — dvdrental
-- 1) title 'n' ile biten en uzun 5 film
SELECT title, length
FROM film
WHERE title LIKE '%n'
ORDER BY length DESC, title ASC
LIMIT 5;


-- 2) title 'n' ile biten en kısa ikinci 5 film (6–10. sıradakiler)
SELECT title, length
FROM film
WHERE title LIKE '%n'
ORDER BY length ASC, title ASC
OFFSET 5
LIMIT 5;


-- 3) customer: store_id = 1 koşuluyla, last_name'e göre AZALAN sıralamada ilk 4 kayıt
SELECT customer_id, first_name, last_name, store_id
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC, first_name DESC
LIMIT 4;
