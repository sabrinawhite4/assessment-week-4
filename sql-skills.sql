--  QUESTION 1
INSERT INTO artist (name)
VALUES ('Pitbull'), ('Kendrick Lamar'), ('MARINA');

SELECT * FROM artist;

-- QUESTION 2
SELECT artist_id, name
 FROM artist
 WHERE artist_id BETWEEN 1 AND 10
 ORDER BY name ASC;

--  QUESTION 3
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

-- QUESTION 4
SELECT employee_id
FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards';

SELECT * FROM employee
WHERE reports_to = 2;

-- QUESTION 5
SELECT COUNT(employee_id)
FROM employee 
WHERE city = 'Lethbridge'

-- QUESTION 6
SELECT COUNT(invoice_id)
FROM invoice_id
WHERE billing_country = 'USA'

-- QUESTION 7
SELECT MAX(total)
FROM invoice;

-- QUESTION 8
SELECT MIN(total)
FROM invoice;

-- QUESTION 9
SELECT * FROM invoice
WHERE total > 5;

-- QUESTION 10 
SELECT COUNT(invoice_id)
FROM invoice
WHERE total < 5;

-- QUESTION 11
SELECT SUM(total)
FROM invoice;

-- QUESTION 12
SELECT * FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id
WHERE unit_price > 0.99;

SELECT * FROM invoice_line;

-- QUESTION 13
SELECT c.customer_id, i.customer_id, invoice_date, first_name, last_name, total
FROM customer c
JOIN invoice i ON c.customer_id = i.customer_id;

-- QUESTION 14
SELECT c.support_rep_id, e.employee_id, c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

SELECT * FROM employee;

-- QUESTION 15
SELECT title "album title", name "artist name"
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;