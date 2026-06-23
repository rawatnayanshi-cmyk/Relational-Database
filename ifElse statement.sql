create database dub;
use dub;

CREATE TABLE studentmarks (
    name VARCHAR(20),
    marks INT NOT NULL,
    result VARCHAR(10)
);
                            
insert into studentmarks (name,marks) values ("F",70);
SELECT 
    *
FROM
    studentmarks;


SELECT 
    name, marks, IF(marks >= 35, 'Pass', 'Fail') AS result
FROM
    studentmarks;
alter table studentmarks add gender varchar (8);
UPDATE studentmarks 
SET 
    gender = 'Male'
WHERE
    name = 'F';
SELECT 
    *
FROM
    studentmarks;
 
 
-- Else if statement
select name ,if (marks >= 35, "PASS","FAIL") as Result