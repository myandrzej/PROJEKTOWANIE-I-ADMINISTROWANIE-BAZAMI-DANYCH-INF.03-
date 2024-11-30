-- Create a database
CREATE DATABASE IF NOT EXISTS SimpleDB;

-- Use the database
USE SimpleDB;

-- Create a table with five columns
CREATE TABLE IF NOT EXISTS SimpleTable (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Age INT,
    Email VARCHAR(100),
    JoinDate DATE
);

-- Insert 20 records into the table
INSERT INTO SimpleTable (Name, Age, Email, JoinDate) VALUES
('John Doe', 25, 'john.doe@example.com', '2024-01-01'),
('Jane Smith', 30, 'jane.smith@example.com', '2023-12-01'),
('Alice Johnson', 22, 'alice.johnson@example.com', '2023-11-15'),
('Bob Brown', 35, 'bob.brown@example.com', '2023-10-20'),
('Charlie Davis', 28, 'charlie.davis@example.com', '2023-09-10'),
('Diana Evans', 27, 'diana.evans@example.com', '2023-08-25'),
('Frank Garcia', 40, 'frank.garcia@example.com', '2023-07-30'),
('Grace Hall', 24, 'grace.hall@example.com', '2023-06-14'),
('Henry Allen', 32, 'henry.allen@example.com', '2023-05-11'),
('Isla Adams', 26, 'isla.adams@example.com', '2023-04-07'),
('Jack Turner', 33, 'jack.turner@example.com', '2023-03-22'),
('Karen Lee', 29, 'karen.lee@example.com', '2023-02-18'),
('Leo Clark', 31, 'leo.clark@example.com', '2023-01-10'),
('Mia Wright', 23, 'mia.wright@example.com', '2022-12-05'),
('Noah Walker', 37, 'noah.walker@example.com', '2022-11-28'),
('Olivia Scott', 21, 'olivia.scott@example.com', '2022-10-19'),
('Paul Hill', 39, 'paul.hill@example.com', '2022-09-15'),
('Quinn Green', 34, 'quinn.green@example.com', '2022-08-12'),
('Rachel King', 20, 'rachel.king@example.com', '2022-07-09'),
('Steve Baker', 45, 'steve.baker@example.com', '2022-06-06');
