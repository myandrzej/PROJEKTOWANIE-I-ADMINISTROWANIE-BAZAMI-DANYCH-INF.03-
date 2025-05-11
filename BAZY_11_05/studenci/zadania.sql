-- Zadanie 1: Ilu studentów jest na każdym roku studiów?
SELECT rok_studiow, COUNT(*) FROM studenci GROUP BY rok_studiow;

-- Zadanie 2: Znajdź wszystkich studentów z adresami e-mail z domeny edu.pl.
SELECT * FROM studenci
WHERE email LIKE '%@edu.pl';

-- Zadanie 3: Znajdź najczęściej występujące imię.
SELECT imie, COUNT(*) AS ile_razy
FROM studenci
GROUP BY imie
ORDER BY ile_razy DESC
LIMIT 1;

-- Zadanie 4: Zaktualizuj rok_studiow na 1 dla wszystkich studentów z @gmail.com.
UPDATE studenci
SET rok_studiow = 1
WHERE email LIKE '%@gmail.com';

-- Zadanie 5: Usuń studentów z interia.pl, którzy są na 5 roku.
DELETE FROM studenci
WHERE email LIKE '%@interia.pl' AND rok_studiow = 5;

-- Zadanie 6: Stwórz widok gmail_studenci dla studentów z gmail.com.
CREATE VIEW gmail_studenci AS
SELECT * FROM studenci
WHERE email LIKE '%@gmail.com';

-- Zadanie 7: Ile unikalnych nazwisk znajduje się w bazie?
SELECT COUNT(DISTINCT nazwisko) AS liczba_nazwisk
FROM studenci;

-- Zadanie 8: Lista studentów, którzy mają to samo nazwisko.
SELECT nazwisko, COUNT(*) AS ile_osob
FROM studenci
GROUP BY nazwisko
HAVING COUNT(*) > 1;

-- Zadanie 9: Wybierz studentów, których imię zaczyna się na literę "M".
SELECT * FROM studenci
WHERE imie LIKE 'M%';

-- Zadanie 10: Znajdź 3 najrzadsze imiona.
SELECT imie, COUNT(*) AS ile
FROM studenci
GROUP BY imie
ORDER BY ile ASC
LIMIT 3;
-- Zadanie 11: Policz liczbę studentów na każdym roku, tylko dla nazwisk zaczynających się na "K".
SELECT rok_studiow, COUNT(*) AS liczba
FROM studenci
WHERE nazwisko LIKE 'K%'
GROUP BY rok_studiow;

-- Zadanie 12: Sprawdź czy w bazie znajdują się studenci, którzy mają takie same nazwisko i imię, np. Adam Adam.
SELECT * FROM studenci
WHERE imie = nazwisko;

-- Zadanie 13: Znajdź studentów, którzy są na 2, 3 lub 4 roku i mają adres e-mail w domenie onet.pl.
SELECT * FROM studenci
WHERE rok_studiow IN (2, 3, 4)
AND email LIKE '%@onet.pl';

-- Zadanie 14: Dodaj kolumnę "aktywny" (typu BOOLEAN), ustaw domyślnie na 1.
ALTER TABLE studenci
ADD COLUMN aktywny BOOLEAN DEFAULT 1;

-- Zadanie 15: Zmień "aktywny" na 0 dla studentów na 5 roku.
UPDATE studenci
SET aktywny = 0
WHERE rok_studiow = 5;

-- Zadanie 16: Usuń wszystkich studentów z roku 1, których nazwisko zaczyna się na "Z".
DELETE FROM studenci
WHERE rok_studiow = 1 AND nazwisko LIKE 'Z%';

-- Zadanie 17: Zmień wszystkie nazwiska na wielkie litery.
UPDATE studenci
SET nazwisko = UPPER(nazwisko);

-- Zamienia na małe
UPDATE studenci
SET nazwisko = LOWER(nazwisko);

-- Zamiana tylko pierwszej litery na dużą
UPDATE studenci
SET nazwisko = CONCAT(
UPPER(LEFT(nazwisko, 1)),
LOWER(SUBSTRING(nazwisko, 2))
);

-- Zadanie 18: Dodaj kolumnę data_dodania i ustaw ją na aktualną datę.
ALTER TABLE studenci
ADD COLUMN data_dodania DATE;

UPDATE studenci
SET data_dodania = CURRENT_DATE;

Zadanie 19: Wyszukaj studentów, których nazwisko kończy się na "ski" lub "ska"
Zadanie 20: Usuń kolumnę aktywny z tabeli.
