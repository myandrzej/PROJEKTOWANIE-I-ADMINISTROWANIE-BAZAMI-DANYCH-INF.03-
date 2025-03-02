-- Zadanie 1
SELECT imie, nazwisko FROM autorzy ORDER BY nazwisko;

-- Zadanie 2
INSERT INTO czytelnicy (imie, nazwisko, kod) VALUES ('Ewa', 'Kowalska', '145321');

-- Zadanie 3
SELECT tytul FROM ksiazki WHERE id_kategoria = 2;

-- Zadanie 4
SELECT tytul FROM ksiazki
JOIN wypozyczenia ON ksiazki.id = wypozyczenia.id_ksiazka 
WHERE wypozyczenia.id_czytelnik = 2;

