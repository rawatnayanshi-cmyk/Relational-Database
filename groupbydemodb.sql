CREATE DATABASE sales;
USE sales;
CREATE TABLE purchasing (
    customer_id INT PRIMARY KEY,
    payment INT NOT NULL,
    mode VARCHAR(20),
    payment_Date DATE
);
                        
INSERT INTO purchasing VALUES (10,50,"credit card",'2026-04-20');
INSERT INTO purchasing VALUES (9,50,"cash",'2026-04-20');
INSERT INTO purchasing VALUES (8,00,"credit card",'2026-04-20');

SELECT 
    mode, SUM(payment) AS Totalpayment
FROM
    purchasing
GROUP BY mode
ORDER BY Totalpayment ASC;

SELECT 
    *
FROM
    purchasing;

-- HAVING CLAUSE

SELECT 
    mode, COUNT(mode) AS ModesCount, SUM(payment) AS Total
FROM
    purchasing
GROUP BY mode
having ModesCount > 2  AND Modescount <= 4
order by total;



