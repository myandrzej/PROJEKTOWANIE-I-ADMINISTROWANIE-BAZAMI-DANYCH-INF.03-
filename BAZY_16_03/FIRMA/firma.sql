-- Tworzenie tabeli Pracownicy
CREATE TABLE Pracownicy (
    id_pracownika INT AUTO_INCREMENT PRIMARY KEY,
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    stanowisko VARCHAR(100) NOT NULL,
    id_dzialu INT NOT NULL,
    data_zatrudnienia DATE NOT NULL,
    pensja DECIMAL(10, 2) NOT NULL
);

-- Wstawianie danych do tabeli Pracownicy
INSERT INTO Pracownicy (imie, nazwisko, stanowisko, id_dzialu, data_zatrudnienia, pensja) VALUES
('Jan', 'Kowalski', 'Programista', 1, '2022-01-10', 10000.00),
('Anna', 'Nowak', 'Specjalista ds. Marketingu', 2, '2021-05-15', 8000.00),
('Piotr', 'Zieliński', 'Handlowiec', 3, '2020-03-20', 7500.00),
('Maria', 'Wiśniewska', 'Administrator IT', 1, '2021-10-05', 9500.00),
('Tomasz', 'Krawczyk', 'HR Manager', 4, '2020-12-12', 8500.00),
('Karolina', 'Mazur', 'Księgowa', 5, '2021-02-15', 7800.00),
('Michał', 'Nowak', 'Analityk IT', 1, '2022-03-01', 9800.00),
('Agnieszka', 'Jankowska', 'Specjalista ds. Sprzedaży', 3, '2021-06-18', 7100.00),
('Łukasz', 'Lewandowski', 'Grafik', 2, '2021-09-11', 6000.00),
('Monika', 'Kamińska', 'HR Partner', 4, '2023-01-10', 7200.00);

-- Tworzenie tabeli Dzialy
CREATE TABLE Dzialy (
    id_dzialu INT AUTO_INCREMENT PRIMARY KEY,
    nazwa_dzialu VARCHAR(100) NOT NULL
);

-- Wstawianie danych do tabeli Dzialy
INSERT INTO Dzialy (nazwa_dzialu) VALUES
('IT'),
('Marketing'),
('Sprzedaż'),
('HR'),
('Księgowość');

-- Tworzenie tabeli Projekty
CREATE TABLE Projekty (
    id_projektu INT AUTO_INCREMENT PRIMARY KEY,
    nazwa_projektu VARCHAR(100) NOT NULL,
    id_pracownika INT NOT NULL,
    data_rozpoczecia DATE NOT NULL,
    data_zakonczania DATE,
    FOREIGN KEY (id_pracownika) REFERENCES Pracownicy(id_pracownika)
);

-- Wstawianie danych do tabeli Projekty
INSERT INTO Projekty (nazwa_projektu, id_pracownika, data_rozpoczecia, data_zakonczania) VALUES
('Projekt A', 1, '2022-01-15', '2022-12-15'),
('Projekt B', 2, '2021-06-01', '2021-12-01'),
('Projekt C', 3, '2020-02-20', '2020-11-20'),
('Projekt D', 4, '2021-03-25', '2022-03-25'),
('Projekt E', 5, '2022-04-05', '2023-04-05');
