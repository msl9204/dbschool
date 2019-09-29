CREATE TABLE movies (id INTEGER PRIMARY KEY,
    title VARCHAR2(50),
    released INTEGER,
    sequel_id INTEGER);

INSERT INTO movies 
    VALUES (1, 'Harry Potter and the Philosopher''s Stone', 2001, 2);
INSERT INTO movies 
    VALUES (2, 'Harry Potter and the Chamber of Secrets', 2002, 3);
INSERT INTO movies 
    VALUES (3, 'Harry Potter and the Prisoner of Azkaban', 2004, 4);
INSERT INTO movies 
    VALUES (4, 'Harry Potter and the Goblet of Fire', 2005, 5);
INSERT INTO movies 
    VALUES (5, 'Harry Potter and the Order of the Phoenix ', 2007, 6);
INSERT INTO movies 
    VALUES (6, 'Harry Potter and the Half-Blood Prince', 2009, 7);
INSERT INTO movies 
    VALUES (7, 'Harry Potter and the Deathly Hallows – Part 1', 2010, 8);
INSERT INTO movies 
    VALUES (8, 'Harry Potter and the Deathly Hallows – Part 2', 2011, NULL);

SELECT movies.title, sequel.title AS Sequel_title FROM movies
    LEFT OUTER JOIN movies sequel
    ON movies.sequel_id = sequel.id;
