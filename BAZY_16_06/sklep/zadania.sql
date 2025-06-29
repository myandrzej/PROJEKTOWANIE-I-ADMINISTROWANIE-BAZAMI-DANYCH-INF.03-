-- Zadanie 1. Pokaż zamówienia z sumą wartości pozycji w zamówieniu, a następnie porównaj z wartością total_amount w tabeli orders.
SELECT o.order_id, o.total_amount, SUM(oi.price * oi.quantity) AS sum_order_items
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id, o.total_amount;

-- Zadanie 2. Wyświetl listę zamówień z nazwiskami klientów i datą zamówienia.
SELECT o.order_id, c.first_name, c.last_name, o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Zadanie 3. Znajdź klientów, którzy kupili produkty z kategorii 'Elektronika'.
SELECT DISTINCT customers.customer_id, customers.first_name, customers.last_name
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_items ON orders.order_id = order_items.order_id
JOIN products ON order_items.product_id = products.product_id
JOIN categories ON products.category = categories.category_id
WHERE categories.category_name = 'Elektronika';

-- Zadanie 4. Znajdź średnią wartość zamówienia (total_amount).
SELECT ROUND(AVG(total_amount), 2) AS avg_order_value FROM orders; 

-- Zadanie 5. Wypisz klientów, którzy złożyli zamówienia w czerwcu 2025 roku.
SELECT DISTINCT customers.customer_id, customers.first_name, customers.last_name
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
WHERE orders.order_date BETWEEN '2025-06-01' AND '2025-06-30';

SELECT customers.customer_id, 
customers.first_name, 
customers.last_name, 
GROUP_CONCAT(DATE(orders.order_date)) AS order_dates
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
WHERE orders.order_date BETWEEN '2025-06-01' AND '2025-06-30'
GROUP BY customers.customer_id;


-- Zadanie 6. Znajdź 5 najdroższych produktów.
SELECT * FROM products ORDER BY price DESC LIMIT 5;


-- Zadanie 7. Wyświetl produkty, których stan magazynowy jest mniejszy niż 20.
SELECT * FROM products WHERE stock_quantity < 20;

-- Zadanie 8. Znajdź kategorię z największą liczbą produktów.
SELECT categories.category_name, COUNT(*) AS product_count
FROM products
JOIN categories ON products.category = categories.category_id
GROUP BY categories.category_name
ORDER BY product_count DESC
LIMIT 1;


Zadanie 9. Wyświetl klientów i sumę wartości ich zamówień.
SELECT customers.customer_id, customers.first_name, customers.last_name, SUM(orders.total_amount) AS total_spent
FROM customers
JOIN orders orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id;


-- Zadanie 10. Pokaż, ile zamówień zostało złożonych w każdym dniu.
SELECT order_date, COUNT(*) AS orders_count
FROM orders
GROUP BY order_date
ORDER BY order_date;


-- Zadanie 11. Wyświetl listę zamówień, które mają pozycje produktów o cenie powyżej 1000 zł.
SELECT DISTINCT orders.order_id
FROM orders
JOIN order_items ON orders.order_id = order_items.order_id
WHERE order_items.price > 1000;

  
-- Zadanie 12. Wypisz klientów, których nazwisko zaczyna się na literę 'K'.
SELECT * FROM customers WHERE last_name LIKE 'K%';

-- Zadanie 13. Znajdź produkty, których nazwa zawiera słowo "Laptop".
SELECT * FROM products WHERE name LIKE '%Laptop%';

-- Zadanie 14. Oblicz łączną wartość zamówień złożonych przez klienta o customer_id = 2.
SELECT SUM(total_amount) AS total_spent FROM orders WHERE customer_id = 2; 

-- Zadanie 15. Znajdź 5 produktów z największym stanem magazynowym.
SELECT * FROM products ORDER BY stock_quantity DESC LIMIT 5;

-- Zadanie 16. Wyświetl wszystkie kategorie posortowane alfabetycznie.
SELECT * FROM categories ORDER BY category_name;

-- Zadanie 17. Znajdź zamówienia z datą późniejszą niż 2025-06-15 i wyświetl ich kwoty.
SELECT * FROM orders WHERE order_date > '2025-06-15';

-- Zadanie 18. Wyświetl klientów, których e-mail zawiera domenę "example.com".
SELECT * FROM customers WHERE email LIKE '%@example.com';


-- Zadanie 19. Znajdź produkty, których cena jest pomiędzy 100 a 500.
SELECT * FROM products WHERE price BETWEEN 100 AND 500;

-- Zadanie 20. Wyświetl 10 ostatnio złożonych zamówień z datą i klientem.
SELECT customers.customer_id, customers.first_name, customers.last_name, COUNT(orders.order_id) AS orders_count
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id
LIMIT 10;





