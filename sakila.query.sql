SELECT * FROM customer;
SELECT * FROM city;
SELECT * FROM address;

-- What query would you run to get all the customers inside city_id = 312? Your query should return customer first name, last name, email, and address.
SELECT customer.first_name AS customer_first_name, customer.last_name AS customer_last_name, customer.email AS customer_email, address.address AS customer_address
FROM customer
JOIN address ON customer.address_id = address.address_id 
WHERE address.city_id = 312;

SELECT * FROM film;
SELECT * FROM category;
SELECT * FROM film_category;
-- What query would you run to get all comedy films? Your query should return film title, description, release year, rating, special features, and genre (category).
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name AS category
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id 
WHERE category.name = 'Comedy';

SELECT * FROM actor;
SELECT * FROM film_actor;
-- What query would you run to get all the films joined by actor_id=5? Your query should return the actor id, actor name, film title, description, and release year.
SELECT film_actor.actor_id, actor.first_name, actor.last_name, film.title, film.description, film.release_year
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id 
WHERE film_actor.actor_id = 5;

SELECT * FROM customer;
SELECT * FROM store;
SELECT * FROM city;
SELECT * FROM address;
-- What query would you run to get all the customers in store_id = 1 and inside these cities (1, 42, 312 and 459)? 
-- Your query should return customer first name, last name, email, and address.
SELECT customer.first_name, customer.last_name, customer.email, address.address, city.city_id, store.store_id
FROM customer
JOIN store ON customer.store_id = store.store_id
JOIN address ON customer.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
WHERE store.store_id = 1 AND city.city_id IN (1,42,312,459);


SELECT * FROM film;
SELECT * FROM film_actor;

-- What query would you run to get all the films with a "rating = G" and "special feature = behind the scenes", joined by actor_id = 15? 
--  Your query should return the film title, description, release year, rating, and special feature. 
--  Hint: You may use LIKE function in getting the 'behind the scenes' part.
SELECT film.title, film.description, film.release_year, film.rating, film.special_features 
FROM film
LEFT JOIN film_actor ON film_actor.film_id = film.film_id
WHERE film.rating = "G" AND actor_id = 15 AND film.special_features LIKE '%behind the scenes';


SELECT * FROM film_actor;
SELECT * FROM actor;
-- What query would you run to get all the actors that joined in the film_id = 369? 
-- Your query should return the film_id, title, actor_id, and actor_name.
SELECT film.film_id, film.title, actor.actor_id, actor.first_name, actor.last_name
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id 
JOIN actor ON film_actor.actor_id = actor.actor_id 
WHERE film.film_id = 369;


-- What query would you run to get all drama films with a rental rate of 2.99? 
-- Your query should return film title, description, release year, rating, special features, and genre (category).
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name AS film_category, film.rental_rate
FROM film 
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = 'drama' AND rental_rate = 2.99;

SELECT * FROM film;
SELECT * FROM category;
SELECT * from actor;
-- What query would you run to get all the action films which are joined by SANDRA KILMER? 
-- Your query should return film title, description, release year, rating, special features, genre (category), and actor's first name and last name.
SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name, actor.first_name, actor.last_name
FROM film
JOIN film_category ON film.film_id = film_category.film_id 
JOIN category ON film_category.category_id = category.category_id 
JOIN film_actor ON film.film_id = film_actor.film_id 
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = 'SANDRA' AND actor.last_name = 'KILMER'
