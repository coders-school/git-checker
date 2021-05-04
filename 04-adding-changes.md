# Narzędzia programisty

## Git

### Dodawanie zmian

- `git add filename` - dodaje plik fil-name do indexu (stage), skąd można go wcommitować
- `git add filename-1 filename-2 ... filename-n` - dodaje wszystkie wymienione pliki do indexu
- `git log` - pozwala wyświetlić listę commitów (wprowadzonych zmian)
- `git status` - poinformuje Cię o modyfikacjach, które masz w plikach oraz o następnych możliwych krokach. Używaj kiedy tylko możesz!
- `git commit` - tworzy commit (pamiętaj, że ta komenda otworzy edytor tekstu, w którym należy podać opis zmian)
- `git commit -m"sth"` - tworzy commit o treści sth (pomijając otwarcie edytora tekstu)

Uwaga na `git add .`
Jest to wygodna komenda, która dorzuci wszystko od bieżącego katalogu rekursywnie. Już widziałem zeznanie podatkowe jednego programisty wkomitowane do repozytorium. Modyfikacja historii repo nie jest prostą sprawą. Lepiej przyjąć zasadę, że to co wkommitujesz, to już tam zostanie, bo nie masz kontroli nad tym kto w którym momencie pobierze lub zaktualizuje repo.

### Zadanie

Zainteresuj się komendą `git add -p`. Dowiedz się co robi używając `git help`.
