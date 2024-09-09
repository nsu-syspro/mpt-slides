---
title: Основы работы с текстом
subtitle: Инструментарий Современного Программиста
---

# Просмотр текста

- `tail`, `head`
- Pagers: `less`, `more`


# Регулярные выражения

```{=latex}
\Begin{onlyenv}<1>
```

- Интерактивный туториал с практическими заданиями: <http://regexone.com>
- Верификация и описание выражений: <http://regex101.com>

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<2>
```

\centering
Интерактивный туториал с практическими заданиями <http://regexone.com>

\vspace{-1em}

:::::: columns

::::: column

| Regex | Семантика |
|-------|-----------|
| `abc` | Letters   |
| `123` | Digits |
| `\d` | Any Digit |
| `\D` | Any Non-digit character |
| `.` | Any Character |
| `[abc]` | Only a, b, or c |
| `[^abc]` | Not a, b, nor c |
| `[a-z]` | Characters a to z |
| `[0-9]` | Numbers 0 to 9 |
| `\w` | Any Alphanumeric character |
| `\W` | Any Non-alphanumeric character |

:::::
::::: column

| Regex | Семантика |
|-------|-----------|
| `{m}` | m Repetitions |
| `{m,n}` | m to n Repetitions |
| `*` | Zero or more repetitions |
| `+` | One or more repetitions |
| `?` | Optional character |
| `\s` | Any Whitespace |
| `\S` | Any Non-whitespace character |
| `^` `$` | Starts and ends |
| `(` `)` | Capture Group |
| `(.*)` | Capture all |
| `(abc|def)` | Matches abc or def |


:::::

::::::

```{=latex}
\End{onlyenv}
```

# grep

# sed

# Vim

## Moions

# {.plain}

\centering
```{=latex}
{\fontsize{48pt}{7.2}\selectfont Q\&A }
```

