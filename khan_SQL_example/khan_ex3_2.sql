	
SELECT * FROM student_grades;

/* cross join */
SELECT * FROM student_grades, students;

/* implicit inner join */
SELECT * FROM student_grades, students
    WHERE student_grades.student_id = students.id;
   
/* explicit inner join - JOIN */
SELECT students.first_name, students.last_name, students.email, student_grades.test, student_grades.grade FROM students
    JOIN student_grades
    ON students.id = student_grades.student_id
    WHERE grade > 90;
	
/* outer join */

drop table student_projects;

CREATE TABLE student_projects (id INTEGER PRIMARY KEY,
    student_id INTEGER,
    title VARCHAR2(30));
   
INSERT INTO student_projects (id, student_id, title)
    VALUES (1, 1, 'Drone Building');
   
/* outer join */
SELECT students.first_name, students.last_name, student_projects.title
    FROM students
    LEFT OUTER JOIN student_projects
    ON students.id = student_projects.student_id;
    
