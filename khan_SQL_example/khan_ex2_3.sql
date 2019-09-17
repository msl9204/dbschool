drop sequence exer_seq;
drop table exercise_logs;

create sequence exer_seq start with 0 increment by 1 minvalue 0 ;
CREATE TABLE exercise_logs
    (id INTEGER PRIMARY KEY,
    etype VARCHAR2(20),
    minutes INTEGER,
    calories INTEGER,
    heart_rate INTEGER);


INSERT INTO exercise_logs(id, etype, minutes, calories, heart_rate) VALUES (exer_seq.nextval, 'biking', 30, 100, 110);
INSERT INTO exercise_logs(id, etype, minutes, calories, heart_rate) VALUES (exer_seq.nextval,'biking', 10, 30, 105);
INSERT INTO exercise_logs(id, etype, minutes, calories, heart_rate) VALUES (exer_seq.nextval, 'dancing', 15, 200, 120);
INSERT INTO exercise_logs(id, etype, minutes, calories, heart_rate) VALUES (exer_seq.nextval, 'tree climbing', 30, 70, 90);
INSERT INTO exercise_logs(id, etype, minutes, calories, heart_rate) VALUES (exer_seq.nextval, 'tree climbing', 25, 72, 80);
INSERT INTO exercise_logs(id, etype, minutes, calories, heart_rate) VALUES (exer_seq.nextval, 'rowing', 30, 70, 90);
INSERT INTO exercise_logs(id, etype, minutes, calories, heart_rate) VALUES (exer_seq.nextval, 'hiking', 60, 80, 85);


SELECT * FROM exercise_logs WHERE etype = 'biking' OR etype = 'hiking' OR etype = 'tree climbing' OR etype = 'rowing';

/* IN */
SELECT * FROM exercise_logs WHERE etype IN ('biking', 'hiking', 'tree climbing', 'rowing');

drop table drs_favorites;

CREATE TABLE drs_favorites
    (id INTEGER PRIMARY KEY,
    etype VARCHAR2(20),
    reason VARCHAR2(40));

INSERT INTO drs_favorites(id, etype, reason) VALUES (1, 'biking', 'Improves endurance and flexibility.');
INSERT INTO drs_favorites(id, etype, reason) VALUES (2, 'hiking', 'Increases cardiovascular health.');

SELECT etype FROM drs_favorites;

SELECT * FROM exercise_logs WHERE etype IN (
    SELECT etype FROM drs_favorites);
   
SELECT * FROM exercise_logs WHERE etype IN (
    SELECT etype FROM drs_favorites WHERE reason = 'Increases cardiovascular health');
   
/* LIKE */

SELECT * FROM exercise_logs WHERE etype IN (
    SELECT etype FROM drs_favorites WHERE reason LIKE '%cardiovascular%');