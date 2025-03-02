-- Zadanie 1
SELECT nazwa FRIM towary WHERE promocja = 1;

-- Zadanie 2
SELECT cena FROM towary WHERE nazwa = 'Markery 4 szt.';

-- Zadanie 3
SELECT dostawcy.id, dostawcy.nazwa, COUNT(towary.id) AS liczba_towarow FROM dostawcy 
JOIN towary ON dostawcy.id = towary.idDostawcy 
GROUP BY towary.idDostawcy;

-- Zadanie 4
ALTER TABLE dostawcy ADD informacje TEXT;
