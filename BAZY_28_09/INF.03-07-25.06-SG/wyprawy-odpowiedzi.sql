-- Zapytanie 1: wybierające jedynie nazwy wszystkich miejscowości posortowane rosnąco
SELECT nazwa FROM miejsca ORDER BY nazwa ASC;

-- Zapytanie 2: wybierające jedynie cenę wycieczki do Malborka
SELECT cena FROM miejsca WHERE nazwa = 'Malbork';

-- Zapytanie 3: wybierające jedynie nazwę, cenę i link obrazu z tabeli miejsca dla wierszy,
w których link obrazu rozpoczyna się od 0 (zero)
-- Zapytanie 4: wybierające jedynie nazwy wszystkich miejsc i odpowiadające im obliczone
średnie liczby osób dorosłych, zgrupowane według nazw miejsc. Średnia liczba osób jest
zaokrąglona do liczby całkowitej. Należy posłużyć się relacją
-- Zapytanie 5: tworzące tabelę klienci z kolumnami:
− id_klienta jako liczba całkowita dodatnia, klucz podstawowy, autoinkrementowany, nie może
przyjmować wartości NULL
− imie typu tekstowego o długości do 20 znaków
− nazwisko typu tekstowego o długości do 40 znaków
− data_ur typu data

