
--PostgreSql Queries:

--John R on 11/25/2020 

--Sample DVD rental database

--Left Outer Join
SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT OUTER JOIN inventory 
ON inventory.film_id = film.film_id

--Full Outer Join
SELECT address
FROM customer
FULL OUTER JOIN address
ON customer.address_id = address.address_id
WHERE customer.address_id IS null
OR address.address_id IS null

SELECT * 
FROM customer
FULL OUTER JOIN address
ON customer.address_id = address.address_id
WHERE customer.address_id IS null
OR address.address_id IS null

SELECT * 
FROM customer
FULL OUTER JOIN address
ON customer.address_id = address.address_id
WHERE customer.address_id IS null
OR address.address_id IS null

--Inner Join or just Join
SELECT staff_id, staff.address_id, first_name, last_name, address
FROM staff 
INNER JOIN address
ON staff.address_id = address.address_id


SELECT payment_id, payment.customer_id, first_name, email
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id
WHERE amount >200
