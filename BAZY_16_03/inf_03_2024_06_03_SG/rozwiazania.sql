-- Zadanie 1
SELECT nazwa, rzeka, stanAlarmowy FROM wodowskazy;

-- Zadanie 2
SELECT wodowskazy.nazwa, wodowskazy.rzeka, wodowskazy.stanOstrzegawczy, wodowskazy.stanAlarmowy,pomiary.stanWody FROM wodowskazy 
JOIN pomiary 
ON wodowskazy.id = pomiary.wodowskazy_id 
WHERE pomiary.dataPomiaru='2022-05-05';

-- Zadanie 3
SELECT wodowskazy.nazwa, wodowskazy.rzeka, wodowskazy.stanOstrzegawczy, wodowskazy.stanAlarmowy,pomiary.stanWody FROM wodowskazy 
JOIN pomiary 
ON wodowskazy.id = pomiary.wodowskazy_id 
WHERE pomiary.dataPomiaru='2022-05-05' AND pomiary.stanWody > wodowskazy.stanOstrzegawczy;

-- Zadanie 4
SELECT dataPomiaru, AVG(stanWody) FROM pomiary GROUP BY dataPomiaru;
