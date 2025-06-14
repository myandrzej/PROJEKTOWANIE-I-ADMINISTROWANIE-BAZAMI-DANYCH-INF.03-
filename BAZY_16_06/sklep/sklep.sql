DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    category INT,
    price DECIMAL(10,2),
    stock_quantity INT,
    FOREIGN KEY (category) REFERENCES categories(category_id)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO categories (category_id, category_name) VALUES
(1, 'Elektronika'),
(2, 'Książki'),
(3, 'Odzież'),
(4, 'Sport'),
(5, 'Dom i ogród'),
(6, 'Zabawki'),
(7, 'Uroda'),
(8, 'Motoryzacja'),
(9, 'Biuro'),
(10, 'Zdrowie');

INSERT INTO customers (customer_id, first_name, last_name, email, phone, city) VALUES
(1, 'Anna', 'Kowalska', 'anna.kowalska@example.com', '123456789', 'Warszawa'),
(2, 'Jan', 'Nowak', 'jan.nowak@example.com', '987654321', 'Kraków'),
(3, 'Michał', 'Wiśniewski', 'michal.wisniewski@example.com', '555666777', 'Gdańsk'),
(4, 'Katarzyna', 'Zielińska', 'kasia.zielinska@example.com', '444555666', 'Poznań'),
(5, 'Piotr', 'Wójcik', 'piotr.wojcik@example.com', '333444555', 'Wrocław'),
(6, 'Ewa', 'Lewandowska', 'ewa.lewandowska@example.com', '222333444', 'Warszawa'),
(7, 'Tomasz', 'Kaczmarek', 'tomasz.kaczmarek@example.com', '111222333', 'Łódź'),
(8, 'Magdalena', 'Mazur', 'magdalena.mazur@example.com', '999888777', 'Szczecin'),
(9, 'Paweł', 'Dąbrowski', 'pawel.dabrowski@example.com', '888777666', 'Lublin'),
(10, 'Agnieszka', 'Kwiatkowska', 'agnieszka.kwiatkowska@example.com', '777666555', 'Katowice'),
(11, 'Anna', 'Kowalska', 'copy10_anna.kowalska@example.com', '123456789', 'Warszawa'),
(12, 'Jan', 'Nowak', 'copy11_jan.nowak@example.com', '987654321', 'Kraków'),
(13, 'Michał', 'Wiśniewski', 'copy12_michal.wisniewski@example.com', '555666777', 'Gdańsk'),
(14, 'Katarzyna', 'Zielińska', 'copy13_kasia.zielinska@example.com', '444555666', 'Poznań'),
(15, 'Piotr', 'Wójcik', 'copy14_piotr.wojcik@example.com', '333444555', 'Wrocław'),
(16, 'Ewa', 'Lewandowska', 'copy15_ewa.lewandowska@example.com', '222333444', 'Warszawa'),
(17, 'Tomasz', 'Kaczmarek', 'copy16_tomasz.kaczmarek@example.com', '111222333', 'Łódź'),
(18, 'Magdalena', 'Mazur', 'copy17_magdalena.mazur@example.com', '999888777', 'Szczecin'),
(19, 'Paweł', 'Dąbrowski', 'copy18_pawel.dabrowski@example.com', '888777666', 'Lublin'),
(20, 'Agnieszka', 'Kwiatkowska', 'copy19_agnieszka.kwiatkowska@example.com', '777666555', 'Katowice'),
(21, 'Anna', 'Kowalska', 'copy20_anna.kowalska@example.com', '123456789', 'Warszawa'),
(22, 'Jan', 'Nowak', 'copy21_jan.nowak@example.com', '987654321', 'Kraków'),
(23, 'Michał', 'Wiśniewski', 'copy22_michal.wisniewski@example.com', '555666777', 'Gdańsk'),
(24, 'Katarzyna', 'Zielińska', 'copy23_kasia.zielinska@example.com', '444555666', 'Poznań'),
(25, 'Piotr', 'Wójcik', 'copy24_piotr.wojcik@example.com', '333444555', 'Wrocław'),
(26, 'Ewa', 'Lewandowska', 'copy25_ewa.lewandowska@example.com', '222333444', 'Warszawa'),
(27, 'Tomasz', 'Kaczmarek', 'copy26_tomasz.kaczmarek@example.com', '111222333', 'Łódź'),
(28, 'Magdalena', 'Mazur', 'copy27_magdalena.mazur@example.com', '999888777', 'Szczecin'),
(29, 'Paweł', 'Dąbrowski', 'copy28_pawel.dabrowski@example.com', '888777666', 'Lublin'),
(30, 'Agnieszka', 'Kwiatkowska', 'copy29_agnieszka.kwiatkowska@example.com', '777666555', 'Katowice');

INSERT INTO products (product_id, name, category, price, stock_quantity) VALUES
(1, 'Laptop', 1, 3500.00, 20),
(2, 'Smartfon', 1, 2000.00, 50),
(3, 'Tablet', 1, 1500.00, 30),
(4, 'Monitor', 1, 800.00, 25),
(5, 'Klawiatura', 1, 120.00, 100),
(6, 'Mysz', 1, 80.00, 150),
(7, 'Powieść', 2, 40.00, 200),
(8, 'Podręcznik', 2, 60.00, 180),
(9, 'Koszulka', 3, 70.00, 100),
(10, 'Bluza', 3, 120.00, 80),
(11, 'Buty sportowe', 4, 300.00, 60),
(12, 'Piłka nożna', 4, 150.00, 40),
(13, 'Doniczka', 5, 50.00, 70),
(14, 'Kosiarka', 5, 1500.00, 15),
(15, 'Lalka', 6, 90.00, 80),
(16, 'Krem do twarzy', 7, 60.00, 110),
(17, 'Szampon', 7, 40.00, 130),
(18, 'Olej silnikowy', 8, 120.00, 90),
(19, 'Zeszyt', 9, 15.00, 300),
(20, 'Suplement diety', 10, 100.00, 75),
(21, 'Laptop v21', 1, 3550.00, 18),
(22, 'Smartfon v22', 1, 2100.00, 45),
(23, 'Tablet v23', 1, 1450.00, 25),
(24, 'Monitor v24', 1, 820.00, 20),
(25, 'Klawiatura v25', 1, 115.00, 90),
(26, 'Mysz v26', 1, 75.00, 140),
(27, 'Powieść v27', 2, 42.00, 190),
(28, 'Podręcznik v28', 2, 58.00, 175),
(29, 'Koszulka v29', 3, 72.00, 95),
(30, 'Bluza v30', 3, 125.00, 70);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2025-06-01', 3500.00),
(2, 2, '2025-06-02', 2150.00),
(3, 3, '2025-06-03', 150.00),
(4, 4, '2025-06-04', 800.00),
(5, 5, '2025-06-05', 400.00),
(6, 6, '2025-06-06', 250.00),
(7, 7, '2025-06-07', 600.00),
(8, 8, '2025-06-08', 1200.00),
(9, 9, '2025-06-09', 300.00),
(10, 10, '2025-06-10', 90.00),
(11, 1, '2025-06-11', 3700.00),
(12, 2, '2025-06-12', 2200.00),
(13, 3, '2025-06-13', 180.00),
(14, 4, '2025-06-14', 850.00),
(15, 5, '2025-06-15', 430.00),
(16, 6, '2025-06-16', 270.00),
(17, 7, '2025-06-17', 650.00),
(18, 8, '2025-06-18', 1300.00),
(19, 9, '2025-06-19', 350.00),
(20, 10, '2025-06-20', 100.00);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1, 3500.00),
(2, 2, 2, 1, 2000.00),
(3, 2, 6, 1, 150.00),
(4, 3, 12, 1, 150.00),
(5, 4, 4, 1, 800.00),
(6, 5, 9, 2, 70.00),
(7, 6, 11, 1, 250.00),
(8, 7, 10, 2, 300.00),
(9, 8, 14, 1, 1200.00),
(10, 9, 15, 3, 100.00),
(11, 10, 20, 1, 90.00),
(12, 11, 21, 1, 3550.00),
(13, 11, 26, 2, 75.00),
(14, 12, 22, 1, 2100.00),
(15, 13, 30, 1, 180.00),
(16, 14, 24, 1, 820.00),
(17, 15, 29, 3, 72.00),
(18, 16, 16, 2, 60.00),
(19, 17, 11, 2, 300.00),
(20, 18, 25, 1, 115.00),
(21, 19, 13, 5, 50.00),
(22, 20, 17, 1, 40.00),
(23, 5, 7, 1, 40.00),
(24, 8, 3, 1, 1500.00),
(25, 7, 5, 1, 120.00),
(26, 4, 19, 2, 15.00),
(27, 9, 8, 1, 60.00),
(28, 10, 18, 1, 120.00),
(29, 14, 23, 1, 1450.00),
(30, 13, 27, 2, 42.00);
