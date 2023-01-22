/*film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
*/
SELECT COUNT(length) 
FROM film 
WHERE length > 
(SELECT AVG(length) 
 FROM film);

SELECT COUNT(rental_rate) 
FROM film
WHERE rental_rate =
(SELECT MAX(rental_rate) 
 FROM film
) 


SELECT COUNT(rental_rate) 
FROM film
WHERE rental_rate =
(SELECT MIN(rental_rate) 
 FROM film
) 
AND 
replacement_cost = 
(SELECT MIN(replacement_cost) 
 FROM film
) 


SELECT customer_id , SUM(amount)  
FROM payment 
GROUP BY customer_id 
ORDER BY SUM DESC 
LIMIT 10;
