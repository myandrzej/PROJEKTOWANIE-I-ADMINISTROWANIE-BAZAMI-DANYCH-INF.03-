-- Zadanie 1
SELECT nazwa FROM wycieczki WHERE poczatek='Muszyna' OR poczatek='Wieliczka';

-- Zadanie 2

SELECT wycieczki.nazwa, wycieczki.opis, wycieczki.poczatek, zdjecia.zrodlo 
FROM wycieczki JOIN zdjecia ON zdjecia_id = zdjecia.id;

-- Zadanie 3
SELECT COUNT(*) FROM wycieczki;

-- Zadanie 4
ALTER TABLE wycieczki ADD COLUMN ocena INT;
