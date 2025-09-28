--1. Lista wszystkich użytkowników, którzy zarejestrowali się w 2023 roku.
SELECT * FROM users WHERE YEAR(registration_date) = 2023; 

--2. Produkty z kategorii „Elektronika” droższe niż 3000 zł.
SELECT * FROM products WHERE category = 'Elektronika' AND price > 3000;

--3. Średnia ocena (rating) dla każdego produktu.
SELECT products.product_id, products.name, AVG(reviews.rating) AS avg_rating
FROM products
JOIN reviews ON products.product_id = reviews.product_id
GROUP BY products.product_id, products.name;

--4. Najczęściej kupowany produkt (po ilości).
SELECT products.product_id, products.name, SUM(order_items.quantity) AS total
FROM order_items
JOIN products ON order_items.product_id = products.product_id
GROUP BY products.product_id, products.name
ORDER BY total DESC
LIMIT 1;

--5. Zamówienia użytkownika „Jan Kowalski” wraz z listą produktów.
SELECT orders.order_id, orders.order_date, products.name, order_items.quantity, order_items.price
FROM orders
JOIN users ON orders.user_id = users.user_id
JOIN order_items ON orders.order_id = order_items.order_id
JOIN products ON order_items.product_id = products.product_id
WHERE users.name = 'Jan Kowalski';

--6. Użytkownicy, którzy złożyli więcej niż 1 zamówienie.
SELECT users.user_id, users.name, COUNT(orders.order_id) AS orders_count
FROM users 
JOIN orders  ON users.user_id = orders.user_id
GROUP BY users.user_id, users.name
HAVING COUNT(orders.order_id) > 1;

--7. Łączna wartość wszystkich zamówień w kwietniu 2023.
SELECT SUM(total_amount) AS total_april_ 
FROM orders 
WHERE order_date LIKE '2023-04-%'; 

--8. Produkty, które nigdy nie zostały ocenione (brak review).
SELECT products.product_id, products.name
FROM products 
JOIN reviews ON products.product_id = reviews.product_id
WHERE reviews.review_id IS NULL;

--9. TOP 3 użytkowników z największymi wydatkami.
SELECT users.user_id, users.name, SUM(orders.total_amount) AS total_spent
FROM users
JOIN orders ON users.user_id = orders.user_id
GROUP BY users.user_id, users.name
ORDER BY total_spent DESC
LIMIT 3;

10. Produkty, których stan magazynowy jest mniejszy niż 15 sztuk.
