-- Zadanie 1
SELECT * FROM pokoje;

-- Zadanie 2
SELECT id_pok, sezon FROM rezerwacje WHERE liczba_dn > 7;

-- Zadanie 3
SELECT SUM(liczba_dn) FROM rezerwacje WHERE sezon = 'zima';

-- Zadanie 4
UPDATE rezerwacje SET liczba_dn = 4 WHERE liczba_dn < 4;

-- Zadanie 5
CREATE USER 'najemca' IDENTIFIED BY 'n@JEM1@!';
