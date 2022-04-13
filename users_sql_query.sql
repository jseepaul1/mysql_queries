INSERT INTO users(first_name, last_name, email) VALUES('Jake', 'Thomson', 'jthomson@yahoo.com');
INSERT INTO users(first_name, last_name, email) VALUES('Rahul', 'Bose', 'bbose@yahoo.com');
INSERT INTO users(first_name, last_name, email) VALUES('Creg', 'Mason', 'cmason@aim.com');
SELECT * FROM users;
SELECT * FROM users WHERE email = 'jthomson@yahoo.com';
SELECT * FROM users WHERE id = 3;
UPDATE users SET users.last_name = 'Pancakes' WHERE id = '3'; 
DELETE FROM users WHERE id = '2';
SELECT * FROM users ORDER BY users.first_name ASC;
SELECT * FROM users ORDER BY users.first_name DESC;








