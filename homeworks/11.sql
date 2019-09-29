CREATE SEQUENCE id_seq start with 1 increment by 1 minvalue 0 nocache;
CREATE SEQUENCE id_seq2 start with 1 increment by 1 minvalue 0 nocache;
CREATE SEQUENCE id_seq3 start with 1 increment by 1 minvalue 0 nocache;

CREATE TABLE persons (
    id INTEGER PRIMARY KEY,
    fullname VARCHAR(50),
    age INTEGER);
    
INSERT INTO persons (id, fullname, age) VALUES (id_seq.NEXTVAL, 'Bobby McBobbyFace', '12');
INSERT INTO persons (id, fullname, age) VALUES (id_seq.NEXTVAL, 'Lucy BoBucie', '25');
INSERT INTO persons (id, fullname, age) VALUES (id_seq.NEXTVAL, 'Banana FoFanna', '14');
INSERT INTO persons (id, fullname, age) VALUES (id_seq.NEXTVAL, 'Shish Kabob', '20');
INSERT INTO persons (id, fullname, age) VALUES (id_seq.NEXTVAL, 'Fluffy Sparkles', '8');

CREATE table hobbies (
    id INTEGER PRIMARY KEY,
    person_id INTEGER,
    name VARCHAR(50));
    
INSERT INTO hobbies (id, person_id, name) VALUES (id_seq2.NEXTVAL, 1, 'drawing');
INSERT INTO hobbies (id, person_id, name) VALUES (id_seq2.NEXTVAL, 1, 'coding');
INSERT INTO hobbies (id, person_id, name) VALUES (id_seq2.NEXTVAL, 2, 'dancing');
INSERT INTO hobbies (id, person_id, name) VALUES (id_seq2.NEXTVAL, 2, 'coding');
INSERT INTO hobbies (id, person_id, name) VALUES (id_seq2.NEXTVAL, 3, 'skating');
INSERT INTO hobbies (id, person_id, name) VALUES (id_seq2.NEXTVAL, 3, 'rowing');
INSERT INTO hobbies (id, person_id, name) VALUES (id_seq2.NEXTVAL, 3, 'drawing');
INSERT INTO hobbies (id, person_id, name) VALUES (id_seq2.NEXTVAL, 4, 'coding');
INSERT INTO hobbies (id, person_id, name) VALUES (id_seq2.NEXTVAL, 4, 'dilly-dallying');
INSERT INTO hobbies (id, person_id, name) VALUES (id_seq2.NEXTVAL, 4, 'meowing');

CREATE table friends (
    id INTEGER PRIMARY KEY,
    person1_id INTEGER,
    person2_id INTEGER);

INSERT INTO friends (id, person1_id, person2_id)
    VALUES (id_seq3.NEXTVAL, 1, 4);
INSERT INTO friends (id, person1_id, person2_id)
    VALUES (id_seq3.NEXTVAL, 2, 3);
    
SELECT persons.fullname, hobbies.name FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id;
    
SELECT a.fullname, b.fullname FROM friends
    JOIN persons AS a
    ON friends.person1_id = a.id
    JOIN persons AS b
    ON friends.person2_id = b.id

DROP SEQUENCE id_seq;                 
DROP SEQUENCE id_seq2;                  
DROP SEQUENCE id_seq3;
                 
DROP TABLE persons;
DROP TABLE hobbies;
DROP TABLE friends;
                 
