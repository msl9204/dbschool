CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item VARCHAR2(50), minutes INTEGER);

INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);
INSERT INTO todo_list VALUES (4, "Sleeping", 120);

SELECT SUM(minutes) from todo_list
