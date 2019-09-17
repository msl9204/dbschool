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

SELECT * FROM exercise_logs;

SELECT COUNT(*) FROM exercise_logs WHERE heart_rate > 220 - 30;

/* 50-90% of max*/
SELECT COUNT(*) FROM exercise_logs WHERE
    heart_rate >= ROUND(0.50 * (220-30))
    AND  heart_rate <= ROUND(0.90 * (220-30));
   
/* CASE */
SELECT etype, heart_rate,
    CASE
        WHEN heart_rate > 220-30 THEN 'above max'
        WHEN heart_rate > ROUND(0.90 * (220-30)) THEN 'above target'
        WHEN heart_rate > ROUND(0.50 * (220-30)) THEN 'within target'
        ELSE 'below target'
    END as hr_zone
FROM exercise_logs;

/* Oracle need to have alias column defined before being used */

SELECT COUNT(*), HR_ZONE from 
   ( SELECT id, heart_rate, 
    CASE
        WHEN heart_rate > 220-30 THEN 'above max'
        WHEN heart_rate > ROUND(0.90 * (220-30)) THEN 'above target'
        WHEN heart_rate > ROUND(0.50 * (220-30)) THEN 'within target'
        ELSE 'below target'
    END as HR_ZONE
    FROM exercise_logs )
GROUP by HR_ZONE;

