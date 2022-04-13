-- INSERT INTO dojos (name) VALUES('Julie');
-- INSERT INTO dojos (name) VALUES('Martin');
-- INSERT INTO dojos (name) VALUES('Diego');
-- INSERT INTO dojos (name) VALUES('Creg');
-- INSERT INTO dojos (name) VALUES('Samantha');
-- INSERT INTO dojos (name) VALUES('Mariam');
-- SELECT * FROM dojos;
-- DELETE FROM dojos WHERE id = '1';
-- DELETE FROM dojos WHERE id = '2';
-- DELETE FROM dojos WHERE id = '3';

-- INSERT INTO ninjas (first_name, last_name, age, dojo_id) VALUES('Paul','Newman', 26,'4');
-- INSERT INTO ninjas (first_name, last_name, age, dojo_id) VALUES('Anna','Bell', 30,'4');
-- INSERT INTO ninjas (first_name, last_name, age, dojo_id) VALUES('Timmy','Newtron', 24,'4');

-- SELECT * FROM ninjas;

-- INSERT INTO ninjas (first_name, last_name, age, dojo_id) VALUES('Hailey','Newman', 28,'5');
-- INSERT INTO ninjas (first_name, last_name, age, dojo_id) VALUES('Bob','Bell', 33,'5');
-- INSERT INTO ninjas (first_name, last_name, age, dojo_id) VALUES('Lizzy','Mason', 25,'5');

-- INSERT INTO ninjas (first_name, last_name, age, dojo_id) VALUES('Sally','Rodriguez', 22,'6');
-- INSERT INTO ninjas (first_name, last_name, age, dojo_id) VALUES('Jane','Hartman', 27,'6');
-- INSERT INTO ninjas (first_name, last_name, age, dojo_id) VALUES('Kiera','Johnson', 25,'6');

-- SELECT *
-- FROM ninjas
-- JOIN dojos
-- ON ninjas.dojo_id = dojos.id
-- WHERE ninjas.dojo_id = '4';

-- SELECT *
-- FROM ninjas
-- JOIN dojos
-- ON ninjas.dojo_id = dojos.id
-- WHERE ninjas.dojo_id = '6';

-- SELECT *
-- FROM ninjas
-- JOIN dojos
-- ON ninjas.dojo_id = dojos.id
-- WHERE ninjas.id = '9';
