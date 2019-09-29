CREATE SEQUENCE id_seq start with 0 increment by 1 minvalue 0 nocache;


CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY,
    name VARCHAR2(30),
    number_grade INTEGER,
    fraction_completed REAL);
    
INSERT INTO student_grades (id, name, number_grade, fraction_completed)
    VALUES (id_seq.NEXTVAL, 'Winston', 90, 0.805);
INSERT INTO student_grades (id, name, number_grade, fraction_completed)
    VALUES (id_seq.NEXTVAL, 'Winnefer', 95, 0.901);
INSERT INTO student_grades (id, name, number_grade, fraction_completed)
    VALUES (id_seq.NEXTVAL, 'Winsteen', 85, 0.906);
INSERT INTO student_grades (id, name, number_grade, fraction_completed)
    VALUES (id_seq.NEXTVAL, 'Wincifer', 66, 0.7054);
INSERT INTO student_grades (id, name, number_grade, fraction_completed)
    VALUES (id_seq.NEXTVAL, 'Winster', 76, 0.5013);
INSERT INTO student_grades (id, name, number_grade, fraction_completed)
    VALUES (id_seq.NEXTVAL, 'Winstonia', 82, 0.9045);

SELECT name, number_grade, ROUND(fraction_completed*100) AS percent_completed FROM student_grades;

SELECT COUNT(*),

    CASE
        WHEN number_grade > 90 THEN 'A'
        WHEN number_grade > 80 THEN 'B'
        WHEN number_grade > 70 THEN 'C'
        ELSE 'F'
    END AS letter_grade
FROM (SELECT COUNT(*), letter_grade FROM student_grades GROUP BY letter_grade); 

DROP SEQUENCE id_seq;
DROP TABLE student_grades;
