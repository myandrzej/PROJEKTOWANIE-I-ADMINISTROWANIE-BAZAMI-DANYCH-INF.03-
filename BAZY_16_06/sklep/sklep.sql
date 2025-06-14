-- Drop tabel jeśli istnieją, żeby móc uruchomić wielokrotnie
DROP TABLE IF EXISTS OrderItems;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Categories;

-- Tworzenie tabel
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    CreatedAt DATETIME NOT NULL
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(150) NOT NULL,
    CategoryID INT,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    UserID INT,
    OrderDate DATETIME NOT NULL,
    TotalAmount DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Wstawianie danych

INSERT INTO Categories VALUES
(1, 'Elektronika'),
(2, 'Książki'),
(3, 'Odzież'),
(4, 'Dom i ogród'),
(5, 'Sport'),
(6, 'Zabawki'),
(7, 'Uroda'),
(8, 'Motoryzacja'),
(9, 'Muzyka'),
(10, 'Zdrowie');

INSERT INTO Users VALUES
(1, 'jan.kowalski', 'jan.kowalski@example.com', '2023-01-15 09:23:00'),
(2, 'anna.nowak', 'anna.nowak@example.com', '2023-02-20 14:15:30'),
(3, 'marek.zielinski', 'marek.zielinski@example.com', '2023-03-01 11:45:12'),
(4, 'karolina.wisniewska', 'karolina.wisniewska@example.com', '2023-03-10 10:10:10'),
(5, 'piotr.kaczmarek', 'piotr.kaczmarek@example.com', '2023-03-15 16:35:22'),
(6, 'monika.kowalczyk', 'monika.kowalczyk@example.com', '2023-04-01 08:00:00'),
(7, 'tomasz.lewandowski', 'tomasz.lewandowski@example.com', '2023-04-05 19:50:45'),
(8, 'ewa.dabrowska', 'ewa.dabrowska@example.com', '2023-04-07 12:30:00'),
(9, 'krzysztof.szymanski', 'krzysztof.szymanski@example.com', '2023-04-10 07:25:30'),
(10, 'maria.wroblewska', 'maria.wroblewska@example.com', '2023-04-12 22:15:55'),
(11, 'adrian.kubiak', 'adrian.kubiak@example.com', '2023-05-01 09:00:00'),
(12, 'justyna.jankowska', 'justyna.jankowska@example.com', '2023-05-02 10:10:10'),
(13, 'sebastian.zielonka', 'sebastian.zielonka@example.com', '2023-05-05 11:11:11'),
(14, 'agnieszka.mazur', 'agnieszka.mazur@example.com', '2023-05-06 14:00:00'),
(15, 'pawel.gorski', 'pawel.gorski@example.com', '2023-05-07 15:30:30'),
(16, 'katarzyna.nowicka', 'katarzyna.nowicka@example.com', '2023-05-08 16:40:40'),
(17, 'lukasz.sadowski', 'lukasz.sadowski@example.com', '2023-05-09 17:50:50'),
(18, 'dorota.wozniak', 'dorota.wozniak@example.com', '2023-05-10 18:00:00'),
(19, 'mateusz.krawczyk', 'mateusz.krawczyk@example.com', '2023-05-11 19:10:10'),
(20, 'magdalena.kaczmarczyk', 'magdalena.kaczmarczyk@example.com', '2023-05-12 20:20:20');

INSERT INTO Products VALUES
(1, 'Smartfon XYZ', 1, 1599.99, 50),
(2, 'Laptop ABC', 1, 3499.00, 30),
(3, 'Słuchawki bezprzewodowe', 1, 299.99, 100),
(4, 'Książka "Programowanie w Python"', 2, 89.99, 200),
(5, 'Bluza sportowa', 3, 129.99, 150),
(6, 'Krzesło biurowe', 4, 499.00, 20),
(7, 'Piłka nożna', 5, 79.99, 75),
(8, 'Lalka Barbie', 6, 99.99, 80),
(9, 'Krem nawilżający', 7, 59.99, 100),
(10, 'Olejek samochodowy', 8, 129.99, 40),
(11, 'Gitara akustyczna', 9, 799.00, 15),
(12, 'Witamina C', 10, 39.99, 300),
(13, 'Smartwatch', 1, 999.99, 60),
(14, 'E-book "Zdrowe odżywianie"', 2, 49.99, 500),
(15, 'Spodnie jeansowe', 3, 159.99, 100),
(16, 'Zestaw narzędzi', 4, 299.99, 25),
(17, 'Rower górski', 5, 2199.00, 10),
(18, 'Klocki LEGO', 6, 199.99, 150),
(19, 'Szampon do włosów', 7, 29.99, 120),
(20, 'Akumulator samochodowy', 8, 599.99, 20),
(21, 'Płyta CD "Best of Rock"', 9, 49.99, 60),
(22, 'Suplement diety', 10, 79.99, 90),
(23, 'Tablet', 1, 1299.00, 40),
(24, 'Książka "Historia Polski"', 2, 79.99, 300),
(25, 'Kurtka zimowa', 3, 499.99, 70),
(26, 'Meble ogrodowe', 4, 899.00, 15),
(27, 'Piłka do koszykówki', 5, 89.99, 50),
(28, 'Puzzle 1000 elementów', 6, 59.99, 100),
(29, 'Perfumy damskie', 7, 199.99, 60),
(30, 'Opony zimowe', 8, 799.99, 30);

INSERT INTO Orders VALUES
(1, 1, '2023-06-01 10:00:00', 1859.98),
(2, 2, '2023-06-01 11:15:00', 299.99),
(3, 3, '2023-06-02 14:30:00', 129.99),
(4, 4, '2023-06-03 16:00:00', 499.00),
(5, 5, '2023-06-04 09:45:00', 199.98),
(6, 6, '2023-06-05 12:00:00', 999.99),
(7, 7, '2023-06-05 13:30:00', 159.99),
(8, 8, '2023-06-06 10:10:00', 799.00),
(9, 9, '2023-06-07 18:00:00', 39.99),
(10, 10, '2023-06-08 09:00:00', 129.99),
(11, 11, '2023-06-09 15:15:00', 1599.99),
(12, 12, '2023-06-10 11:45:00', 59.99),
(13, 13, '2023-06-11 14:00:00', 799.99),
(14, 14, '2023-06-12 16:20:00', 499.00),
(15, 15, '2023-06-13 10:10:00', 2199.00),
(16, 16, '2023-06-14 09:30:00', 299.99),
(17, 17, '2023-06-15 13:00:00', 199.99),
(18, 18, '2023-06-16 14:15:00', 29.99),
(19, 19, '2023-06-17 12:45:00', 799.99),
(20, 20, '2023-06-18 11:10:00', 89.99),
(21, 1, '2023-06-19 10:00:00', 299.99),
(22, 2, '2023-06-20 11:15:00', 89.99),
(23, 3, '2023-06-21 14:30:00', 499.00),
(24, 4, '2023-06-22 16:00:00', 799.99),
(25, 5, '2023-06-23 09:45:00', 1599.99),
(26, 6, '2023-06-24 12:00:00', 129.99),
(27, 7, '2023-06-25 13:30:00', 199.99),
(28, 8, '2023-06-26 10:10:00', 79.99),
(29, 9, '2023-06-27 18:00:00', 299.99),
(30, 10, '2023-06-28 09:00:00', 49.99),
(31, 11, '2023-06-29 15:15:00', 159.99),
(32, 12, '2023-06-30 11:45:00', 899.00),
(33, 13, '2023-07-01 14:00:00', 2199.00),
(34, 14, '2023-07-02 16:20:00', 499.99),
(35, 15, '2023-07-03 10:10:00', 79.99),
(36, 16, '2023-07-04 09:30:00', 129.99),
(37, 17, '2023-07-05 13:00:00', 299.99),
(38, 18, '2023-07-06 14:15:00', 399.99),
(39, 19, '2023-07-07 12:45:00', 699.99),
(40, 20, '2023-07-08 11:10:00', 599.99),
(41, 1, '2023-07-09 10:00:00', 1099.99),
(42, 2, '2023-07-10 11:15:00', 129.99),
(43, 3, '2023-07-11 14:30:00', 299.99),
(44, 4, '2023-07-12 16:00:00', 159.99),
(45, 5, '2023-07-13 09:45:00', 899.00),
(46, 6, '2023-07-14 12:00:00', 79.99),
(47, 7, '2023-07-15 13:30:00', 129.99),
(48, 8, '2023-07-16 10:10:00', 299.99),
(49, 9, '2023-07-17 18:00:00', 399.99),
(50, 10, '2023-07-18 09:00:00', 199.99);

INSERT INTO OrderItems VALUES
(1, 1, 1, 1, 1599.99),
(2, 1, 5, 2, 129.99),
(3, 2, 3, 1, 299.99),
(4, 3, 5, 1, 129.99),
(5, 4, 6, 1, 499.00),
(6, 5, 8, 2, 99.99),
(7, 6, 13, 1, 999.99),
(8, 7, 15, 1, 159.99),
(9, 8, 11, 1, 799.00),
(10, 9, 12, 1, 39.99),
(11, 10, 10, 1, 129.99),
(12, 11, 1, 1, 1599.99),
(13, 12, 9, 1, 59.99),
(14, 13, 13, 1, 799.99),
(15, 14, 6, 1, 499.00),
(16, 15, 17, 1, 2199.00),
(17, 16, 16, 1, 299.99),
(18, 17, 18, 1, 199.99),
(19, 18, 19, 1, 29.99),
(20, 19, 20, 1, 799.99),
(21, 20, 27, 1, 89.99),
(22, 21, 3, 1, 299.99),
(23, 22, 27, 1, 89.99),
(24, 23, 6, 1, 499.00),
(25, 24, 20, 1, 799.99),
(26, 25, 1, 1, 1599.99),
(27, 26, 10, 1, 129.99),
(28, 27, 18, 1, 199.99),
(29, 28, 7, 1, 79.99),
(30, 29, 3, 1, 299.99),
(31, 30, 14, 1, 49.99),
(32, 31, 15, 1, 159.99),
(33, 32, 26, 1, 899.00),
(34, 33, 17, 1, 2199.00),
(35, 34, 25, 1, 499.99),
(36, 35, 28, 1, 59.99),
(37, 36, 27, 1, 89.99),
(38, 37, 18, 1, 199.99),
(39, 38, 4, 1, 89.99),
(40, 39, 23, 1, 1299.00),
(41, 40, 30, 1, 799.99),
(42, 41, 24, 1, 79.99),
(43, 42, 5, 1, 129.99),
(44, 43, 9, 1, 59.99),
(45, 44, 8, 1, 99.99),
(46, 45, 26, 1, 899.00),
(47, 46, 7, 1, 79.99),
(48, 47, 5, 1, 129.99),
(49, 48, 3, 1, 299.99),
(50, 49, 2, 1, 3499.00);

