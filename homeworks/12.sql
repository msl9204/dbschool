CREATE SEQUENCE id_seq start with 1 increment by 1 minvalue 0 nocache;

CREATE table documents (
    id INTEGER PRIMARY KEY,
    title VARCHAR2(70),
    content VARCHAR2(70),
    author VARCHAR2(70));
    
INSERT INTO documents (id, author, title, content)
    VALUES (id_seq.NEXTVAL, 'Puff T.M. Dragon', 'Fancy Stuff', 'Ceiling wax, dragon wings, etc.');
INSERT INTO documents (id, author, title, content)
    VALUES (id_seq.NEXTVAL, 'Puff T.M. Dragon', 'Living Things', 'They''re located in the left ear, you know.');
INSERT INTO documents (id, author, title, content)
    VALUES (id_seq.NEXTVAL, 'Jackie Paper', 'Pirate Recipes', 'Cherry pie, apple pie, blueberry pie.');
INSERT INTO documents (id, author, title, content)
    VALUES (id_seq.NEXTVAL, 'Jackie Paper', 'Boat Supplies', 'Rudder - guitar. Main mast - bed post.');
INSERT INTO documents (id, author, title, content)
    VALUES (id_seq.NEXTVAL, 'Jackie Paper', 'Things I''m Afraid Of', 'Talking to my parents, the sea, giant pirates, heights.');

SELECT * FROM documents;

UPDATE documents SET author = 'Jackie Draper' WHERE author LIKE 'Jackie Paper';

SELECT * FROM documents;

DELETE FROM documents WHERE title LIKE 'Things I''m Afraid Of';

SELECT * FROM documents;
