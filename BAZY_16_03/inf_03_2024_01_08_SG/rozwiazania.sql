-- Zadanie 1
SELECT imie, nazwisko, stanowisko FROM kadra WHERE stanowisko='fryzjer' OR stanowisko='stylista';

-- Zadanie 2
SELECT COUNT(*), MAX(cena) FROM uslugi WHERE rodzaj = 2;

-- Zadanie 3
SELECT uslugi.nazwa, kadra.imie FROM uslugi JOIN kadra ON uslugi.kadra_id = kadra.id WHERE uslugi.rodzaj IN(2,3);

-- Zadanie 4
ALTER TABLE uslugi ADD COLUMN opinia TEXT;
