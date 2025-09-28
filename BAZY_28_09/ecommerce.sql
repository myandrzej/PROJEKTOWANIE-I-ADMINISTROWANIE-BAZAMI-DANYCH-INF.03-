

DROP DATABASE IF EXISTS ecommerce_db;
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- ========================
-- Tabela: users
-- ========================
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    phone VARCHAR(20),
    registration_date DATE NOT NULL
);

-- ========================
-- Tabela: products
-- ========================
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    category VARCHAR(100),
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

-- ========================
-- Tabela: orders
-- ========================
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- ========================
-- Tabela: order_items
-- ========================
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- ========================
-- Tabela: reviews
-- ========================
CREATE TABLE reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    review_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- =====================================
-- Wstawianie danych
-- =====================================

-- Użytkownicy
INSERT INTO users (name, email, phone, registration_date) VALUES
('Jan Kowalski', 'jan.kowalski@example.com', '500111222', '2023-01-15'),
('Anna Nowak', 'anna.nowak@example.com', '501222333', '2023-02-10'),
('Piotr Zieliński', 'piotr.zielinski@example.com', '502333444', '2023-03-05'),
('Marta Wiśniewska', 'marta.wisniewska@example.com', '503444555', '2023-04-20'),
('Tomasz Lewandowski', 'tomasz.lewandowski@example.com', '504555666', '2023-05-11'),
('Katarzyna Krawczyk', 'katarzyna.k@example.com', '505666777', '2023-06-07'),
('Adam Jankowski', 'adam.jankowski@example.com', '506777888', '2023-07-01'),
('Ewa Wojciechowska', 'ewa.wojciechowska@example.com', '507888999', '2023-07-15'),
('Robert Kamiński', 'robert.kaminski@example.com', '508999000', '2023-08-10'),
('Magdalena Piotrowska', 'magdalena.piotrowska@example.com', '509000111', '2023-09-05');

-- Produkty
INSERT INTO products (name, category, price, stock) VALUES
('Laptop Dell XPS 13', 'Elektronika', 4500.00, 10),
('Smartfon Samsung S23', 'Elektronika', 3800.00, 15),
('Klawiatura Mechaniczna', 'Akcesoria', 350.00, 50),
('Krzesło Gamingowe', 'Meble', 800.00, 20),
('Monitor LG 27"', 'Elektronika', 1200.00, 25),
('Słuchawki Sony WH-1000XM4', 'Audio', 1400.00, 30),
('Tablet iPad Air', 'Elektronika', 2800.00, 12),
('Mysz Logitech MX Master 3', 'Akcesoria', 400.00, 40),
('Router TP-Link Archer AX6000', 'Sieci', 950.00, 18),
('Powerbank Xiaomi 20 000 mAh', 'Akcesoria', 150.00, 60);

-- Zamówienia
INSERT INTO orders (user_id, order_date, total_amount) VALUES
(1, '2023-04-01', 4850.00),
(2, '2023-04-05', 800.00),
(1, '2023-04-07', 350.00),
(3, '2023-04-10', 3950.00),
(4, '2023-04-15', 1400.00),
(5, '2023-04-20', 1200.00),
(6, '2023-04-25', 2800.00),
(7, '2023-04-28', 950.00),
(8, '2023-05-01', 150.00),
(9, '2023-05-03', 400.00);

-- Pozycje zamówień
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 4500.00),
(1, 3, 1, 350.00),
(2, 4, 1, 800.00),
(3, 3, 1, 350.00),
(4, 2, 1, 3800.00),
(4, 8, 1, 150.00),
(5, 6, 1, 1400.00),
(6, 5, 1, 1200.00),
(7, 7, 1, 2800.00),
(8, 9, 1, 950.00),
(9, 10, 1, 150.00),
(10, 8, 1, 400.00);

-- Opinie
INSERT INTO reviews (user_id, product_id, rating, comment, review_date) VALUES
(1, 1, 5, 'Świetny laptop, bardzo szybki!', '2023-04-10'),
(2, 4, 4, 'Wygodne krzesło, ale mogłoby być tańsze.', '2023-04-12'),
(3, 2, 3, 'Dobry telefon, ale bateria średnia.', '2023-04-15'),
(4, 6, 5, 'Słuchawki najlepsze na rynku!', '2023-04-18'),
(5, 5, 4, 'Monitor ma świetne kolory.', '2023-04-21'),
(6, 7, 5, 'iPad działa płynnie, polecam.', '2023-04-27'),
(7, 8, 4, 'Świetna myszka do pracy.', '2023-05-02'),
(8, 9, 3, 'Router OK, ale konfiguracja trudna.', '2023-05-05'),
(9, 10, 4, 'Dobry powerbank, ładuje szybko.', '2023-05-07'),
(10, 3, 5, 'Najlepsza klawiatura jaką miałem!', '2023-05-10');


