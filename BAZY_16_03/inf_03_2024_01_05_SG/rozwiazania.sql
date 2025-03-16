-- Zadanie 1

SELECT nazwa, cena FROM uslugi WHERE cena >= 50;

-- Zadanie 2

SELECT AVG(cena), COUNT(id) FROM uslugi WHERE rodzaj = 1 GROUP BY rodzaj;

-- Zadanie 3

CREATE USER 'kosmetyczka'@'localhost' IDENTIFIED BY 'Kosmet34';

-- Zadanie 4

GRANT SELECT, UPDATE ON salon.uslugi TO 'kosmetyczka'@'localhost';
