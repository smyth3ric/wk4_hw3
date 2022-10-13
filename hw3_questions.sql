-- Week 5 - Wednesday Questions

-- 1. List all customers who live in Texas (use JOINs)

Kim Cruz
Jennifer Davis
Bryan Hardison
Richard Mccray
Ian Still

SELECT c.first_name, c.last_name
FROM customer AS c
INNER JOIN address AS a
ON c.address_id = a.address_id
WHERE a.district = 'Texas'
ORDER BY c.last_name;

-- 2. Get all payments above $6.99 with the Customer's Full Name

Returned 8106 results

SELECT c.first_name, c.last_name
FROM payment AS p
INNER JOIN customer AS c
ON c.customer_id = p.customer_id
WHERE amount > 6.99
ORDER BY last_name
;

-- 3. Show all customers names who have made payments over $175(use subqueries)

SELECT first_name, last_name
FROM customer
WHERE payment.amount  IN (
    SELECT amount
    FROM payment
    WHERE amount > 175
   );

-- SELECT amount
-- FROM payment
-- WHERE amount > 175;

-- 4. List all customers that live in Nepal (use the city table)

SELECT first_name, last_name
FROM customer AS c
INNER JOIN city AS
WHERE country_id in(
    SELECT country_id
    FROM city
    WHERE country_id = 66 );
   
  

-- 5. Which staff member had the most transactions?

2 

SELECT staff_id, COUNT(payment_id)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(*) DESC; 




-- 6. How many movies of each rating are there?


PG-13 223
NC-17 209
R     195
PG    194
G     179

SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC;



-- 7.Show all customers who have made a single payment above $6.99 (Use Subqueries)





-- 8. How many free rentals did our stores give away?


