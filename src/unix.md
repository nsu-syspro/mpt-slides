---
title: Основы работы с Unix
subtitle: Инструментарий Современного Программиста
---

# История Unix

\centering
![](images/unix/Unix_timeline.pdf){width=60%}

::: notes

<!-- TODO: move to wiki or something -->

Оригинальная операционная система Unix была разработана в 1970 году
Кеном Томпсоном и Деннисом Ритчи в
исследовательском центре Bell Labs компании AT&T.
Как и все операционные системы того времени, она была написана
на ассемблере, но в 1973 году была переписана на высокоуровневом
языке Си, разработанном в Bell Labs специально для этой цели.

### System V & BSD

Однако, не смотря на высокий потенциал новой операционной системы, AT&T не
имела права распространять Unix как полноценный коммерческий продукт по решению
правительства США от 1956 года. В результате компания начала лицензировать свою
технологию другим компаниям и высшим учебным заведениям. Одним из первых вузов,
получивших исходный код Unix, стал университет Беркли.

В процессе развития и распространения операционной системы в 1980-х годах,
появилось две конкурирующих реализации Unix:

- BSD (1978) --- Unix-подобная система, разработанная в университете Беркли,
  которая впоследствии станет основой таких операционных систем, как
  - FreeBSD (FreeBSD Foundation)
  - macOS/iOS (Apple)
- System V (1983) --- коммерческая реализация Unix, разработанная в AT&T,
  на которой базируются операционные системы
  - HP-UX (Hewlett Packard)
  - AIX (IBM)
  - Solaris (Sun/Oracle)

Многие основополагающие решения и интерфейсы современных операционных систем
(например, протокол TCP/IP и применение виртуальной памяти)
сначала появились в BSD, но со временем были реализованы и в System V.
Впоследствии этой конкуренции был разработан набор стандартов POSIX,
позволяющий унифицировать интерфейс Unix-подобных операционных систем.

### GNU/Linux

Начиная с 1983 года по инициативе Ричарда Столлмана начал развиваться
проект GNU (рекурсивно определяется как "GNU's Not Unix"), ставивший
своей целью разработать *свободную* от проприетарного кода операционную систему,
которую можно использовать как основу для разработки *свободного* программного обеспечения.

К 1990 году проект GNU включал в себя все необходимые компоненты для разработки на языке Си:
текстовый редактор Emacs, компилятор gcc, отладчик gdb, командную оболочку bash и
библиотеку стандартных функций libc. При этом все инструменты были совместимы с любой Unix-подобной
операционной системой за счет поддержки стандарта POSIX. Единственное, чего не хватало в проекте,
это ядра операционной системы.

В 1991 году Линус Торвальдс, будучи еще студентом в университете Хельсинки, увлекся разработкой
полноценной Unix-подобной операционной системы для своего персонального компьютера. За основу была
взята учебная операционная система Minix из учебника Эндрю Таненбаума, на которой демонстрировалась
архитектура и возможности Unix. Пользуясь уже зарекомендовавшими себя инструментами из проекта GNU,
Линус разработал ядро операционной системы, получившее название Linux, и опубликовал исходный код
под свободной лицензией GNU GPL. Это сыграло ключевую роль в дальнейшем развитии и распространении
GNU/Linux как полноценной операционной системы.

:::

# Философия Unix

. . .

Следует писать программы, которые

. . .

:::: incremental

- делают что-то одно и делают это хорошо
- взаимодействуют с другими программами
- поддерживают стандартный ввод/вывод

::::

# Работа с командной строкой

. . .

::::: columns

:::: column

- Терминал (*terminal emulator*)
  - GNOME Terminal
  - xterm
  - alacritty
  - kitty
  - PuTTY

. . .

- Командная оболочка (*command-line interface*, *cli* или *shell*)
  - bash (Bourne-Again SHell)
  - sh (Bourne shell)
  - zsh (Z shell)
  - fish (friendly interactive shell)

. . .

- Интерпретатор команд

. . .

- Read-Eval-Print Loop (REPL)

::::
:::: column

## \centering Read-Eval-Print Loop

```{=latex}
\vspace{1em}
\centering
\begin{tikzpicture}[->,every edge/.append style={bend right=-45}]
  \node (read)  at ( 90:2)   {Read};
  \node (eval)  at ( 330:2)  {Eval};
  \node (print) at ( 210:2)  {Print};
  \graph [use existing nodes] {
    read -> [bend right] eval -> print -> read
  };
\end{tikzpicture}
```

::::

:::::

# Команды {.fragile}

:::::: columns

::::: column

```{=latex}
\begin{onlyenv}<2-3>
```

:::: block

## Аргументы

```{.bash columns=fixed}
$ echo Hello World!
Hello World!
$ echo Hello    World!
Hello World!
$ echo "Hello    World!"
Hello    World!
$ echo 'Good   day!'
Good   day!
$ echo See\ \ \ you\ \ later
See   you  later
```

::::

```{=latex}
\end{onlyenv}
\begin{onlyenv}<4->
```

:::: block

## Вывод команд

```bash
$ echo "Today: date"
Today: date
$ echo "Today: $date"
Today: 
$ echo "Today: $(date)"
Today: Wed Aug 14 05:42:35 UTC 2024
```

::::

```{=latex}
\end{onlyenv}
```

:::::
::::: column

```{=latex}
\begin{uncoverenv}<3->
```

:::: block

## Подстановка

```{.bash columns=fixed}
$ echo "$PATH"
/usr/local/bin:/usr/bin:/bin
$ echo '$PATH'
$PATH
$ echo $PATH
/usr/local/bin:/usr/bin:/bin
$ export TEST="a  b  c"
$ echo $TEST
a b c
$ echo "$TEST"
a  b  c
```

::::

```{=latex}
\end{uncoverenv}
```

:::::

::::::

# Стандартный ввод/вывод

```{=latex}
\Begin{onlyenv}<1>
```

:::::: columns

::::: column

## Redirect stdout

```bash
$ echo "Foo bar" > foo.txt
$ cat foo.txt
Foo bar
```

## Redirect stdout with append

```bash
$ echo "Baz" >> foo.txt
$ cat foo.txt
Foo bar
Baz
```

:::::
\hfill
\vline
\hfill
::::: column

## Redirect stdin

```bash
$ cat < foo.txt
Foo bar
Baz
```

## Redirect both stdin and stdout

```bash
$ cat < foo.txt > bar.txt
$ cat bar.txt
Foo bar
Baz
```

:::::

::::::

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<2>
```

:::::: columns

::::: column

## Redirect stderr

```bash
$ date foo
date: invalid date 'foo'
$ date foo >out.txt
date: invalid date 'foo'
$ cat out.txt
$ date foo 2>err.txt
$ cat err.txt
date: invalid date 'foo'
```

:::::
\hfill
\vline
\hfill
::::: column

## Redirect stderr to stdout

```bash
$ date foo >out.txt 2>&1
$ cat out.txt
date: invalid date 'foo'
```

## Redirect both stdout and stderr

```bash
$ date foo >out.txt 2>err.txt
$ cat out.txt
$ cat err.txt
date: invalid date 'foo'
```

:::::

::::::

```{=latex}
\End{onlyenv}
```

# Конвейер (Pipeline)

:::::: columns

::::: column

```bash
$ echo "$PATH" | sed 's/:/\n/g'
/usr/local/bin:/usr/bin:/bin
$ echo "$PATH" | sed 's/:/\n/g'
/usr/local/bin
/usr/bin
/bin
$ echo "$PATH" | sed 's/:/\n/g' | sort
/bin
/usr/bin
/usr/local/bin
```

:::::
\hfill
\vline
\hfill
::::: column

\centering
<!-- TODO: use TikZ -->
![](images/unix/Pipeline.pdf){width=80%}

:::::

::::::

# Композиция программ

:::::: columns

::::: column

## Код возврата (Exit code)

```bash
$ date
Sat Sep  7 02:37:24 UTC 2024
$ echo $?
0
$ date foo
date: invalid date 'foo'
$ echo $?
1
```

## Безусловное исполнение

```bash
$ date foo; echo $?
date: invalid date 'foo'
1
```

:::::
\hfill
\vline
\hfill
::::: column

## Условное исполнение

```bash
$ echo "Hello" && date foo
Hello
date: invalid date 'foo'
$ echo $?
1
$ date foo && echo "Hello"
date: invalid date 'foo'
$ echo $?
1
$ date foo || echo "Hello"
date: invalid date 'foo'
$ echo $?
1
```

:::::

::::::

<!--
- `date`, `echo`, `bc`
- `$PATH`, `pwd`, `ls`, `cd`, `mkdir`, `tree`
- `find`, `sort`, `uniq`
-->

# Файловая система

:::::: columns

::::: column

## Зарезервированные директории

- `/` --- корневая директория
- `~` --- домашняя директория пользователя
- `.` --- текущая директория
- `..` --- родительская директория

## Права доступа

- `d`/`.`/`l` --- вид файла (директория,
  обычный файл, символическая ссылка)
- `r` --- (*R*ead) доступ на чтение
- `w` --- (*W*rite) доступ на запись
- `x` --- (e*X*ecute) доступ на исполнение

:::::
\hfill
\vline
\hfill
::::: column

## Команды

- `pwd`
- `ls`
- `cd`
- `mkdir`
- `cp`
- `mv`
- `rm`
- `find`

:::::

::::::

# Горячие клавиши

\centering

[![](images/unix/moving_cli.png){width=80%}](https://gist.github.com/tuxfight3r/60051ac67c5f0445efee)

# {.plain}

\centering
```{=latex}
{\fontsize{48pt}{7.2}\selectfont Q\&A }
```

