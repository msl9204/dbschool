drop table students;


CREATE TABLE students (id INTEGER PRIMARY KEY,
    first_name VARCHAR2(15),
    last_name VARCHAR2(15),
    email VARCHAR2(20),
    phone VARCHAR2(20),
    birthdate date,
	buddy_id INTEGER);


INSERT INTO students
    VALUES (1, 'Peter', 'Rabbit', 'peter@rabbit.com', '555-6666', to_date('2002-06-24','YYYY-MM-DD'), 2);
INSERT INTO students
    VALUES (2, 'Alice', 'Wonderland', 'alice@wonderland.com', '555-4444', to_date('2002-07-04','YYYY-MM-DD'), 1);
INSERT INTO students
    VALUES (3, 'Aladdin', 'Lampland', 'aladdin@lampland.com', '555-3333', to_date('2001-05-10','YYYY-MM-DD'), 4);
INSERT INTO students
    VALUES (4, 'Simba', 'Kingston', 'simba@kingston.com', '555-1111',to_date('2001-12-24','YYYY-MM-DD'), 3);
   
SELECT id, first_name, last_name, buddy_id FROM students;

/* self join */
SELECT students.first_name, students.last_name, buddies.email as buddy_email
    FROM students
    JOIN students buddies
	on students.buddy_id = buddies.id;
