drop sequence song_seq;
drop table songs;
create sequence song_seq start with 0 increment by 1 minvalue 0;

CREATE TABLE songs (
    id INTEGER PRIMARY KEY,
    title VARCHAR2(30),
    artist VARCHAR2(20),
    mood VARCHAR2(10),
    duration INTEGER,
    released INTEGER);
   
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (song_seq.nextval, 'Bohemian Rhapsody', 'Queen', 'epic', 60, 1975);
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (song_seq.nextval, 'Let it go', 'Idina Menzel', 'epic', 227, 2013);
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (song_seq.nextval, 'I will survive', 'Gloria Gaynor', 'epic', 198, 1978);
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (song_seq.nextval, 'Twist and Shout', 'The Beatles', 'happy', 152, 1963);
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (song_seq.nextval, 'La Bamba', 'Ritchie Valens', 'happy', 166, 1958);
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (song_seq.nextval, 'I will always love you', 'Whitney Houston', 'epic', 273, 1992);
INSERT INTO songs (id,title, artist, mood, duration, released)
    VALUES (song_seq.nextval, 'Sweet Caroline', 'Neil Diamond', 'happy', 201, 1969);
INSERT INTO songs (id, title, artist, mood, duration, released)
    VALUES (song_seq.nextval, 'Call me maybe', 'Carly Rae Jepsen', 'happy', 193, 2011);
	
