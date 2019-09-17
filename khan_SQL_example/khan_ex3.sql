drop table students;
drop table students_grades;

CREATE TABLE students (id INTEGER PRIMARY KEY,
    first_name VARCHAR2(15),
    last_name VARCHAR2(15),
    email VARCHAR2(20),
    phone VARCHAR2(20),
    birthdate date);

INSERT INTO students (id, first_name, last_name, email, phone, birthdate)
    VALUES (1,'Peter', 'Rabbit', 'peter@rabbit.com', '555-6666', to_date('2002-06-24','YYYY-MM-DD'));
INSERT INTO students (id,first_name, last_name, email, phone, birthdate)
    VALUES (2, 'Alice', 'Wonderland', 'alice@wonderland.com', '555-4444', to_date('2002-07-04','YYYY-MM-DD'));
   
CREATE TABLE student_grades (id INTEGER PRIMARY KEY,
    student_id INTEGER,
    test VARCHAR2(20),
    grade INTEGER);

INSERT INTO student_grades (id, student_id, test, grade)
    VALUES (1, 1, 'Nutrition', 95);
INSERT INTO student_grades (id, student_id, test, grade)
    VALUES (2, 2, 'Nutrition', 92);
INSERT INTO student_grades (id,student_id, test, grade)
    VALUES (3, 1, 'Chemistry', 85);
INSERT INTO student_grades (id, student_id, test, grade)
    VALUES (4, 2, 'Chemistry', 95);