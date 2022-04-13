INSERT INTO authors (name) VALUES('Jane Austen');
INSERT INTO authors (name) VALUES('Emily Dickinson');
INSERT INTO authors (name) VALUES('Fyodor Dostoevsky');
INSERT INTO authors (name) VALUES('William Shakespear');
INSERT INTO authors (name) VALUES('Lau Tzu');

UPDATE authors SET name = 'Bill Shakespear'
WHERE id = 4;

SELECT * FROM authors;
SELECT * FROM books;

INSERT INTO books (title, num_of_pages) VALUES('C sharp', 250);
INSERT INTO books (title, num_of_pages) VALUES('Java', 400);
INSERT INTO books (title, num_of_pages) VALUES('Python', 350);
INSERT INTO books (title, num_of_pages) VALUES('Ruby', 300);
INSERT INTO books (title, num_of_pages) VALUES('PHP', 4500);

UPDATE books SET title = 'C#'
WHERE id = 1;

SELECT * FROM favorite_books;

INSERT INTO favorite_books (author_id, book_id) VALUES(1,1);
INSERT INTO favorite_books (author_id, book_id) VALUES(1,2);
INSERT INTO favorite_books (author_id, book_id) VALUES(2,1);
INSERT INTO favorite_books (author_id, book_id) VALUES(2,2);
INSERT INTO favorite_books (author_id, book_id) VALUES(2,3);
INSERT INTO favorite_books (author_id, book_id) VALUES(3,1);
INSERT INTO favorite_books (author_id, book_id) VALUES(3,2);
INSERT INTO favorite_books (author_id, book_id) VALUES(3,3);
INSERT INTO favorite_books (author_id, book_id) VALUES(3,4);

INSERT INTO favorite_books (author_id, book_id) VALUES(4,1);
INSERT INTO favorite_books (author_id, book_id) VALUES(4,2);
INSERT INTO favorite_books (author_id, book_id) VALUES(4,2);
INSERT INTO favorite_books (author_id, book_id) VALUES(4,4);
INSERT INTO favorite_books (author_id, book_id) VALUES(4,5);



SELECT * FROM books 
JOIN favorite_books on books.id = favorite_books.book_id
JOIN authors on authors.id = favorite_books.author_id
WHERE books.id = 3;

DELETE FROM favorite_books 
WHERE book_id = 3
AND author_id = 2;

INSERT INTO favorite_books (author_id, book_id) VALUES(5,2);

SELECT * FROM books 
JOIN favorite_books on books.id = favorite_books.book_id
JOIN authors on authors.id = favorite_books.author_id
WHERE authors.id = 3;

SELECT * FROM books 
JOIN favorite_books on books.id = favorite_books.book_id
JOIN authors on authors.id = favorite_books.author_id
WHERE books.id = 5;