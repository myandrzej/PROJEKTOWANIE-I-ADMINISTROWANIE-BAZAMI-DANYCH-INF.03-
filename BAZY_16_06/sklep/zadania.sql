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


Zadanie 6.
Znajdź 5 najdroższych produktów.

Zadanie 7.
Wyświetl produkty, których stan magazynowy jest mniejszy niż 20.

Zadanie 8.
Znajdź kategorię z największą liczbą produktów.

Zadanie 9.
Wyświetl klientów i sumę wartości ich zamówień.

Zadanie 10.
Pokaż, ile zamówień zostało złożonych w każdym dniu.

Zadanie 11.
Wyświetl listę zamówień, które mają pozycje produktów o cenie powyżej 1000 zł.

Zadanie 12.
Wypisz klientów, których nazwisko zaczyna się na literę 'K'.

Zadanie 13.
Znajdź produkty, których nazwa zawiera słowo "Laptop".

Zadanie 14.
Oblicz łączną wartość zamówień złożonych przez klienta o customer_id = 2.

Zadanie 15. 
Znajdź 5 produktów z największym stanem magazynowym.

Zadanie 16.
Wyświetl wszystkie kategorie posortowane alfabetycznie.

Zadanie 17.
Znajdź zamówienia z datą późniejszą niż 2025-06-15 i wyświetl ich kwoty.

Zadanie 18.
Wyświetl klientów, których e-mail zawiera domenę "example.com".

Zadanie 19.
Znajdź produkty, których cena jest pomiędzy 100 a 500.

Zadanie 20.
Wyświetl 10 ostatnio złożonych zamówień z datą i klientem.






