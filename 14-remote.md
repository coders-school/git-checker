# Narzędzia programisty

## Git

### `remote`

- `git remote -v` - wyświetla źródło sklonowanego repozytorium
- `git remote add NAME ADDRESS` - zapisuje zdalne repozytorium o wskazanym adresie ADDRESS i przypisuje mu nazwę NAME
- `git remote set-url NAME ADDRESS` - ustawia url repozytorium NAME jako ADDRESS

Zapisanie dodatkowego repozytorium jest przydatne, kiedy pracujesz na kilku repozytoriach (np. różnych osób). Pozwala Ci to oszczędzić czasu i używać komendy `git push NAME`/`git pull NAME`, gdzie za
NAME, wstawiasz przypisaną nazwę repozytorium, zamiast za każdym razem kopiować url repozytorium.
