-- 1. Wyświetl wszystkich studentów z kierunku "Informatyka".
SELECT studenci.imie, studenci.nazwisko
FROM studenci 
JOIN kierunki ON 
studenci.kierunek_id = kierunki.id
WHERE kierunki.nazwa = 'Informatyka';

-- 2. Znajdź wszystkich studentów, którzy są na 1. roku studiów.
SELECT imie, nazwisko, rok_studiow
FROM studenci
WHERE rok_studiow = 1;

-- 3. Policz ilu studentów przypisano do każdego kierunku.
SELECT kierunki.nazwa, COUNT(*) AS liczba_studentow
FROM studenci
JOIN kierunki ON studenci.kierunek_id = kierunki.id
GROUP BY kierunki.nazwa;

-- 4. Znajdź studentów, którzy mają ocenę 5.0.
SELECT DISTINCT studenci.imie, studenci.nazwisko
FROM studenci 
JOIN oceny ON studenci.id = oceny.student_id
WHERE oceny.ocena = 5.0;

-- 5. Policz średnią ocenę z każdego przedmiotu.
SELECT przedmiot, ROUND(AVG(ocena), 2) AS srednia_ocena
FROM oceny
GROUP BY przedmiot;

-- 6. Wyświetl kierunki wraz z liczbą studentów i posortuj je malejąco.
SELECT kierunki.nazwa, COUNT(*) AS liczba_studentow
FROM studenci 
JOIN kierunki ON studenci.kierunek_id = kierunki.id
GROUP BY kierunki.nazwa
ORDER BY liczba_studentow DESC;

-- 7. Znajdź studentów ze średnią ocen powyżej 4.0.
SELECT studenci.imie, studenci.nazwisko, ROUND(AVG(oceny.ocena), 2) AS srednia
FROM studenci 
JOIN oceny ON studenci.id = oceny.student_id
GROUP BY studenci.id
HAVING AVG(oceny.ocena) > 4.0;

--7b. Znajdź studentów ze średnią ocen powyżej 4.0 malejąco
SELECT studenci.imie, studenci.nazwisko, ROUND(AVG(oceny.ocena), 2) AS srednia
FROM studenci 
JOIN oceny ON studenci.id = oceny.student_id
GROUP BY studenci.id
HAVING AVG(oceny.ocena) > 4.0;

-- 8. Wyświetl trzech studentów z najwyższą średnią ocen.
SELECT studenci.imie, studenci.nazwisko, ROUND(AVG(oceny.ocena), 2) AS srednia
FROM studenci
JOIN oceny ON studenci.id = oceny.student_id
GROUP BY studenci.id
ORDER BY srednia DESC
LIMIT 3;

-- 9. Wyświetl średnią ocen z "Bazy danych" dla każdego kierunku.
SELECT kierunki.nazwa, ROUND(AVG(oceny.ocena), 2) AS srednia
FROM oceny
JOIN studenci ON oceny.student_id = studenci.id
JOIN kierunki ON studenci.kierunek_id = kierunki.id
WHERE oceny.przedmiot = 'Bazy danych'
GROUP BY kierunki.nazwa;


-- 10. Wyświetl studentów, którzy nigdy nie dostali oceny < 4.0.
SELECT studenci.imie, studenci.nazwisko, GROUP_CONCAT(oceny.ocena ORDER BY oceny.ocena SEPARATOR ', ') AS oceny 
FROM studenci JOIN oceny 
ON oceny.student_id = studenci.id 
WHERE studenci.id NOT IN 
(SELECT oceny.student_id FROM oceny WHERE oceny.ocena < 4.0)
GROUP BY studenci.id, studenci.imie, studenci.nazwisko 
ORDER BY studenci.nazwisko, studenci.imie; 


-- 11. Wyświetl przedmiot z najniższą średnią ocen.
SELECT przedmiot, ROUND(AVG(ocena), 2) AS srednia
FROM oceny
GROUP BY przedmiot
LIMIT 1;

-- 12. Stwórz wiok o nazwie top_studenci, gdzie znajdą się studenci ze średnią ocen > 4.5.
CREATE VIEW top_studenci AS
SELECT studenci.id, studenci.imie, studenci.nazwisko, ROUND(AVG(oceny.ocena), 2) AS srednia
FROM studenci 
JOIN oceny ON studenci.id = oceny.student_id
GROUP BY studenci.id
HAVING ROUND(AVG(oceny.ocena), 2) > 4.5;

-- 13. Wyświetl liczbę studentów na każdym roku dla danego kierunku.
SELECT kierunki.nazwa AS kierunek, studenci.rok_studiow, COUNT(*) AS liczba
FROM studenci
JOIN kierunki ON studenci.kierunek_id = kierunki.id
GROUP BY kierunki.nazwa, studenci.rok_studiow
ORDER BY kierunki.nazwa, studenci.rok_studiow;

-- 14. Wyświetl kierunek, rok studiów oraz średnią na danym roku z danego kierunku.
SELECT kierunki.nazwa AS kierunek, studenci.rok_studiow, ROUND(AVG(oceny.ocena), 2) AS srednia FROM studenci 
JOIN oceny ON studenci.id = oceny.student_id 
JOIN kierunki ON studenci.kierunek_id = kierunki.id 
GROUP BY kierunki.nazwa, studenci.rok_studiow 
ORDER BY kierunki.nazwa, studenci.rok_studiow; 

15. Znajdź 5 najczęściej ocenianych przedmiotów.
16. Wyświetl studentów, którzy mają dokładnie 5 ocen.
17. Wyświetl wszystkich studentów bez żadnej oceny.
18. Wyświetl przedmiot, który ma największy rozrzut ocen (MAX - MIN).
19. Znajdź studentów, którzy mają przynajmniej jedną ocenę z każdego przedmiotu.
20. Dla każdego roku studiów podaj średnią ocenę studentów.
