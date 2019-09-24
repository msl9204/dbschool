CREATE SEQUENCE tmp_seq START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;
CREATE SEQUENCE tmp_seq2 START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

CREATE TABLE artists (
    id number(20) PRIMARY KEY,
    name VARCHAR2(50),
    country VARCHAR2(50),
    genre VARCHAR2(50));

INSERT INTO artists (id, name, country, genre)
    VALUES (tmp_seq.NEXTVAL, 'Taylor Swift', 'US', 'Pop');
INSERT INTO artists (id, name, country, genre)
    VALUES (tmp_seq.NEXTVAL, 'Led Zeppelin', 'US', 'Hard rock');
INSERT INTO artists (id, name, country, genre)
    VALUES (tmp_seq.NEXTVAL, 'ABBA', 'Sweden', 'Disco');
INSERT INTO artists (id, name, country, genre)
    VALUES (tmp_seq.NEXTVAL, 'Queen', 'UK', 'Rock');
INSERT INTO artists (id, name, country, genre)
    VALUES (tmp_seq.NEXTVAL, 'Celine Dion', 'Canada', 'Pop');
INSERT INTO artists (id, name, country, genre)
    VALUES (tmp_seq.NEXTVAL, 'Meatloaf', 'US', 'Hard rock');
INSERT INTO artists (id, name, country, genre)
    VALUES (tmp_seq.NEXTVAL, 'Garth Brooks', 'US', 'Country');
INSERT INTO artists (id, name, country, genre)
    VALUES (tmp_seq.NEXTVAL, 'Shania Twain', 'Canada', 'Country');
INSERT INTO artists (id, name, country, genre)
    VALUES (tmp_seq.NEXTVAL, 'Rihanna', 'US', 'Pop');
INSERT INTO artists (id, name, country, genre)
    VALUES (tmp_seq.NEXTVAL, 'Guns N'' Roses', 'US', 'Hard rock');
INSERT INTO artists (id, name, country, genre)
    VALUES (tmp_seq.NEXTVAL, 'Gloria Estefan', 'US', 'Pop');
INSERT INTO artists (id, name, country, genre)
    VALUES (tmp_seq.NEXTVAL, 'Bob Marley', 'Jamaica', 'Reggae');

CREATE TABLE songs (
    id number(20) PRIMARY KEY,
    artist VARCHAR2(50),
    title VARCHAR2(50));

INSERT INTO songs (id, artist, title)
    VALUES (tmp_seq2.NEXTVAL, 'Taylor Swift', 'Shake it off');
INSERT INTO songs (id, artist, title)
    VALUES (tmp_seq2.NEXTVAL, 'Rihanna', 'Stay');
INSERT INTO songs (id, artist, title)
    VALUES (tmp_seq2.NEXTVAL, 'Celine Dion', 'My heart will go on');
INSERT INTO songs (id, artist, title)
    VALUES (tmp_seq2.NEXTVAL, 'Celine Dion', 'A new day has come');
INSERT INTO songs (id, artist, title)
    VALUES (tmp_seq2.NEXTVAL, 'Shania Twain', 'Party for two');
INSERT INTO songs (id, artist, title)
    VALUES (tmp_seq2.NEXTVAL, 'Gloria Estefan', 'Conga');
INSERT INTO songs (id, artist, title)
    VALUES (tmp_seq2.NEXTVAL, 'Led Zeppelin', 'Stairway to heaven');
INSERT INTO songs (id, artist, title)
    VALUES (tmp_seq2.NEXTVAL, 'ABBA', 'Mamma mia');
INSERT INTO songs (id, artist, title)
    VALUES (tmp_seq2.NEXTVAL, 'Queen', 'Bicycle Race');
INSERT INTO songs (id, artist, title)
    VALUES (tmp_seq2.NEXTVAL, 'Queen', 'Bohemian Rhapsody');
INSERT INTO songs (id, artist, title)
    VALUES (tmp_seq2.NEXTVAL, 'Guns N'' Roses', 'Don''t cry');
    
SELECT title FROM songs WHERE artist = 'Queen';
SELECT name FROM artists WHERE genre = 'Pop';
SELECT title FROM songs WHERE artist IN (SELECT name FROM artists WHERE genre = 'Pop');
