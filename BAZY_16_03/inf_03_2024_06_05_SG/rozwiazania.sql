-- Zadanie 1

SELECT nazwa FROM marki;

-- Zadanie 2

SELECT model, rocznik, przebieg, paliwo, cena, zdjecie FROM samochody WHERE id=10;

-- Zadanie 3
SELECT marki.nazwa, samochody.model, samochody.rocznik, samochody.cena, samochody.zdjecie FROM samochody 
JOIN marki ON samochody.marki_id = marki.id 
WHERE samochody.wyrozniony=1 LIMIT 4;

-- Zadanie 4
SELECT samochody.model, samochody.cena, samochody.zdjecie FROM samochody 
JOIN marki ON samochody.marki_id = marki.id 
WHERE marki.nazwa = 'Audi';
