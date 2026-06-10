CREATE database company;
use company;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);

INSERT INTO employees (name, age, department)
VALUES ('Ashok', 25, 'HR'),
       ('Bablu', 30, 'IT'),
       ('Ritik', 28, 'Finance');

SELECT * FROM employees;

SELECT name FROM employees WHERE department = 'IT';
SELECT 	age FROM employees WHERE id = 1;

UPDATE employees SET age = 26 WHERE name = 'Ritik';
UPDATE employees SET name = 'Rishabh' WHERE department = 'HR';

DELETE FROM employees WHERE name = 'Bablu';

