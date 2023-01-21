/* film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
*/

SELECT AVG(rental_rate)
FROM film

SELECT COUNT(title)
FROM film
WHERE title LIKE 'C%'

SELECT length
FROM film
WHERE rental_rate=0.99
ORDER BY length DESC
LIMIT 1

SELECT DISTINCT(COUNT(replacement_cost))
FROM film
WHERE length>150
