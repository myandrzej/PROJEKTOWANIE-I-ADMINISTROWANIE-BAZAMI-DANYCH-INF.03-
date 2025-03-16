-- 1. Wyświetl wszystkich pracowników zatrudnionych po 1 stycznia 2021 roku.

SELECT * FROM pracownicy WHERE data_zatrudnienia > '2021-01-01'; 

-- 2. Wyświetl wszystkich pracowników z działu "IT".

SELECT *
FROM pracownicy
JOIN dzialy ON pracownicy.id_dzialu = dzialy.id_dzialu
WHERE dzialy.nazwa_dzialu = 'IT';

-- 3. Wyświetl imiona i nazwiska wszystkich pracowników, którzy zarabiają więcej niż 8000.

SELECT imie, nazwisko FROM pracownicy WHERE pensja > 8000;

-- 4. Wyświetl średnią pensję w firmie.

SELECT AVG(pensja) AS srednia_pensja FROM pracownicy;

SELECT FORMAT(AVG(pensja), 2) AS srednia_pensja 
FROM pracownicy;


-- 5. Wyświetl wszystkich pracowników, którzy pracują dłużej niż 3 lata.

SELECT * 
FROM pracownicy 
WHERE data_zatrudnienia <= CURDATE() - INTERVAL 3 YEAR;

-- 6. Wyświetl wszystkich pracowników, którzy pracują dłużej niż 2 lata.


SELECT * 
FROM pracownicy 
WHERE data_zatrudnienia <= CURDATE() - INTERVAL 2 YEAR;

-- 7. Znajdź pracowników, którzy pracują w dziale "Marketing" i zarabiają więcej niż 7000.

SELECT * FROM pracownicy  JOIN dzialy
ON pracownicy.id_dzialu = dzialy.id_dzialu
WHERE dzialy.nazwa_dzialu='Marketing' AND pracownicy.pensja > 7000;

-- 8. Wyświetl pracowników, którzy zakończyli pracę nad projektem "Projekt A".

SELECT * FROM pracownicy
JOIN projekty
ON pracownicy.id_pracownika = projekty.id_pracownika
WHERE projekty.data_zakonczania IS NOT NULL AND projekty.nazwa_projektu='Projekt A';

-- 9. Wyświetl wszystkie projekty, które nie zostały jeszcze zakończone.

SELECT * FROM pracownicy
JOIN projekty
ON pracownicy.id_pracownika = projekty.id_pracownika
WHERE projekty.data_zakonczania IS NULL;

-- 10. Wyświetl najstarszego stażem w firmie pracownika.

SELECT imie, nazwisko, data_zatrudnienia FROM pracownicy ORDER BY data_zatrudnienia LIMIT 1;

-- 11. Wyświetl dane o pracownikach z działu "IT", którzy zarabiają więcej niż 9000.

SELECT * FROM pracownicy  JOIN dzialy
ON pracownicy.id_dzialu = dzialy.id_dzialu
WHERE dzialy.nazwa_dzialu='IT' AND pracownicy.pensja > 9000;

-- 12. Policz pracowników w firmie.

SELECT COUNT(*) AS liczba_pracownikow FROM pracownicy;

-- 13. Policz łączną pensję wszystkich pracowników w dziale "Księgowość".

SELECT SUM(pracownicy.pensja) FROM pracownicy
JOIN dzialy ON pracownicy.id_dzialu = dzialy.id_dzialu
WHERE dzialy.nazwa_dzialu='Księgowość';


-- 14. Wyświetl pracowników, którzy mają pensję w przedziale od 7000 do 9000.

SELECT * FROM pracownicy WHERE pensja BETWEEN 7000 AND 9000;


-- 15. Wyświetl średnią pensję w każdym dziale.


SELECT dzialy.nazwa_dzialu, AVG(pracownicy.pensja)
FROM dzialy JOIN pracownicy
ON dzialy.id_dzialu=pracownicy.id_dzialu
GROUP BY pracownicy.id_dzialu;
