# Narzędzia programisty

## Git

### Tworzenie gałęzi

Gałęzie pozwalają wprowadzać do kodu zmiany niezależnie od siebie. Najczęściej stosuje się je w celu rozwoju kilku różnych funkcjonalności równolegle.

- `git branch` - wyświetla wszystkie gałęzie lokalne
- `git branch -a` - wyświetla wszystkie gałęzie włącznie z tymi na zdalnych serwerach
- `git branch NAME` - tworzy branch o nazwie NAME
- `git checkout -b NAME` - tworzy branch o nazwie NAME i przełącza się na niego (połączenie `git branch NAME` + `git checkout NAME`)
- `git checkout name` - przełącza na branch o nazwie name

### Łączenie gałęzi

- `git merge NAME` - łączy gałąź NAME z gałęzią na której aktualnie pracujesz. Często podczas tej operacji pojawiają się konflikty.

Mała poprawka do mojej wypowiedzi: można łączyć też więcej gałęzi jednocześnie, ale nigdy tego nie rób. Rozwiązywanie konfliktów w takich przypadkach jest niesamowicie skomplikowane. Ja nigdy tego nie robiłem.

### Zadanie

Nie pomyl znaczenia poniższych komend:

- `git checkout NAME`
- `git checkout -b NAME`
- `git checkout -- FILE`

Pomimo niby tej samej instrukcji robią coś innego. Pamiętasz co? Zapisz to sobie w notatkach pod tą lekcją.
