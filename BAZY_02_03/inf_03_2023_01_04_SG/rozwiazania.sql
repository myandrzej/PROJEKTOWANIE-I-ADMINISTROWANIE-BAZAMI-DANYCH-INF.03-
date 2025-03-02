-- Zadanie 1
SELECT id, dataWyjazdu, cel, cena FROM wycieczki WHERE dostepna = 1;

-- Zadanie 2
SELECT nazwaPliku, podpis FROM zdjecia ORDER BY podpis DESC;


-- Zadanie 3
SELECT wycieczki.cel, wycieczki.cena, zdjecia.podpis FROM wycieczki
JOIN zdjecia ON wycieczki.zdjecia_id = zdjecia.id
WHERE wycieczki.cena > 1200;

-- Zadanie 4
ALTER TABLE wycieczki ADD COLUMN liczbaDni INT UNSIGNED AFTER dataWyjazdu;
