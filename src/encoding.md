---
title: Локализация и интернационализация программного обеспечения
subtitle: Инструментарий Современного Программиста
---

# ASCII

## \centering American Standard Code for Information Interchange

```{=latex}
\begin{center}
\begin{tabular}{c}
\footnotesize
```

```{columns=fixed morekeywords=ascii}
$ ascii -d
    0 NUL    16 DLE    32      48 0    64 @    80 P    96 `   112 p
    1 SOH    17 DC1    33 !    49 1    65 A    81 Q    97 a   113 q
    2 STX    18 DC2    34 "    50 2    66 B    82 R    98 b   114 r
    3 ETX    19 DC3    35 #    51 3    67 C    83 S    99 c   115 s
    4 EOT    20 DC4    36 $    52 4    68 D    84 T   100 d   116 t
    5 ENQ    21 NAK    37 %    53 5    69 E    85 U   101 e   117 u
    6 ACK    22 SYN    38 &    54 6    70 F    86 V   102 f   118 v
    7 BEL    23 ETB    39 '    55 7    71 G    87 W   103 g   119 w
    8 BS     24 CAN    40 (    56 8    72 H    88 X   104 h   120 x
    9 HT     25 EM     41 )    57 9    73 I    89 Y   105 i   121 y
   10 LF     26 SUB    42 *    58 :    74 J    90 Z   106 j   122 z
   11 VT     27 ESC    43 +    59 ;    75 K    91 [   107 k   123 {
   12 FF     28 FS     44 ,    60 <    76 L    92 \   108 l   124 |
   13 CR     29 GS     45 -    61 =    77 M    93 ]   109 m   125 }
   14 SO     30 RS     46 .    62 >    78 N    94 ^   110 n   126 ~
   15 SI     31 US     47 /    63 ?    79 O    95 _   111 o   127 DEL
```

```{=latex}
\end{tabular}
\end{center}
```

# Расширения ASCII

::: columns
:::: {.column width=5%}

`\lstset{style=default,basicstyle={\ttfamily\color{CtpOverlay1}}}`{=latex}

## \phantom{A}

```{columns=fixed}
00:
10:
20:
30:
40:
50:
60:
70:
```

::::
:::: {.column width=21%}

## \centering \textcolor{CtpBlue}{ASCII}

```{columns=fixed}

 
<*\textvisiblespace*>!"#$%&'()*+,-./
0123456789:;<=>?
@ABCDEFGHIJKLMNO
PQRSTUVWXYZ[\]^_
`abcdefghijklmno
pqrstuvwxyz{|}~
```

. . .

::::
:::: {.column width=5%}

`\lstset{style=default,basicstyle={\ttfamily\color{CtpOverlay1}}}`{=latex}

## \phantom{A}

```{columns=fixed}
80:
90:
a0:
b0:
c0:
d0:
e0:
f0:
```

. . .

::::
:::: {.column width=23%}

## \centering \textcolor{CtpBlue}{CP866}

```{columns=fixed}
<*АБВГДЕЖЗИЙКЛМНОП*>
<*РСТУФХЦЧШЩЪЫЬЭЮЯ*>
<*абвгдежзийклмноп*>
<*░▒▓│┤╡╢╖╕╣║╗╝╜╛┐*>
<*└┴┬├─┼╞╟╚╔╩╦╠═╬╧*>
<*╨╤╥╙╘╒╓╫╪┘┌█▄▌▐▀*>
<*рстуфхцчшщъыьэюя*>
<*ЁёЄєЇїЎў°∙·√№¤■ *>
```

> \textcolor{CtpOverlay1}{MS-DOS}

. . .

::::
:::: {.column width=23%}

## \centering\textcolor{CtpBlue}{KOI8-R}

```{columns=fixed}
<*─│┌┐└┘├┤┬┴┼▀▄█▌▐*>
<*░▒▓⌠■∙√≈≤≥ ⌡°²·÷*>
<*═║╒ё╓╔╕╖╗╘╙╚╛╜╝╞*>
<*╟╠╡Ё╢╣╤╥╦╧╨╩╪╫╬©*>
<*юабцдефгхийклмно*>
<*пярстужвьызшэщчъ*>
<*ЮАБЦДЕФГХИЙКЛМНО*>
<*ПЯРСТУЖВЬЫЗШЭЩЧЪ*>
```

> \textcolor{CtpOverlay1}{Unix}

. . .

::::
:::: {.column width=23%}

## \centering \textcolor{CtpBlue}{CP1251}

```{columns=fixed}
<*ЂЃ‚ѓ„…†‡€‰Љ‹ЊЌЋЏ*>
<*ђ‘’“”•–— ™љ›њќћџ*>
<*ЎўЈ¤Ґ¦§Ё©Є«¬-®Ї*>
<*°±Ііґµ¶·ё№є»јЅѕї*>
<*АБВГДЕЖЗИЙКЛМНОП*>
<*РСТУФХЦЧШЩЪЫЬЭЮЯ*>
<*абвгдежзийклмноп*>
<*рстуфхцчшщъыьэюя*>
```

> \textcolor{CtpOverlay1}{Windows}

::::
:::

# Крокозябры

. . .

::: columns
:::: {.column width=30%}

:::::: block

## \centering оПХБЕР ЛХП!

. . .

\footnotesize

```{=latex}
\begin{uncoverenv}<+(1)->
```

```{.bash columns=fixed morekeywords=iconv}
$ echo "<*\textcolor{CtpGreen}{оПХБЕР ЛХП}*>!" \
   | iconv -t cp1251 \
   | iconv -f koi8-r
<*Ноуаеп куо!*>
```

```{=latex}
\end{uncoverenv}
\begin{uncoverenv}<+(1)->
```

```{.bash columns=fixed morekeywords=iconv}
$ echo "<*\textcolor{CtpGreen}{оПХБЕР ЛХП}*>!" \
   | iconv -t koi8-r \
   | iconv -f cp1251
<*Привет мир!*>
```

```{=latex}
\end{uncoverenv}
```

::::::

```{=latex}
\begin{uncoverenv}<+(1)->
```

:::::: block

## Инструменты

- [iconv](https://linux.die.net/man/1/iconv)
- [enca](https://linux.die.net/man/1/enca)
- [uchardet](https://www.freedesktop.org/wiki/Software/uchardet/)

::::::

```{=latex}
\end{uncoverenv}
```

::::

:::: {.column width=70%}

\vspace{0.5em}
\centering

[![](images/encoding/codepages.png)](https://habr.com/ru/articles/147843/)

::::
:::

# Unicode

::: columns
:::: {.column width=65%}

## Unicode Standard

- Универсальное кодирование символов
- Количество различных кодов 1 114 112
- [Unicode 16.0](https://www.unicode.org/versions/Unicode16.0.0/core-spec/) (2024 год)
  использует лишь 154 998

## Цели

- `\textcolor{CtpBlue}{`{=latex} Универсальность `}`{=latex}
  Содержит все возможные символы современных и древних языков,
  технических текстов, диакритику и emoji
  \vspace{0.5em}

- `\textcolor{CtpBlue}{`{=latex} Эффективность `}`{=latex}
  *Plain text* кодирование в одном из трех стандартных форматов:
  `\textcolor{CtpYellow}{`{=latex}UTF-32`}`{=latex},
  `\textcolor{CtpYellow}{`{=latex}UTF-16`}`{=latex},
  `\textcolor{CtpYellow}{`{=latex}UTF-8`}`{=latex}
  \vspace{0.5em}

- `\textcolor{CtpBlue}{`{=latex} Однозначность `}`{=latex}
  Каждый код *однозначно* соответствует единственному символу

::::
:::: {.column width=35%}

##

```{=latex}
\centering
\begin{minipage}[c][.7\textheight][c]{.7\linewidth}
\centering
```
![](images/encoding/Unicode_logo.pdf)
```{=latex}
\end{minipage}
```

::::
:::

# Unicode {.fragile .t}

::: columns
:::: {.column width=50%}

## \centering Code points

- Кодируют "абстрактные символы"
- Целые числа от 0 до 10FFFF\textsubscript{16}
- Стандартно записываются в hex с префиксом U+
- Имеют уникальные имена

. . .

## \centering Инструменты

```{=latex}
\lstset{style=default,basicstyle={\color{CtpPeach}\ttfamily}}
```
- `uniname` (часть пакета [uniutils](https://billposer.org/Software/unidesc.html))
- Модуль [unicodedata](https://docs.python.org/3/library/unicodedata.html) в Python

  \scriptsize
  ```{.python style=default columns=fixed}
  import sys, unicodedata as U

  for i, c in enumerate(sys.stdin.read()):
      s = '<*\textcolor{CtpGreen}{◌}*>' if U.category(c)[0] == 'M' else ''
      print('U+{0:04X}\t{1}{2}\t{3}'
            .format(ord(c), s, c, U.name(c)))
  ```

. . .

::::
:::: {.column width=50%}

```{=latex}
\lstset{
  style=default,
  basicstyle={\small\ttfamily},
  literate=
    {^1}{{\emoji{earth-americas}}}1
    {^2}{{◌̆}}1
    {^3}{{\emoji{man}}}1
    {^4}{{\emoji{woman}}}1
    {^5}{{\emoji{girl}}}1
}
```

```{=latex}
\begin{onlyenv}<+-+(2)>
```

:::::: block

## \centering Hello \emoji{earth-americas}!

```{=latex}
\begin{uncoverenv}<+(1)>
```

```{.bash columns=fixed morekeywords=uniname}
$ printf 'Hello \U1F30E!' | uniname
```
\vspace{-1em}

```{=latex}
\end{uncoverenv}
```

```{=latex}
\begin{uncoverenv}<+(-1)-+>
```

```{columns=fixed}
U+0048	H	LATIN CAPITAL LETTER H
U+0065	e	LATIN SMALL LETTER E
U+006C	l	LATIN SMALL LETTER L
U+006C	l	LATIN SMALL LETTER L
U+006F	o	LATIN SMALL LETTER O
U+0020	 	SPACE
U+1F30E	^1	 EARTH GLOBE AMERICAS
U+0021	!	EXCLAMATION MARK
```

```{=latex}
\end{uncoverenv}
```

::::::

```{=latex}
\end{onlyenv}
```

```{=latex}
\begin{onlyenv}<+-+(2)>
```

:::::: block

## \centering Привет \emoji{earth-americas}!

```{=latex}
\begin{uncoverenv}<+(1)>
```

```{.bash columns=fixed morekeywords=uniname}
$ printf '<*\textcolor{CtpGreen}{Привет}*> \U1F30E!' | uniname
```
\vspace{-1em}

```{=latex}
\end{uncoverenv}
```

```{=latex}
\begin{uncoverenv}<+(-1)-+>
```

```{columns=fixed}
U+041F	<*П*>	CYRILLIC CAPITAL LETTER PE
U+0440	<*р*>	CYRILLIC SMALL LETTER ER
U+0438	<*и*>	CYRILLIC SMALL LETTER I
U+0432	<*в*>	CYRILLIC SMALL LETTER VE
U+0435	<*е*>	CYRILLIC SMALL LETTER IE
U+0442	<*т*>	CYRILLIC SMALL LETTER TE
U+0020	 	SPACE
U+1F30E	^1	 EARTH GLOBE AMERICAS
U+0021	!	EXCLAMATION MARK
```

```{=latex}
\end{uncoverenv}
```

::::::

```{=latex}
\end{onlyenv}
```

```{=latex}
\begin{onlyenv}<+-+(2)>
```

:::::: block

## \centering Йо-йо

```{=latex}
\begin{uncoverenv}<+(1)>
```

```{.bash columns=fixed morekeywords=uniname}
$ printf '<*\textcolor{CtpGreen}{Йо-и}*>\u0306<*\textcolor{CtpGreen}{о}*>' | uniname
```
\vspace{-1em}

```{=latex}
\end{uncoverenv}
```

```{=latex}
\begin{uncoverenv}<+(-1)-+>
```

```{columns=fixed}
U+0439	<*Й*>	CYRILLIC CAPITAL LETTER SHORT I
U+043E	<*о*>	CYRILLIC SMALL LETTER O
U+002D	-	HYPHEN-MINUS
U+0438	<*и*>	CYRILLIC SMALL LETTER I
U+0306	^2	 COMBINING BREVE
U+043E	<*о*>	CYRILLIC SMALL LETTER O
```

```{=latex}
\end{uncoverenv}
```

::::::

```{=latex}
\end{onlyenv}
```

```{=latex}
\begin{onlyenv}<+-+(2)>
```

:::::: block

## \centering \emoji{family-man-woman-girl}

```{=latex}
\begin{uncoverenv}<+(1)>
```

```{.bash columns=fixed morekeywords=uniname}
$ printf '\U1F468\u200D\U1F469\u200D\U1F467' \
  | uniname
```
\vspace{-1em}

```{=latex}
\end{uncoverenv}
```

```{=latex}
\begin{uncoverenv}<+(-1)-+>
```

```{columns=fixed}
U+1F468	^3	 MAN
U+200D		ZERO WIDTH JOINER
U+1F469	^4	 WOMAN
U+200D		ZERO WIDTH JOINER
U+1F467	^5	 GIRL
```

```{=latex}
\end{uncoverenv}
```

::::::

```{=latex}
\end{onlyenv}
```

::::
:::

# Unicode

::: columns
:::: {.column width=50%}

```{=latex}
\begin{onlyenv}<1-8>
```

:::::: block

## \centering Ключевые моменты

. . .

- `\uncover<2-8>{`{=latex}Текст разбивается на символы `}`{=latex}
  - `\uncover<3-8>{\textcolor{CtpRed}{`{=latex}Символы $\ne$ глифы `}}`{=latex}
- `\uncover<4-8>{`{=latex}Символы кодируются последовательностью code point'ов `}`{=latex}
  - `\uncover<4-8>{\textcolor{CtpBlue}{`{=latex}Code point `}`{=latex}
    целое число от 0 до 10FFFF\textsubscript{16}
    соответствующее некоторому *абстрактному символу*
    `}`{=latex}
- `\uncover<5-8>{`{=latex}Символы могут комбинироваться `}`{=latex}
- `\uncover<7-8>{`{=latex}Правила поиска, сортировки, эквивалентности и других процессов
  описаны в стандарте`}`{=latex}
- `\uncover<8>{`{=latex}Три стандартных формата кодирования code point'ов:
  `\textcolor{CtpYellow}{`{=latex}UTF-32`}`{=latex},
  `\textcolor{CtpYellow}{`{=latex}UTF-16`}`{=latex},
  `\textcolor{CtpYellow}{`{=latex}UTF-8`}`{=latex}
  `}`{=latex}
  - `\uncover<8>{\textcolor{CtpBlue}{`{=latex}Code unit `}`{=latex}
    Минимальная единица кодирования в формате
    `}`{=latex}

::::::

```{=latex}
\end{onlyenv}
```

```{=latex}
\begin{onlyenv}<9->
```

:::::: block

## \centering UTF-32

> `\textcolor{CtpBlue}{`{=latex}Code unit `}`{=latex} 32-битное значение

::::::

```{=latex}
\begin{uncoverenv}<10->
```

:::::: block

## \centering UTF-16

> `\textcolor{CtpBlue}{`{=latex}Code unit `}`{=latex} 16-битное значение

```{=latex}
\centering
\begin{minipage}[c][.25\textheight][c]{\textwidth}
\begin{mdframed}[backgroundcolor=white,linecolor=white]
\centering
```
![](images/encoding/UTF-16-Table.png)
```{=latex}
\end{mdframed}
\end{minipage}
\vspace{-2em}
```


::::::


```{=latex}
\end{uncoverenv}
```

```{=latex}
\begin{uncoverenv}<11->
```

:::::: block

## \centering UTF-8

> `\textcolor{CtpBlue}{`{=latex}Code unit `}`{=latex} 8-битное значение

```{=latex}
\centering
\begin{minipage}[c][.3\textheight][c]{\textwidth}
\begin{mdframed}[backgroundcolor=white,linecolor=white]
\centering
```
![](images/encoding/UTF-8-Table.png)
```{=latex}
\end{mdframed}
\end{minipage}
```

::::::


```{=latex}
\end{uncoverenv}
```


```{=latex}
\end{onlyenv}
```

::::
:::: {.column width=50%}

```{=latex}
\centering
\vspace{-1em}
\begin{minipage}[c][\textheight][c]{\textwidth}
\begin{mdframed}[backgroundcolor=white,linecolor=white]
\centering
```

```{=latex}
\begin{onlyenv}<2>
```
![](images/encoding/Unicode-TextSymbol.pdf)
```{=latex}
\end{onlyenv}
```

```{=latex}
\begin{onlyenv}<3>
```
![](images/encoding/Unicode-CharGlyph.pdf)
```{=latex}
\end{onlyenv}
```

```{=latex}
\begin{onlyenv}<4>
```
![](images/encoding/Unicode-CodePoints.pdf)
```{=latex}
\end{onlyenv}
```

```{=latex}
\begin{onlyenv}<5>
```
![](images/encoding/Unicode-MultipleCombiningCharacters.pdf)
```{=latex}
\end{onlyenv}
```

```{=latex}
\begin{onlyenv}<6>
```
![](images/encoding/Unicode-EnclosingSym.pdf)
```{=latex}
\end{onlyenv}
```

```{=latex}
\begin{onlyenv}<7>
```
![](images/encoding/Unicode-EquivalentSequences.pdf)
```{=latex}
\end{onlyenv}
```

```{=latex}
\begin{onlyenv}<8-11>
```
![](images/encoding/Unicode-EncodingForms.pdf)
```{=latex}
\end{onlyenv}
```

```{=latex}
\begin{onlyenv}<12->
```
![](images/encoding/Unicode-EncodingSchemes.pdf)
```{=latex}
\end{onlyenv}
```

```{=latex}
\end{mdframed}
\end{minipage}
```

::::
:::

# Локали

. . .

::: columns
:::: {.column width=45%}

## \centering Переменные окружения

`\lstset{style=default,basicstyle={\ttfamily\color{CtpBlue}}}`{=latex}

- `LANG` Локаль по умолчанию
- `LC_COLLATE` Поиск и сравнение строк
- `LC_CTYPE` Диапазоны символов (алфавит, числа, верхний/нижний регистры)
- `LC_TIME` Формат даты и времени
- `LC_NUMERIC` Формат чисел
- `LC_MESSAGES` Язык сообщений системы и утилит
- `LC_ADDRESS` Формат адреса и локации
- \dots
- `LC_ALL` Переопределяет все вышеперечисленные переменные

. . .

::::
:::: {.column width=55%}

## \centering Unix locale

`\lstset{style=default,basicstyle={\ttfamily\color{CtpLavender}}}`{=latex}

> `language[_territory][.codeset][@modifier]`

`\lstset{style=default,basicstyle={\ttfamily\color{CtpBlue}}}`{=latex}

- `en_US` --- американский английский
- `ru_RU.UTF-8` --- русский (Россия)
- `fr_CA.ISO8859-1` --- канадский французский
- \dots

::::
:::

# Примеры

. . .

::: columns
:::: {.column width=50%}

```{.bash columns=fixed}
$ export LANG=ru_RU.UTF-8
$ echo "windows" | \
  awk '{print toupper($0)}'
WINDOWS
$ export LANG=tr_TR.UTF-8
$ echo "windows" | \
  awk '{print toupper($0)}'
W<*İ*>NDOWS
```

. . .

::::
:::: {.column width=50%}

```{.bash columns=fixed morekeywords=date,locale,grep}
$ locale
LANG="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC="ru_RU.UTF-8"
LC_TIME="ru_RU.UTF-8"
...
LC_ALL=
$ locale -k LC_TIME | grep 'd_t_fmt'
d_t_fmt="%a %d %b %Y %T"
$ date
<*Сб*> 26 <*окт*> 2024 00:02:42 +07
$ LC_TIME=en_US date
Sat Oct 26 12:02:42 AM +07 2024
$ LC_ALL=C date
Sat Oct 26 00:02:42 +07 2024
```

::::
:::

# {.plain}

\centering
```{=latex}
{\fontsize{48pt}{7.2}\selectfont Q\&A }
```

