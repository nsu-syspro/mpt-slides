---
title: Создание скриптов
subtitle: Инструментарий Современного Программиста
---

# Написание скриптов {.fragile .t}

:::::: columns
:::: column

::: block

## Скрипты

- Последовательность команд в файле
- Расширение файла может быть любое
  - Для shell-скриптов обычно `.sh`
- Можно сделать файл *исполняемым*
  с помощью `chmod +x`
- Можно писать на любом интерпретируемом языке

:::

```{=latex}
\Begin{uncoverenv}<2>
```

::: block

## shebang

- `#!/usr/bin/env bash`
- `#!/usr/bin/env python3`
- `#!/usr/bin/env perl`
- ...

:::

```{=latex}
\End{uncoverenv}
```

::::
:::: column

```{=latex}
\Begin{onlyenv}<1>
```

::: block

## Исполняемый скрипт на bash

```bash
$ cat >hello.sh <<EOF
echo "Hello World!"
EOF
$ ls -l hello.sh | sed 's/ .* / /'
-rw-r--r-- hello.sh
$ ./hello.sh
bash: ./hello.sh: Permission denied
$ chmod +x hello.sh
$ ls -l hello.sh | sed 's/ .* / /'
-rwxr-xr-x hello.sh
$ ./hello.sh
Hello World!
```

:::

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<2>
```

::: block

## Исполняемый скрипт на python

```bash
$ cat >hello.py <<EOF
#!/usr/bin/env python3
print("Hello World!")
EOF
$ chmod +x hello.py
$ ./hello.py
Hello World!
```

:::

```{=latex}
\End{onlyenv}
```

::::
::::::

# bash

:::::: columns
:::: column

## Синтаксис

- `\uncover<1->{Аргументы}`{=latex}
  - `\uncover<1->{`{=latex}
    `$1`, `$2`, ...
    `}`{=latex}
  - `\uncover<1->{`{=latex}
    `$@` --- все аргументы
    `}`{=latex}
- `\uncover<2->{Переменные окружения}`{=latex}
  - `\uncover<2->{`{=latex}
    Однострочные и многострочные
    `}`{=latex}
- `\uncover<3->{Условия}`{=latex}
  - `\uncover<3->{`{=latex}
    `test ...`{.bash} или `[ ... ]`{.bash} (см. `help test`{.bash})
    `}`{=latex}
  - `\uncover<3->{`{=latex}
    `if cond; then ...; else ...; fi`{.bash}
    `}`{=latex}
  - `\uncover<4->{`{=latex}
    `case x; in a) ...;; *) ...;; esac`{.bash}
    `}`{=latex}
- `\uncover<5->{Циклы}`{=latex}
  - `\uncover<5->{`{=latex}
    `for x in xs; do ...; done`{.bash}
    `}`{=latex}
  - `\uncover<6->{`{=latex}
    `while cond; do ...; done`{.bash}
    `}`{=latex}
- `\uncover<7->{Функции}`{=latex}
  - `\uncover<7->{`{=latex}
    `function_name () { ...; }`{.bash}
    `}`{=latex}

::::
:::: column

```{=latex}
\begin{minipage}[t][.5\textheight][t]{\linewidth}
```

::: block

## `script.sh`

```{=latex}
\vspace{-0.5em}
\lstset{style=default,basicstyle={\small\ttfamily}}
```

```{=latex}
\Begin{onlyenv}<1>
```

```bash
echo "$1$2$3"
echo "$@"
```

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<2>
```

```bash
foo="some text"
read -r -d '' bar <<EOF
Some multiline
text
EOF
echo "$foo $bar"
```

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<3>
```

```bash
if [ "$1" == "foo" ]; then
  echo "Pass foo"
elif [ "$1" == "bar" ]; then
  echo "Pass bar"
else
  echo "Fail"
fi
```

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<4>
```

```bash
case "$1" in
  foo | bar)
    echo "Pass $var"
    ;;
  *)
    echo "Fail"
    ;;
esac
```

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<5>
```

```bash
for arg in $@; do
  echo "$arg"
done
```

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<6>
```

```bash
i=$1
factorial=1
while [ $i -gt 0 ]; do
  factorial=$(( $factorial * $i ))
  i=$(( $i - 1 ))
done
echo "$factorial"
```

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<7>
```

```bash
hello () {
  echo "Hello $1!"
}

hello "World"
hello "Sys.Pro"
```

```{=latex}
\End{onlyenv}
```

:::

```{=latex}
\end{minipage}
```

```{=latex}
\begin{minipage}[t][.4\textheight][t]{\linewidth}
```

::: block

## Вывод

```{=latex}
\vspace{-0.5em}
\Begin{onlyenv}<1>
```

```bash
$ bash script.sh a b c
abc
a b c
```

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<2>
```

```bash
$ bash script.sh
some text Some multiline
text
```

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<3-4>
```

```bash
$ bash script.sh foo
Pass foo
$ bash script.sh bar
Pass bar
$ bash script.sh baz
Fail
```

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<5>
```

```bash
$ bash script.sh foo 'Hello World!'
foo
Hello World!
```

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<6>
```

```bash
$ bash script.sh 5
120
```

```{=latex}
\End{onlyenv}
```

```{=latex}
\Begin{onlyenv}<7>
```

```bash
$ bash script.sh
Hello World!
Hello Sys.Pro!
```

```{=latex}
\End{onlyenv}
```

:::

```{=latex}
\end{minipage}
```

::::
::::::

# Полезные ресурсы

:::::: columns
:::: column

## \centering Bash cheatsheet

```{=latex}
\vspace{1em}
\centering
\qrcode[height=3cm]{https://devhints.io/bash}
\vspace{1em}
```
<https://devhints.io/bash>

::::
:::: column

## \centering Bash Reference Manual

```{=latex}
\vspace{1em}
\centering
\qrcode[height=3cm]{https://www.gnu.org/software/bash/manual/bash.html}
\vspace{1em}
```
<https://www.gnu.org/software/bash/manual/bash.html>


::::
::::::


# {.plain}

\centering
```{=latex}
{\fontsize{48pt}{7.2}\selectfont Q\&A }
```

