-- Ödev 6 — dvdrental
-- 1) film.rental_rate ortalaması
SELECT AVG(rental_rate) AS avg_rental_rate
FROM film;


-- 2) 'C' ile başlayan film sayısı
SELECT COUNT(*) AS count_title_start_with_C
FROM film
WHERE title LIKE 'C%';


-- 3) rental_rate = 0.99 olan filmler içinde en uzun length kaç dakikadır?
SELECT MAX(length) AS max_length_rr_099
FROM film
WHERE rental_rate = 0.99;


-- 4) length > 150 olan filmler için kaç farklı replacement_cost değeri var?
SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_cost_len_gt_150
FROM film
WHERE length > 150;
