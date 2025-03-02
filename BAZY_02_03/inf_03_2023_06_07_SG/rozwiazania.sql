-- Zadanie 1
INSERT INTO czytelnicy (imie, nazwisko, kod) 
VALUES ('Ewelina', 'Romanowska', '56677');

-- Zadanie 2
SELECT imie, nazwisko FROM czytelnicy ORDER BY nazwisko;

-- Zadanie 3
SELECT tytul FROM ksiazki 
JOIN autorzy ON ksiazki.id_autor = autorzy.id 
WHERE nazwisko = 'Sienkiewicz';

-- Zadanie 4

SELECT autorzy.nazwisko, COUNT(ksiazki.tytul) AS ile_tytulow FROM autorzy JOIN
ksiazki ON ksiazki.id_autor = autorzy.id 
GROUP BY nazwisko;

