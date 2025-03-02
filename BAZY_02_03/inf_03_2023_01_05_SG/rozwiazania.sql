-- Zadanie 1
SELECT dataZadania, wpis FROM zadania WHERE miesiac = 'sierpien'

-- Zadanie 2
SELECT miesiac, rok FROM zadania WHERE dataZadania ='2020-08-07';

-- Zadanie 3
SELECT miesiac, COUNT(wpis) FROM zadania WHERE wpis LIKE 'Weterynarz%' GROUP BY miesiac;

-- Zadanie 4
UPDATE zadania SET wpis = 'Wycieczka: Zalew Mietkowski' WHERE dataZadania = '2020-08-09';


