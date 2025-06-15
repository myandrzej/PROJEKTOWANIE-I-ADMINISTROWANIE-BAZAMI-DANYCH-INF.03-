-- Zadanie 1. Pobierz wszystkich klientów z miasta Warszawa.
SELECT * FROM customers WHERE city = 'Warszawa';


-- Zadanie 2 Pokaż listę wszystkich produktów z ceną większą niż 100.
SELECT * FROM products WHERE price > 100;

-- Zadanie 3 Znajdź wszystkie zamówienia klienta o customer_id = 1.
SELECT * FROM orders WHERE customer_id = 1;


-- Zadanie 4 Wyświetl nazwy produktów oraz ich kategorię (nazwa kategorii).
SELECT p.name, c.category_name 
FROM products p
JOIN categories c ON p.category = c.category_id;

-- Zadanie 5 Policz, ile produktów jest w każdej kategorii.
SELECT c.category_name, COUNT(*) AS product_count
FROM products p
JOIN categories c ON p.category = c.category_id
GROUP BY c.category_name;

-- Zadanie 6 Znajdź klientów, którzy złożyli zamówienia na kwotę większą niż 1000.
SELECT DISTINCT c.first_name, c.last_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.total_amount > 1000;

-- Zadanie 7 Wyświetl zamówienia z datą i sumą kwoty zamówienia.
SELECT order_id, order_date, total_amount FROM orders ORDER BY order_date;

-- Zadanie 8 Pokaż wszystkie pozycje zamówień (order_items) wraz z nazwą produktu.
SELECT oi.order_item_id, p.name, oi.quantity
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id;


-- Zadanie 9 Wyświetl klientów i liczbę zamówień, jakie złożyli.
SELECT c.customer_id, c.first_name, c.last_name, COUNT(o.order_id) AS orders_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- Zadanie 10 Znajdź produkty, których cena jest poniżej średniej ceny wszystkich produktów.
SELECT * FROM products
WHERE price < (SELECT AVG(price) FROM products);

