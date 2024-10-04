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

# Основные концепции

- `{\color{CtpTeal} Изменение}`{=latex}: добавление или удаление строки
- `{\color{CtpTeal} Коммит}`{=latex}: набор изменений
- `{\color{CtpTeal} История}`{=latex}: последовательность коммитов
- `{\color{CtpTeal} Ветка}`{=latex}: ветка
- `{\color{CtpTeal} Репозиторий}`{=latex}: хранилище истории
  - `{\color{CtpTeal} Локальный}`{=latex} на рабочем компьютере 
  - `{\color{CtpTeal} Удаленный}`{=latex} на сервере
- `{\color{CtpTeal} Отправка}`{=latex} изменений на удаленный репозиторий
- `{\color{CtpTeal} Получение}`{=latex} изменений с удаленного репозитория

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

