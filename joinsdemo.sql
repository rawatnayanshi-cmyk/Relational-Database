CREATE DATABASE joindbdemo;
USE joindbdemo;
CREATE TABLE student(
							rollno INT PRIMARY KEY,
                            name VARCHAR (20),
                            age INT NOT NULL,
                            address VARCHAR(30)
                            );
                            
CREATE TABLE studentcourse (course_id INT PRIMARY KEY,
							rollno INT NOT NULL);

INSERT INTO student VALUE (1,"Himanshu",18,"Noida");
INSERT INTO student VALUE (2,"Binod",19,"New Delhi");
INSERT INTO student VALUE (3,"Rishi",22,"Noida");
INSERT INTO student VALUE (4,"Aditi",18,"Noida");
INSERT INTO student VALUE (5,"Ruby",19,"Noida");

INSERT INTO studentcourse VALUE (1,1);
INSERT INTO studentcourse VALUE (2,2);
INSERT INTO studentcourse VALUE (3,3);
INSERT INTO studentcourse VALUE (6,7);


SELECT studentcourse.course_id, student.name,student.age
FROM
student INNER JOIN studentcourse 
ON 
student.rollno = studentcourse. rollno;
SELECT*FROM studentcourse;
SELECT* FROM student;
SELECT studentcourse.course_id, student.name,student.age
FROM
student LEFT JOIN studentcourse 
ON 
student.rollno = studentcourse. rollno;
SELECT studentcourse.course_id, student.name,student.age
FROM
student RIGHT JOIN studentcourse 
ON 
student.rollno = studentcourse. rollno;
-- full join--
SELECT studentcourse.course_id, student.name,student.age,Student.Address
FROM
student FULL JOIN studentcourse 
ON 
student.rollno = studentcourse. rollno;
SELECT studentcourse.course_id, student.name,student.age,Student.Address
FROM
student  left JOIN studentcourse 
ON 
student.rollno = studentcourse. rollno

UNION 

SELECT studentcourse.course_id, student.name,student.age,Student.Address
FROM
student RIGHT JOIN studentcourse 
ON 
student.rollno = studentcourse. rollno;


-- UNION & UNION ALL OPERATORS --
