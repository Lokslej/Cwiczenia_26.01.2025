-- 1. Wyświetl wszystkich użytkowników wraz z ich zamówieniami.

Select uzytkownicy.imie, uzytkownicy.nazwisko, zamowienia.* 
from uzytkownicy
Left Join zamowienia On uzytkownicy.id = zamowienia.id;

-- 2. Wyświetl wszystkie zamówienia zawierające produkty.

Select zamowienia.*, produkty.nazwa, produkty.kategoria
from zamowienia
Join produkty On zamowienia.id = produkty.id;

-- 3. Wyświetl imię i nazwisko klientów, którzy zamówili produkty z kategorii 'Elektronika'.

Select uzytkownicy.imie, uzytkownicy.nazwisko, produkty.kategoria
from uzytkownicy
Join zamowienia On uzytkownicy.id = zamowienia.id
Join produkty On zamowienia.id = produkty.id
Where kategoria = 'elektronika';

-- 4. Uzyskaj nazwę produktu, datę zamowienia oraz ilość.

Select produkty.nazwa, zamowienia.data_zamowienia, zamowienia.ilosc
from produkty
Join zamowienia On produkty.id = zamowienia.id;

-- 5. Wyświetl pełną listę zamówień, uwzględniając tylko tych użytkowników, którzy dokonali zamówienia.

Select uzytkownicy.imie, uzytkownicy.nazwisko, zamowienia.* 
from uzytkownicy
Join zamowienia On uzytkownicy.id = zamowienia.id;

-- 6. Wyświetl zamówione produkty oraz ich cenę.

Select zamowienia.*, produkty.nazwa, produkty.cena
from produkty
Join zamowienia On produkty.id = zamowienia.id;

-- 7. Wyświetl imię, nazwisko oraz produkty, które zostały zamówione.

Select uzytkownicy.imie, uzytkownicy.nazwisko, produkty.nazwa
from uzytkownicy
Join zamowienia On uzytkownicy.id = zamowienia.id
Join produkty on zamowienia.id = produkty.id;

-- 8. Połącz tabelę Zamowienia i Uzytkownicy, aby wyświetlić użytkowników oraz daty ich zamówień.

Select uzytkownicy.imie, uzytkownicy.nazwisko, zamowienia.data_zamowienia
from uzytkownicy
Left Join zamowienia On uzytkownicy.id = zamowienia.id;

-- 9. Wyświetl użytkowników oraz produkty, które zamówili, posortowane po dacie zamówienia.

Select uzytkownicy.imie, uzytkownicy.nazwisko, zamowienia.data_zamowienia, produkty.nazwa
from uzytkownicy
Join zamowienia On uzytkownicy.id = zamowienia.id
Join produkty On zamowienia.id = produkty.id
Order by zamowienia.data_zamowienia asc;

-- 10. Połącz tabelę Produkty i Zamowienia, aby uzyskać listę produktów zamówionych w dniu 1 stycznia 2025.

Select produkty.*, zamowienia.data_zamowienia
from produkty
Join zamowienia On produkty.id = zamowienia.id
Where zamowienia.data_zamowienia = '2025-01-01';

-- 11. Połącz tabelę Uzytkownicy i Produkty, aby wyświetlić imiona i nazwiska użytkowników oraz produkty, które zamówili w kategorii 'Meble'.

Select uzytkownicy.imie, uzytkownicy.nazwisko, produkty.nazwa, produkty.kategoria
from uzytkownicy
Join zamowienia On uzytkownicy.id = zamowienia.id
Join produkty on zamowienia.id = produkty.id
Where kategoria = 'meble';

-- 12. Połącz tabelę Produkty i Zamowienia, aby uzyskać produkty, które zostały zamówione więcej niż 3 razy.

Select produkty.nazwa, zamowienia.ilosc
from produkty
Join zamowienia On produkty.id = zamowienia.id
Where ilosc > 3;

-- 13. Wyświetl imię, nazwisko użytkowników, którzy złożyli zamówienie w 2025 roku.

Select uzytkownicy.imie, uzytkownicy.nazwisko, zamowienia.data_zamowienia
From uzytkownicy
Join zamowienia On uzytkownicy.id = zamowienia.id
Where zamowienia.data_zamowienia Like '%2025%';

-- 14. Wyświetl nazwę produktu, datę zamówienia oraz ilość dla produktów z kategorii 'Dom'.

Select produkty.nazwa, zamowienia.data_zamowienia, zamowienia.ilosc
from produkty
Join zamowienia On produkty.id = zamowienia.id
Where produkty.kategoria = 'Dom';

-- 15.Wyświetl imię, nazwisko oraz nazwy produktów dla użytkowników, którzy mają więcej niż 30 lat.

Select uzytkownicy.imie, uzytkownicy.nazwisko, uzytkownicy.wiek, produkty.nazwa
from uzytkownicy
Join zamowienia On uzytkownicy.id = zamowienia.id
Join produkty on zamowienia.id = produkty.id
Where wiek > 30;

-- 16. Wyświetl nazwy produktów i ilość, których cena jest wyższa niż 1000 zł

Select produkty.nazwa, produkty.cena, zamowienia.ilosc
from produkty
Join zamowienia On produkty.id = zamowienia.id
Where produkty.cena > 1000;