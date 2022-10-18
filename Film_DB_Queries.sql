USE sakila;
SELECT * FROM sakila.actor;

SELECT * FROM sakila.actor WHERE first_name = 'JOHN';

SELECT * FROM sakila.actor WHERE last_name = 'NEESON';

SELECT * FROM sakila.actor WHERE actor_id  % 10 = 0;

SELECT description FROM sakila.film_text WHERE film_id = 100;

SELECT * FROM sakila.film WHERE rating = 'R';

SELECT * FROM sakila.film WHERE rating != 'R';

SELECT DISTINCT last_name FROM sakila.actor

SELECT 
	last_name, 
	COUNT(*)
FROM 
	sakila.actor
GROUP BY 
	last_name
HAVING 
	COUNT (last_name) > 1

SELECT sakila.actor.actor_id, sakila.actor.first_name, sakila.actor.last_name
FROM sakila.actor
LEFT JOIN sakila.film_actor ON sakila.film_actor.actor_id = sakila.actor.actor_id

SELECT AVG(sakila.film.length) AS run_time
FROM sakila.film

SELECT COUNT(*) AS Movies_From_2010
FROM sakila.film
WHERE release_year = 2010;



