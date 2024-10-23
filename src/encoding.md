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

```{columns=fixed}
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

## \centering ASCII

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

## \centering CP866

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

> MS-DOS

. . .

::::
:::: {.column width=23%}

## \centering KOI8-R

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

> Unix

. . .

::::
:::: {.column width=23%}

## \centering CP1251

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

> Windows

::::
:::

# Проблемы с кодировками

::: columns
:::: {.column width=30%}

:::::: block

## \centering оПХБЕР ЛХП!

. . .

\footnotesize

```{=latex}
\begin{uncoverenv}<+(1)->
```

```{columns=fixed}
$ echo "<*оПХБЕР ЛХП*>!" \
   | iconv -t cp1251 \
   | iconv -f koi8-r
<*Ноуаеп куо!*>
```

```{=latex}
\end{uncoverenv}
\begin{uncoverenv}<+(1)->
```

```{columns=fixed}
$ echo "<*оПХБЕР ЛХП*>!" \
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

# {.plain}

\centering
```{=latex}
{\fontsize{48pt}{7.2}\selectfont Q\&A }
```

