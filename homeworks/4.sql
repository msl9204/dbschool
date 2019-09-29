CREATE SEQUENCE tmp_id START WITH 0 INCREMENT BY 1 MINVALUE 0 MAXVALUE 100 CYCLE NOCACHE;


CREATE TABLE songs (
    id INTEGER PRIMARY KEY,
    title VARCHAR2(50),
    artist VARCHAR2(50),
    mood VARCHAR2(50),
    duration INTEGER,
    released INTEGER);
    
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (tmp_id.NEXTVAL, 'Bohemian Rhapsody', 'Queen', 'epic', 60, 1975);
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (tmp_id.NEXTVAL, 'Let it go', 'Idina Menzel', 'epic', 227, 2013);
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (tmp_id.NEXTVAL, 'I will survive', 'Gloria Gaynor', 'epic', 198, 1978);
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (tmp_id.NEXTVAL, 'Twist and Shout', 'The Beatles', 'happy', 152, 1963);
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (tmp_id.NEXTVAL, 'La Bamb', 'Ritchie Valens', 'happy', 166, 1958);
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (tmp_id.NEXTVAL, 'I will always love you', 'Whitney Houston', 'epic', 273, 1992);
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (tmp_id.NEXTVAL, 'Sweet Caroline', 'Neil Diamond', 'happy', 201, 1969);
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (tmp_id.NEXTVAL, 'Call me maybe', 'Carly Rae Jepsen', 'happy', 193, 2011);
    
SELECT title FROM songs;
SELECT title FROM songs WHERE (mood = 'epic') OR (released >= 1990);
SELECT title FROM songs WHERE (mood = 'epic') AND (released >= 1990) AND (duration <= 240);

DROP SEQUENCE tmp_id;
DROP TABLE songs;
