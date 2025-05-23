-- Zadanie 1
SELECT nazwaPliku, podpis FROM zdjecia ORDER BY podpis ASC;

-- Zadanie 2
SELECT cel, dataWyjazdu FROM wycieczki WHERE dostepna IS NOT TRUE; 

-- Zadanie 3
SELECT wycieczki.cel, wycieczki.cena, zdjecia.podpis FROM wycieczki JOIN zdjecia ON wycieczki.zdjecia_id = zdjecia.id WHERE wycieczki.cena > 1300;

-- Zadanie 4
DROP TABLE uzytkownik;
