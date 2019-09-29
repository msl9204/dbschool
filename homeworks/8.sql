CREATE SEQUENCE id_seq start with 1 increment by 1 minvalue 0 nocache;
CREATE SEQUENCE id_seq2 start with 1 increment by 1 minvalue 0 nocache;

CREATE TABLE persons (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER);
    
INSERT INTO persons (id, name, age) VALUES (id_seq.NEXTVAL, 'Bobby McBobbyFace', 12);
INSERT INTO persons (id, name, age) VALUES (id_seq.NEXTVAL, 'Lucy BoBucie', 25);
INSERT INTO persons (id, name, age) VALUES (id_seq.NEXTVAL, 'Banana FoFanna', 14);
INSERT INTO persons (id, name, age) VALUES (id_seq.NEXTVAL, 'Shish Kabob', 20);
INSERT INTO persons (id, name, age) VALUES (id_seq.NEXTVAL, 'Fluffy Sparkles', 8);
INSERT INTO persons (id, name, age) VALUES (id_seq.NEXTVAL, 'Lee MS', 28);

CREATE table hobbies (
    id INTEGER PRIMARY KEY,
    person_id INTEGER,
    name TEXT);
    
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
INSERT INTO hobbies (id, person_id, name) VALUES (id_seq2.NEXTVAL, 5, 'sleeping');

SELECT persons.name, hobbies.name FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id;
    
SELECT persons.name, hobbies.name FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id
    WHERE persons.name = 'Bobby McBobbyFace';


DROP SEQUENCE id_seq;
DROP SEQUENCE id_seq2;

DROP TABLE persons;
DROP TABLE hobbies;
