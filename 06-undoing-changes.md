# Narzędzia programisty

## Git

- `HEAD` oznacza najnowszy commit w bieżącej gałęzi (o gałęziach później)
- `^` dodane do `HEAD` oznacza \"o jeden wcześniej\". Możesz używać `^` kilkukrotnie (np. `git show HEAD^^^` poda zmiany zachodzące w przed-przed-przed-ostatnim commicie)

### Cofanie zmian

- `git reset HEAD file` - usuwa dodane do indexu zmiany zawarte w pliku file. Nie usuwa jednak zmian w pliku. Pamiętaj!
- `git show HEAD` - wypisuje zmiany zachodzące w najnowszym commicie
- `git show HEAD^` - wypisuje zmiany zachodzące we wcześniejszym commicie niż najnowszy
- `git checkout -- file` - usuwa zmiany w pliku file, jakie zaszły od ostatniego commita (inaczej - przywraca wersję pliku file taką, jak w najnowszym commicie, czyli usuwanie z niego lokalne
    zmiany)
- `git reset SHA` - usuwa wszystkie zmiany, które zaszły od commitu o numerze SHA (zmiany nadal występują lokalnie, więc zawartość plików się nie zmienia. Zmiany nie są jednak w indexie.)
- `git reflog` - wyświetla historię wykonywanych operacji

**Dobra rada**: Commity wykonuj często. Powinny one obejmować niewielkie zmiany (np. dodanie jakiejś pojedynczej funkcjonalności do kodu)

### Zadanie

Usuń plik b02-ps1.md. Uświadom sobie że to był ważny plik. Przywróć go używając gita.
