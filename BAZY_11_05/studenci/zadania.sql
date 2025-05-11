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


Zadanie 5: Usuń studentów z interia.pl, którzy są na 5 roku.
Zadanie 6: Stwórz widok gmail_studenci dla studentów z gmail.com.
Zadanie 7: Ile unikalnych nazwisk znajduje się w bazie?
Zadanie 8: Lista studentów, którzy mają to samo nazwisko.
Zadanie 9: Wybierz studentów, których imię zaczyna się na literę "M".
Zadanie 10: Znajdź 3 najrzadsze imiona.
Zadanie 11: Policz liczbę studentów na każdym roku, tylko dla nazwisk zaczynających się na "K".
Zadanie 12: Sprawdź czy w bazie znajdują się studenci, którzy mają takie same nazwisko i imię, np. Adam Adam.
Zadanie 13: Znajdź studentów, którzy są na 2, 3 lub 4 roku i mają adres w domenie onet.pl.
Zadanie 14: Dodaj kolumnę "aktywny" (typu BOOLEAN), ustaw domyślnie na 1.
Zadanie 15: Zmień "aktywny" na 0 dla studentów na 5 roku.
Zadanie 16: Usuń wszystkich studentów z roku 1, których nazwisko zaczyna się na "Z".
Zadanie 17: Zmień wszystkie nazwiska na wielkie litery.
Zadanie 18: Dodaj kolumnę data_dodania i ustaw ją na aktualną datę.
Zadanie 19: Wyszukaj studentów, których nazwisko kończy się na "ski" lub "ska"
Zadanie 20: Usuń kolumnę aktywny z tabeli.
