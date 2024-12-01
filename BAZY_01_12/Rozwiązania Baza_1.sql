SELECT * FROM SimpleTable;

SELECT * FROM SimpleTable 
WHERE Age > 30;

SELECT * FROM SimpleTable
WHERE Name='John Doe';

SELECT * FROM SimpleTable 
ORDER BY Age DESC;

SELECT * FROM SimpleTable
WHERE Email LIKE '%example%'

SELECT COUNT(*) FROM SimpleTable
WHERE Age < 25;

SELECT * FROM SimpleTable
WHERE JoinDate 
BETWEEN '2023-01-01' 
AND '2023-12-31';