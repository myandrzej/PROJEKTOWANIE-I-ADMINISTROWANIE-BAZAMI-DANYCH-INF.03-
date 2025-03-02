-- Zadanie 1
SELECT nazwa, cena FROM towary LIMIT 4;

-- Zadanie 2
SELECT cena FROM towary WHERE nazwa = 'Ekierka';

-- Zadanie 3
UPDATE dostawcy SET nazwa = "Artykuly szkolne" WHERE id = 2;

-- Zadanie 4
SELECT promocja, COUNT(*) AS podsumowanie FROM towary 
GROUP BY promocja;
