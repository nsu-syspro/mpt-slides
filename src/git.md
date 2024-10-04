---
title: Системы контроля версий
subtitle: Инструментарий Современного Программиста
---

# Мотивация

:::::: columns
:::: column

## Индивидуальная разработка

- Регулярные backup'ы
- История изменений
- Определение правок, на которых что-то сломалось
- Эксперименты в отдельных ветках
- Переносимость окружения разработки

::::
:::: column

## Командная разработка

- Несколько человек работают с одной кодовой базой
- Разрешение конфликтов
- Ревью изменений
- Выяснение кто, а главное *зачем*, внес какое-то изменение
- Формирование changelog'ов

::::
::::::

# Системы контроля версий

## Основные концепции

- `{\color{CtpTeal} Система контроля версий / Version control system (VCS)}`{=latex}
- `{\color{CtpTeal} Изменение / changeset / patch}`{=latex}: добавление или удаление строк
  - ```{style=diff}
    -echo "Hello World!"
    +echo "Hello Sys.Pro!"
    ```
- `{\color{CtpTeal} Коммит / версия / ревизия}`{=latex}: набор изменений
- `{\color{CtpTeal} Репозиторий}`{=latex}: база данных всех изменений
- `{\color{CtpTeal} История}`{=latex}: последовательность коммитов
- `{\color{CtpTeal} Ветка / branch}`{=latex}: история относящаяся к конкретной задаче / фиче
- `{\color{CtpTeal} Слияние}`{=latex}: объединение историй двух веток в одну
- `{\color{CtpTeal} Конфликт}`{=latex}: изменения в одной и той же строке при слиянии

# Системы контроля версий

<!-- TODO: rewrite using TikZ -->

:::::: columns
:::: column

## \centering Локальные

\vspace{1em}
\centering
![](images/git/local.png){width=50%}

## \centering Централизованные

\vspace{1em}
\centering
![](images/git/centralized.png){width=65%}

::::
:::: column

## \centering Распределенные

\vspace{1em}
\centering
![](images/git/distributed.png){width=70%}

::::
::::::

\centering\footnotesize
<https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control>

# Команды Git

- `git init`/`git clone`
- `git status`
- `git log`
- `git add`
- `git restore`
- `git commit`
- `git push`
- `git switch`/`git checkout`
- `git merge`
- `git cherry-pick`
- `git rebase`

# Полезные ресурсы

:::::: columns
:::: column

## \centering Pro Git

\centering

Основополагающая книга по работе c Git и его внутреннему устройству

```{=latex}
\vspace{1em}
\centering
\qrcode[height=3cm]{https://git-scm.com/book/en/v2}
\vspace{1em}
```
<https://git-scm.com/book/en/v2>

::::
:::: column

\centering
![](images/git/progit2.png){width=65%}

::::
::::::

# {.plain}

\centering
```{=latex}
{\fontsize{48pt}{7.2}\selectfont Q\&A }
```

