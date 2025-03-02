-- Zadanie 1
SELECT cena, pojemnosc FROM farby WHERE kolor = 'czerwony';

-- Zadanie 2
SELECT kolor, cena/pojemnosc AS 'cena jednostkowa' FROM farby;

-- Zadanie 3
SELECT farby.kolor, malowanie.liczba_puszek FROM farby JOIN malowanie ON malowanie.id_farby = farby.id_farby WHERE malowanie.id_pomieszczenia = 3; 

-- Zadanie 4
CREATE VIEW pomieszczenie1 AS SELECT id_sciany, id_farby, liczba_puszek FROM malowanie WHERE id_pomieszczenia = 1;
