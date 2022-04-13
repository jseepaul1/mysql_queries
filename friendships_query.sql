INSERT INTO users (first_name, last_name) VALUES ('Mariam', 'Caraballo');
INSERT INTO users (first_name, last_name) VALUES('Linda', 'Mattews');
INSERT INTO users (first_name, last_name) VALUES ('Ralph', 'Alto');
INSERT INTO users (first_name, last_name) VALUES ('James', 'Newton');
INSERT INTO users (first_name, last_name) VALUES('Jimmy', 'Newtron');



SELECT * FROM users;
SELECT * FROM friendships;

INSERT INTO friendships(user_id, friend_id) VALUES(1,2), (1,4), (1,6),(2,1), (2,3),(2,5),(3,2),(3,5),(4,3),(5,1),(5,6),(6,2),(6,3);

SELECT users.first_name AS user_first_name, users.last_name AS user_last_name, users2.first_name AS friend_first_name, users2.last_name AS friend_last_name FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS users2 ON users2.id = friendships.friend_id;

SELECT users.first_name AS user_first_name, users.last_name AS user_last_name, users2.first_name AS friend_first_name, users2.last_name AS friend_last_name FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS users2 ON users2.id = friendships.friend_id
WHERE users.id = 1;

SELECT 
    COUNT(*)
FROM
    friendships;



SELECT users.first_name AS user_first_name, users.last_name AS user_last_name, users2.first_name AS friend_first_name, users2.last_name AS friend_last_name FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS users2 ON users2.id = friendships.friend_id
WHERE users.id = 3
ORDER BY users2.first_name ASC;

SELECT user_id, count(*)
FROM friendships
GROUP BY user_id
ORDER BY count(*) DESC
LIMIT 1;

SELECT user_id FROM friendships;