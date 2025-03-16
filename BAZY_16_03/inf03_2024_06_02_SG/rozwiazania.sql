-- Zadanie 1

INSERT INTO logowanie(id, nick, haslo) VALUES (3, 'Jeremi', 'Jer123');

-- Zadanie 2

SELECT FLOOR(AVG(rokUr)) AS 'Średni rok urodzenia' FROM uczestnicy;

-- Zadanie 3

SELECT imie, nazwisko, nick, haslo FROM uczestnicy JOIN logowanie ON uczestnicy.logowanie_id = logowanie.id WHERE imie LIKE "J%";


-- Zadanie 4

CREATE USER 'uczestnik'@'localhost' IDENTIFIED BY 'Ucz123&';

-- Zadanie 5
GRANT SELECT, UPDATE ON chat.uczestnicy TO 'uczestnik'@'localhost';
