-- QUESTION 1
SELECT artist_id, name
 FROM artist
 WHERE artist_id BETWEEN 9 AND 18
 ORDER BY name DESC;

-- QUESTION 2
SELECT artist_id,name
FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist;

-- QUESTION 3
SELECT * FROM artist 
WHERE name LIKE '%Black%';

SELECT * FROM artist;

-- QUESTION 4
SELECT MAX(birth_date)
FROM employee;

-- QUESTION 5
SELECT MIN(birth_date)
FROM employee;

-- QUESTION 6
SELECT COUNT(invoice_id)
FROM invoice
WHERE billing_state IN('CA', 'TX', 'AZ');

-- QUESTION 7
SELECT AVG(total)
FROM invoice;

-- QUESTION 8
SELECT name FROM track
WHERE album_id IN(
  SELECT playlist_id FROM playlist WHERE name = 'Music');

-- QUESTION 9
SELECT name FROM track
WHERE album_id IN(
  SELECT playlist_id FROM playlist WHERE playlist_id = 5);

-- QUESTION 10
SELECT t.name track_name, p.name playlist_name
FROM playlist p
JOIN playlist_track pt ON p.playlist_id = pt.playlist_id
JOIN track t ON pt.track_id = t.track_id;

-- QUESTION 11
SELECT t.name track_name, title
FROM track t
JOIN genre g ON t.genre_id = g.genre_id
JOIN album a ON a.album_id = t.album_id
WHERE g.genre_id = 4;