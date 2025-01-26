-- 1. Wyświetl wszystkie dane użytkowników.
Select * From users;
-- 2. Wyświetl tylko imiona i nazwiska użytkowników.
Select firstname, lastname From users;
-- 3. Wyświetl użytkowników, którzy mają więcej niż 30 lat.
Select * From users where age > 30;
-- 4. Wyświetl użytkowników, których imię zaczyna się na "J".
SELECT * FROM users WHERE firstname LIKE 'J%';
-- 5. Wyświetl użytkowników, których nazwisko kończy się na "son".
SELECT * FROM users WHERE lastname LIKE '%son';
-- 6. Znajdź użytkowników w wieku 28 lat.
Select * from users where age = 28;
-- 7. Znajdź użytkowników w wieku pomiędzy 25 a 35 lat.
Select * from users where age between 25 and 35;
-- 8. Wyświetl użytkowników, którzy mają mniej niż 25 lat lub więcej niż 35 lat.
Select * from users where age < 25 or age > 35;
-- 9. Wyświetl użytkowników, którzy mają dokładnie 22 lub 27 lat.
Select * from users where age = 22 or age = 27;
-- 10. Posortuj użytkowników według wieku rosnąco.
Select * from users order by age asc;
-- 11. Posortuj użytkowników według wieku malejąco.
Select * from users order by age desc;
-- 12. Posortuj użytkowników według nazwiska, a następnie według imienia.
Select * from users order by lastname;
Select * from users order by firstname;
-- 13. Policz wszystkich użytkowników w tabeli.
Select DISTINCT Count(*) as uzytkownicy from users;
-- 14. Policz, ilu użytkowników ma więcej niż 30 lat.
Select Count(*) from users where age > 30;
-- 15. Znajdź średni wiek użytkowników.
Select avg(age) from users;
-- 16. Znajdź maksymalny wiek użytkownika.
Select age from users order by age desc limit 1;
-- 17. Znajdź sumę wszystkich wieków użytkowników.
Select sum(age) from users;
-- 18. Znajdź liczbę użytkowników w każdej grupie wiekowej większej niż 30 lat.
SELECT age, COUNT(age) AS liczba
FROM users where age > 30
GROUP BY age
ORDER BY liczba DESC;
-- 19. Pogrupuj użytkowników według nazwiska i znajdź, ilu użytkowników ma takie samo nazwisko.
SELECT lastname, COUNT(lastname) AS liczba
FROM users
GROUP BY lastname
ORDER BY liczba DESC;































