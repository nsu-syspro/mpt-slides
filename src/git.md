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

# Основные концепции

- `{\color{CtpTeal} Изменение}`{=latex}: добавление или удаление строки
- `{\color{CtpTeal} Коммит}`{=latex}: набор изменений
- `{\color{CtpTeal} История}`{=latex}: последовательность коммитов
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

