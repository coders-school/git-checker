# Narzędzia programisty

## Git

### Praca zdalna

- `git pull` - służy do pobrania zmian z repozytorium zdalnego. Może spowodować konflkty jeśli ktoś dokonywał zmian na plikach, które były również modyfikowane przez Ciebie
  - jeśli nie będzie żadnych zmian do pobrania, git poinformuje Cię stosownym komunikatem `Already up to date`
  - jeśli na zdalnym repozytorium będą zmiany, a mimo to nie pobierzesz ich i spróbujesz udostępnić swoje zmiany, git uniemożliwi Ci wykonanie takiej operacji
- `git push` - wprowadza zmiany do zdalnego repozytorium, z którego pobrane zostały pliki
- `git push REPO` - wprowadzi zmiany do zdalnego repozytorium znajdującego się pod adresem REPO
- `git push REMOTE BRANCH` - wysyła na wskazany REMOTE gałąź BRANCH
- `git fetch` - jest podobny do `git pull` jednak jedynie pobiera zmiany z repozytorium bez merge\'owania ich z plikami lokalnymi.
- `git remote -v` - pozwoli Ci sprawdzić, z jakiego adresu pochodzi repozytorium, dzięki czemu możesz upewnić się, czy jest to repozytorium, na które chcesz wprowadzić zmiany

`git pull` = `git fetch` + `git merge`
