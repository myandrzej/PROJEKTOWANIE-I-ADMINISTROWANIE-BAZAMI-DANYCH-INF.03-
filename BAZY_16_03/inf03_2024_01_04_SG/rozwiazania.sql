-- Zadanie 1

SELECT DISTINCT wpis FROM zadania WHERE dataZadania BETWEEN '2020-07-01' AND '2020-07-07' AND wpis != '';

SELECT DISTINCT wpis FROM zadania WHERE dataZadania BETWEEN '2020-07-01' AND '2020-07-07' AND wpis IS NOT NULL;

-- Zadanie 2

SELECT dataZadania, wpis FROM zadania WHERE MONTH(dataZadania) = 7;

-- Zadanie 3

SELECT dataZadania, wpis FROM zadania WHERE MONTH(dataZadania) = 7;

-- Zadanie 4
SELECT miesiac, wpis FROM zadania WHERE wpis LIKE 'S%';

-- Zadanie 5
