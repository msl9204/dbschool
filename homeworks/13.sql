CREATE SEQUENCE id_seq start with 1 increment by 1 minvalue 0 nocache;

CREATE TABLE clothes (
    id INTEGER PRIMARY KEY,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (id, type, design)
    VALUES (id_seq.NEXTVAL, 'dress', 'pink polka dots');
INSERT INTO clothes (id, type, design)
    VALUES (id_seq.NEXTVAL, 'pants', 'rainbow tie-dye');
INSERT INTO clothes (id, type, design)
    VALUES (id_seq.NEXTVAL, 'blazer', 'black sequin');

ALTER TABLE clothes add price INTEGER;

SELECT * FROM clothes;

UPDATE clothes SET price = 10 WHERE id=1;
UPDATE clothes SET price = 20 WHERE id=2;
UPDATE clothes SET price = 30 WHERE id=3;

SELECT * FROM clothes;

INSERT INTO clothes (type, design, price) VALUES ('shoes', 'high-hill', 40);

SELECT * FROM clothes;

DROP TABLE clothes;
DROP SEQUENCE id_seq;
