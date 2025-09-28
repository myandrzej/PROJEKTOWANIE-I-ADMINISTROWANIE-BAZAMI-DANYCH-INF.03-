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
JOIN order_items ON order_items.order_id = order_items.order_id
JOIN products ON order_items.product_id = products.product_id
WHERE users.name = 'Jan Kowalski';

6. Użytkownicy, którzy złożyli więcej niż 1 zamówienie.
7. Łączna wartość wszystkich zamówień w kwietniu 2023.
8. Produkty, które nigdy nie zostały ocenione (brak review).
9. TOP 3 użytkowników z największymi wydatkami.
10. Produkty, których stan magazynowy jest mniejszy niż 15 sztuk.
