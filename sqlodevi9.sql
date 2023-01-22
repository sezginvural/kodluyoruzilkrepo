/* city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) 
isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
customer tablosu ile payment tablosunda bulunan payment_id 
ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
customer tablosu ile rental tablosunda bulunan rental_id ile 
customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
*/


SELECT *
FROM CITY AS C
INNER JOIN COUNTRY AS CTR
ON C.COUNTRY_ID=CTR.COUNTRY_ID

SELECT C.FIRST_NAME,C.LAST_NAME,P.PAYMENT_ID
FROM CUSTOMER AS C
INNER JOIN PAYMENT AS P
ON C.CUSTOMER_ID=P.CUSTOMER_ID

SELECT C.FIRST_NAME,C.LAST_NAME,R.RENTAL_ID
FROM CUSTOMER AS C
INNER JOIN RENTAL AS R
ON C.CUSTOMER_ID=R.CUSTOMER_ID
