---
title: Основы работы с текстом
subtitle: Инструментарий Современного Программиста
---

# Просмотр текста

:::::: columns

:::: column

<!-- TODO: move somewhere else
## Вывод в файл и в stdout

```bash
$ echo 'Foo bar' | tee out.txt
Foo bar
$ cat out.txt
Foo bar
```
-->

## Pagers

- `less` / `more`
- Перемещение: $\leftarrow\downarrow\uparrow\rightarrow$ или `hjkl`
- Поиск: `/foo`
- Выход: `q`

::::
:::: column

## Ограничение вывода

```bash
$ seq 1 100 > long.txt
$ cat long.txt | head -n5
1
2
3
4
5
$ cat long.txt | tail -n5
96
97
98
99
100
```

::::

::::::


# Регулярные выражения

```{=latex}
\Begin{onlyenv}<1>
```

:::::: columns

:::: column

## \centering Интерактивный туториал с практическими заданиями

```{=latex}
\begin{minipage}[c][.5\textheight][c]{\linewidth}
\centering
\qrcode[height=3cm]{https://regexone.com}
\vspace{1em}
```
<https://regexone.com>
```{=latex}
\end{minipage}
```

::::
:::: column

## \centering Верификация и описание выражений

```{=latex}
\vspace{1.5em}
\begin{minipage}[c][.5\textheight][c]{\linewidth}
\centering
\qrcode[height=3cm]{https://regex101.com}
\vspace{1em}
```
<https://regex101.com>
```{=latex}
\end{minipage}
```

::::

::::::

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<2>
```

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

\centering

<https://regexone.com>

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<3>
```

:::::: columns

::::: column

## grep

```bash
$ ls /bin | grep get
apt-<*\color{CtpPeach}get*>
<*\color{CtpPeach}get*>conf
<*\color{CtpPeach}get*>ent
<*\color{CtpPeach}get*>opt
py<*\color{CtpPeach}get*>text3
py<*\color{CtpPeach}get*>text3.10
w<*\color{CtpPeach}get*>
```

```bash
$ cat long.txt | grep '[23][45]'
<*\color{CtpPeach}24*>
<*\color{CtpPeach}25*>
<*\color{CtpPeach}34*>
<*\color{CtpPeach}35*>
```


:::::
::::: column

## sed

```bash
$ seq 10 12
10
11
12
$ seq 10 12 | sed 's/1/one /'
one 0
one 1
one 2
$ seq 10 12 | sed 's/1/one /g'
one 0
one one
one 2
```


:::::

::::::

```{=latex}
\End{onlyenv}
```

# Vim

`\lstset{style=default,basicstyle={\ttfamily\color{CtpPeach}}}`{=latex}

```{=latex}
\Begin{onlyenv}<1>
```

:::::: columns

:::: column

## Режимы

- `{\color{CtpTeal} Normal}`{=latex}: передвижение и редактирование
- `{\color{CtpTeal} Insert}`{=latex}: вставка текста
- `{\color{CtpTeal} Replace}`{=latex}: замена текста
- `{\color{CtpTeal} Visual}`{=latex}: выделение текста
- `{\color{CtpTeal} Command}`{=latex}: запуск команд

## \color{CtpTeal} Visual

- `v` выделение текста
- `V` выделение текста по линиям
- `Ctrl-v` выделение вертикального блока текста

::::
:::: column

## \color{CtpTeal} Normal

- `hjkl` перемещение
- `w`, `b`, `e` следующее слово (*word*),
  начало слова (*beginning*) и конец (*end*)
- `b` начало слова (*beginning of word*)
- `e` конец слова (*end of word*)
- `Ctrl-u` и `Ctrl-d` прокрутка страницы вверх и вниз
- `gg` и `G` перемещение в начало и конец файла
- `/regex` поиск регулярного выражения
  - `n` и `N` следующий и предыдущий результат поиска
- `u` и `Ctrl-r` *undo* и `*redo*
- `dw` удалить слово


::::

::::::

```{=latex}
\End{onlyenv}
```


```{=latex}
\Begin{onlyenv}<2>
```

:::::: columns

:::: column

## \color{CtpTeal} Insert

- `i` редактировать (перед текущим символом)
- `a` редактировать (после текущего символа)
- `cw` редактировать следующее слово начиная с курсора
- `ciw` редактировать объемлющее слово

## Копирование и вставка

- `y` копировать (*yank*)
- `p` вставить (*paste*)
- `"+y` копировать в буфер обмена

::::
:::: column

## \color{CtpTeal} Command

- `:q` выйти (*quit*)
- `:w` сохранить (*write*)
- `:wq` сохранить и выйти
- `:e foo.txt` открыть файл для редактирования
- `:help topic` открыть справку по интересующей теме
  - `:help :w` откроет справку по `:w`

## Поиск и замена

- `:s/regex/replacement/g` замена в строке или выделении
- `:%s/regex/replacement/g` замена во всем файле


::::

::::::

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<3>
```

:::: block

## Полезные материалы

- `vimtutor` --- официальный туториал, идет вместе с `vim`
- [Vim Adventures](https://vim-adventures.com) --- игра для обучения работе с Vim
- [Vim golf](https://www.vimgolf.com) --- аналог [Code golf](https://en.wikipedia.org/wiki/Code_golf) для Vim
- [Vim Tips Wiki](http://vim.wikia.com/wiki/Vim_Tips_Wiki)

::::

```{=latex}
\End{onlyenv}
```



# {.plain}

\centering
```{=latex}
{\fontsize{48pt}{7.2}\selectfont Q\&A }
```

