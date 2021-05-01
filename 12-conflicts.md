# Narzędzia programisty

## Git

- `git reset --hard SHA` - przywraca stan brancha do commitu o numerze SHA oraz wraz z wycofaniem lokalnych zmian

### Konflikty

Jeśli komenda `git status` wypisuje coś o unmerged paths, to oznacza, że masz konflikt.

```git
> # You have unmerged paths.
> #   (fix conflicts and run "git commit")
> #
> # Unmerged paths:
> #   (use "git add ..." to mark resolution)
> #
```

Konflikty mogą wystąpić w różnych sytuacjach, ale najczęściej uświadczysz go podczas próby łączenia gałęzi, jeśli w tym samym pliku zmodyfikujesz te same linie.

### Ręczne rozwiązywanie konfliktów

- Po otworzeniu pliku z konfliktem w edytorze zobaczysz w nim sekcje oznaczone specjalnymi znacznikami `<<<<<<<`, `=======`, `>>>>>>>`.
- Pomiędzy nimi znajdują się alternatywne wersje plików z obu źródeł (różne repozytoria, branche, commity).
- Ty, jako programista musisz zdecydować, które ze zmian wprowadzić i w jakiej kolejności.
- Pamiętaj, żeby USUNĄĆ wprowadzone przez git znaczniki, wskazujące gdzie pojawił się konflikt. W przeciwnym przypadku nie zostanie on uznany za rozwiązany.

```git
    If you have questions, please
    <<<<<<< HEAD
    open an issue
    =======
    ask your question on Discord.
    >>>>>>> branch-a
```

- `git merge --abort` - anuluje próbę połączenia dwóch gałęzi
- `git mergetool` - otwiera edytor tekstu wprowadzony w konfiguracji jako mergetool.
- Plik, w którym konflikt został rozwiązany MUSISZ ponownie dodać do indexu (`git add`), żeby móc go wcommitować
- Po rozwiązaniu konfliktów użyj `git commit`, by zakończyć merge'a.
