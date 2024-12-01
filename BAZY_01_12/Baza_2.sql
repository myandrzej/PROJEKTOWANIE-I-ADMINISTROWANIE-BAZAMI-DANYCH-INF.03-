-- Tworzenie bazy danych
CREATE DATABASE IF NOT EXISTS baza_druga;

-- Użycie bazy danych
USE baza_druga;

-- Tworzenie tabeli `pytania`
CREATE TABLE IF NOT EXISTS pytania (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tresc TEXT NOT NULL,
    odpa VARCHAR(255) NOT NULL,
    odpb VARCHAR(255) NOT NULL,
    odpc VARCHAR(255) NOT NULL,
    odpd VARCHAR(255) NOT NULL,
    answer CHAR(1) NOT NULL,
    kategoria VARCHAR(255) NOT NULL,
    rok INT NOT NULL
);

-- Wstawianie danych
INSERT INTO `pytania` (`id`, `tresc`, `odpa`, `odpb`, `odpc`, `odpd`, `answer`, `kategoria`, `rok`) 
VALUES
(1, 'Wypisanie na ekranie zawartosci zmiennej char s = "To jest tylko test" zostanie wykonane w jezyku C++ za pomoca instrukcji', 'cin<<s', 'cout>>s', 'cout<<s', 'cin>>s', 'c', 'programowanie', 2012),
(2, 'Destruktor w jezyku C++ to metoda', 'wywolywana w momencie usuwania obiektu', 'wywolywana w momencie tworzenia obiektu', 'zwalniajaca pamiec przydzielona dynamicznie w obiekcie', 'porzadkujaca pamiec operacyjna po usunietych obiektach', 'a', 'programowanie', 2009),
(3, 'Dziedziczenie w programowaniu obiektowym pozwala na', 'laczenie obiektow', 'kopiowanie cech jednego obiektu do innego', 'usuniecie z istniejacej klasy zbednych elementow.', 'tworzenie nowej klasy na podstawie jednej lub kilku juz istniejacych klas', 'd', 'programowanie', 2008),
(4, 'Zlacze AGP sluzy do podlaczenia', 'szybkich pamieci dyskowych', 'urzadzen wejscia/wyjscia', 'kart graficznych', 'modemu', 'c', 'urzadzenia techniki komp.', 2007),
(5, 'Do ktorego wyprowadzenia nalezy podlaczyc glosniki aktywne w karcie dzwiekowej, ktorej schemat funkcjonalny przedstawia rysunek?', 'Mic in', 'Line in', 'Line out', 'Speaker out', 'c', 'urzadzenia techniki komp.', 2006),
(6, 'Ktory blok karty dzwiekowej sluzy do cyfrowego przetwarzania sygnalow?', 'Przetwornik A/D', 'Procesor DSP', 'Syntezator', 'Mikser', 'b', 'urzadzenia techniki komp.', 2011),
(7, 'Warunkiem niezbednym przy archiwizacji danych jest', 'kompresja danych', 'kopiowanie danych', 'kompresja i kopiowanie danych', 'kompresja i kopiowanie danych z jednoczesnym ich szyfrowaniem', 'b', 'systemy operacyjne i sieci', 2006),
(8, 'Ktora warstwa modelu ISO/OSI jest zwiazana z protokolem IP?', 'Sieciowa', 'Fizyczna', 'Transportowa', 'Lacza danych', 'a', 'systemy operacyjne i sieci', 2010),
(9, 'Ile komorek pamieci mozna zaadresowac bezposrednio w 64 bitowym procesorze, ktory ma 32 bitowa szyna adresowa?', '2 do potegi 32', '2 do potegi 64', '32 do potegi 2', '64 do potegi 2', 'a', 'urzadzenia techniki komp.', 2006),
(10, 'Co oznacza zwrot "wykonanie backupu systemu"?', 'Zamkniecie systemu', 'Ponowne uruchomienie systemu', 'Wykonanie aktualizacji systemu', 'Wykonanie kopii zapasowej systemu', 'd', 'systemy operacyjne i sieci', 2012),
(11, 'Klaster komputerowy to', 'komputer z macierza dyskowa', 'komputer z wieloma procesorami', 'grupa komputerow pracujacych wspolbieznie tak, jakby byl to jeden komputer', 'komputer zapasowy, na ktorym co pewien czas wykonywana jest kopia systemu glownego', 'c', 'urzadzenia techniki komp.', 2007),
(12, 'Jaka ilosc rzeczywistych danych mozna przeslac w czasie 1 s przez lacze synchroniczne o przepustowosci 512 kbps, bez sprzetowej i programowej kompresji?', 'Okolo 5 kB', 'Okolo 55 kB', 'Ponad 64 kB', 'Ponad 500 kB', 'b', 'systemy operacyjne i sieci', 2012),
(13, 'Jakiej liczbie kolorow odpowiada kolor zakodowany na 16 bitach?', '16 kolorom', 'okolo 64 tysiacom kolorow', 'okolo 65 tysiacom kolorow', 'okolo 16 milionom kolorow', 'c', 'multimedia i grafika', 2008),
(14, 'Pamiec oznaczona symbolem PC3200 nie moze wspolpracowac z magistrala', '300 MHz', '333 MHz', '400 MHz', '533 MHz', 'd', 'urzadzenia techniki komp.', 2006),
(15, 'Co oznacza jednostka dpi podawana w parametrach katalogowych skanerow i drukarek?', 'Punkty na cal', 'Gestosc optyczna', 'Punkty na milimetr', 'Punkty na centymetr', 'a', 'urzadzenia techniki komp.', 2009);
