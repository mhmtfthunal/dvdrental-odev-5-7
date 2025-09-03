-- Ödev 7 — dvdrental
-- 1) Filmleri rating'e göre grupla
SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating
ORDER BY rating;


-- 2) replacement_cost'a göre grupla; film sayısı 50'den fazla olanları getir
SELECT replacement_cost, COUNT(*) AS film_count
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY film_count DESC, replacement_cost ASC;


-- 3) customer tablosunda store_id'lere karşılık gelen müşteri sayıları
SELECT store_id, COUNT(*) AS customer_count
FROM customer
GROUP BY store_id
ORDER BY store_id;


-- 4) city'yi country_id'ye göre grupla; en fazla şehir barındıran country_id ve sayısı
SELECT country_id, COUNT(*) AS city_count
FROM city
GROUP BY country_id
ORDER BY city_count DESC
LIMIT 1;
