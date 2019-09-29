CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    author VARCHAR2(50),
    title VARCHAR2(50),
    words INTEGER);


CREATE SEQUENCE seq_book start with 1 increment by 1 minvalue 0 nocache;
  
    
INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'J.K. Rowling', 'Harry Potter and the Philosopher''s Stone', 79944);
INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'J.K. Rowling', 'Harry Potter and the Chamber of Secrets', 85141);
INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'J.K. Rowling', 'Harry Potter and the Prisoner of Azkaban', 107253);
INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'J.K. Rowling', 'Harry Potter and the Goblet of Fire', 190637);
INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'J.K. Rowling', 'Harry Potter and the Order of the Phoenix', 257045);
INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'J.K. Rowling', 'Harry Potter and the Half-Blood Prince', 168923);
INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'J.K. Rowling', 'Harry Potter and the Deathly Hallows', 197651);

INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'Stephenie Meyer', 'Twilight', 118501);
INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'Stephenie Meyer', 'New Moon', 132807);
INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'Stephenie Meyer', 'Eclipse', 147930);
INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'Stephenie Meyer', 'Breaking Dawn', 192196);
    
INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'J.R.R. Tolkien', 'The Hobbit', 95022);
INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'J.R.R. Tolkien', 'Fellowship of the Ring', 177227);
INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'J.R.R. Tolkien', 'Two Towers', 143436);
INSERT INTO books (id, author, title, words)
    VALUES (seq_book.NEXTVAL, 'J.R.R. Tolkien', 'Return of the King', 134462);
    
    
-- SELECT author, SUM(words) AS total_words FROM books GROUP BY author HAVING total_words >= 1000000;
-- 오라클에서는 한문장안에 ALIAS로 바로 호출하지 못함.
-- SELECT author, AVG(words) AS avg_words FROM books GROUP BY author HAVING avg_words >= 150000;
 
SELECT author, total_words FROM
(SELECT author, SUM(words) AS total_words FROM books GROUP BY author)
WHERE total_words >= 1000000;
 

SELECT author, avg_words FROM
(SELECT author, AVG(words) AS avg_words FROM books GROUP BY author)
WHERE avg_words >= 150000; 


DROP TABLE books;
DROP SEQUENCE seq_book;
