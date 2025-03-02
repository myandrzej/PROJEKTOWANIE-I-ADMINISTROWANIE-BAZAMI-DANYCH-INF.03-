-- Zadanie 1
SELECT nazwa, ulica FROM kwiaciarnie WHERE miasto = 'Malbork';

-- Zadanie 2
SELECT id_kwiaciarni, COUNT(id_zam) FROM zamowienia GROUP BY id_kwiaciarni;

-- Zadanie 3
SELECT kwiaciarnie.nazwa, kwiaciarnie.miasto, zamowienia.kwiaty FROM kwiaciarnie 
JOIN zamowienia 
ON kwiaciarnie.id_kwiaciarni = zamowienia.id_kwiaciarni 
WHERE zamowienia.data = '2017-01-07';


-- Zadanie 4
CREATE TABLE klienci ( 
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
imie VARCHAR(15), 
nazwisko VARCHAR(15), 
rabat INT UNSIGNED
);
