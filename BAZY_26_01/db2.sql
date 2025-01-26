-- Tworzenie bazy danych
CREATE DATABASE MyDatabase;
USE MyDatabase;

-- Tabela: Uzytkownicy
CREATE TABLE Uzytkownicy (
    id INT AUTO_INCREMENT PRIMARY KEY,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    email VARCHAR(100),
    wiek INT
);

-- Tabela: Produkty
CREATE TABLE Produkty (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa VARCHAR(100),
    cena DECIMAL(10, 2),
    kategoria VARCHAR(50)
);

-- Tabela: Zamowienia
CREATE TABLE Zamowienia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    uzytkownik_id INT,
    produkt_id INT,
    data_zamowienia DATE,
    ilosc INT,
    FOREIGN KEY (uzytkownik_id) REFERENCES Uzytkownicy(id),
    FOREIGN KEY (produkt_id) REFERENCES Produkty(id)
);

-- Wypełnienie tabeli Uzytkownicy (20 rekordów)
INSERT INTO Uzytkownicy (imie, nazwisko, email, wiek)
VALUES
('Jan', 'Kowalski', 'jan.kowalski@example.com', 30),
('Anna', 'Nowak', 'anna.nowak@example.com', 25),
('Piotr', 'Wiśniewski', 'piotr.wisniewski@example.com', 35),
('Maria', 'Kowalczyk', 'maria.kowalczyk@example.com', 40),
('Tomasz', 'Jankowski', 'tomasz.jankowski@example.com', 28),
('Agnieszka', 'Zielińska', 'agnieszka.zielinska@example.com', 32),
('Robert', 'Woźniak', 'robert.wozniak@example.com', 29),
('Magdalena', 'Szymańska', 'magdalena.szymanska@example.com', 34),
('Paweł', 'Kamiński', 'pawel.kaminski@example.com', 27),
('Ewa', 'Dąbrowska', 'ewa.dabrowska@example.com', 31),
('Krzysztof', 'Nowicki', 'krzysztof.nowicki@example.com', 36),
('Joanna', 'Czarnecka', 'joanna.czarnecka@example.com', 26),
('Andrzej', 'Krawczyk', 'andrzej.krawczyk@example.com', 38),
('Zofia', 'Majewska', 'zofia.majewska@example.com', 33),
('Marcin', 'Sikora', 'marcin.sikora@example.com', 30),
('Katarzyna', 'Michalska', 'katarzyna.michalska@example.com', 29),
('Grzegorz', 'Adamczyk', 'grzegorz.adamczyk@example.com', 31),
('Alicja', 'Pawlak', 'alicja.pawlak@example.com', 27),
('Łukasz', 'Górski', 'lukasz.gorski@example.com', 35),
('Monika', 'Wróbel', 'monika.wrobel@example.com', 28);

-- Wypełnienie tabeli Produkty (20 rekordów)
INSERT INTO Produkty (nazwa, cena, kategoria)
VALUES
('Laptop', 3000.00, 'Elektronika'),
('Smartfon', 1500.00, 'Elektronika'),
('Książka', 40.00, 'Kultura'),
('Biurko', 200.00, 'Meble'),
('Krzesło', 100.00, 'Meble'),
('Telewizor', 2500.00, 'Elektronika'),
('Mysz', 50.00, 'Elektronika'),
('Klawiatura', 150.00, 'Elektronika'),
('Zestaw słuchawkowy', 300.00, 'Elektronika'),
('Monitor', 800.00, 'Elektronika'),
('Pióro', 20.00, 'Kultura'),
('Szafka', 500.00, 'Meble'),
('Kanapa', 1500.00, 'Meble'),
('Zegar', 250.00, 'Dom'),
('Obraz', 400.00, 'Kultura'),
('Lampka', 120.00, 'Dom'),
('Kamera', 1800.00, 'Elektronika'),
('Głośniki', 700.00, 'Elektronika'),
('Kalkulator', 80.00, 'Elektronika'),
('Skaner', 1200.00, 'Elektronika');

-- Wypełnienie tabeli Zamowienia (20 rekordów)
INSERT INTO Zamowienia (uzytkownik_id, produkt_id, data_zamowienia, ilosc)
VALUES
(1, 1, '2025-01-01', 1),
(2, 2, '2025-01-02', 2),
(3, 3, '2025-01-03', 1),
(4, 4, '2025-01-04', 5),
(5, 5, '2025-01-05', 3),
(6, 6, '2025-01-06', 4),
(7, 7, '2025-01-07', 1),
(8, 8, '2025-01-08', 2),
(9, 9, '2025-01-09', 6),
(10, 10, '2025-01-10', 1),
(11, 11, '2025-01-11', 2),
(12, 12, '2025-01-12', 3),
(13, 13, '2025-01-13', 4),
(14, 14, '2025-01-14', 5),
(15, 15, '2025-01-15', 1),
(16, 16, '2025-01-16', 6),
(17, 17, '2025-01-17', 3),
(18, 18, '2025-01-18', 7),
(19, 19, '2025-01-19', 2),
(20, 20, '2025-01-20', 5);
