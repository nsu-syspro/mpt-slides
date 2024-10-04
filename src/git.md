---
title: Системы контроля версий
subtitle: Инструментарий Современного Программиста
---

# Мотивация

```{=latex}
%% Note: has to be in non-fragile frame or before \begin{document}
\newsavebox{\difflisting}
```

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

# Основные концепции {.fragile}

:::::: columns
:::: {.column width=53%}

## \centering Система контроля версий `\\ \small`{=latex} Version control system, VCS

- `\uncover<2->{{\color{CtpTeal} Изменение / changeset / patch}`{=latex}: добавление или удаление строк`}`{=latex}
- `\uncover<3->{{\color{CtpTeal} Коммит / версия / ревизия}`{=latex}: набор изменений`}`{=latex}
- `\uncover<4->{{\color{CtpTeal} История}`{=latex}: последовательность коммитов`}`{=latex}
- `\uncover<5->{{\color{CtpTeal} Ветка / branch}`{=latex}: история относящаяся к конкретной задаче / фиче`}`{=latex}
- `\uncover<6->{{\color{CtpTeal} Слияние}`{=latex}: объединение историй двух веток в одну`}`{=latex}
- `\uncover<6->{{\color{CtpTeal} Конфликт}`{=latex}: изменения в одной и той же строке при слиянии`}`{=latex}
- `\uncover<7->{{\color{CtpTeal} Репозиторий}`{=latex}: база данных всех изменений`}`{=latex}

::::
:::: {.column width=47%}

```{=latex}
\vspace{1em}
\centering

\begin{lrbox}{\difflisting}
\scriptsize
\begin{lstlisting}[style=diff]
-echo "Hello World!"
+echo "Hello Sys.Pro!"
\end{lstlisting}
\end{lrbox}

\begin{tikzpicture}[
    ->,
    every node/.style={font=\ttfamily\footnotesize},
    commit/.style={draw,circle,minimum height=2em,minimum width=2em}
]

  \matrix [row sep=2em, column sep=2em,ampersand replacement=\&] {
                                       \& \uncover<6->{\node [commit] (M) {};} \\
  \uncover<5->{\node [commit] (E) {};} \& \uncover<3->{\node [commit] (C) {};} \\
  \uncover<5->{\node [commit] (D) {};} \& \uncover<4->{\node [commit] (B) {};} \\
                                       \& \uncover<4->{\node [commit] (A) {};} \\
  };
  \uncover<4->{
  \graph [use existing nodes] {
      A -> B -> C
  };
  }
  \uncover<5->{
  \graph [use existing nodes] {
      A -> D -> E
  };
  }
  \uncover<6->{
  \graph [use existing nodes] {
      {E, C} -> M
  };
  }

  \uncover<5>{
  \node (main) [draw,above right=1em of C,anchor=south] {main};
  }

  \uncover<5->{
  \node (feature) [draw,above left=1em of E,anchor=south] {feature};
  }

  \uncover<6->{
  \node (main merge) [draw,above right=1em of M,anchor=south] {main};
  }

  \uncover<2->{
  \coordinate (mid) at ($(C) !0.5! (B)$);
  \node (diff) [right=2em of mid,text depth=1em,font=\scriptsize,text height=1em] {\usebox{\difflisting}
  };
  \node (diff file) [above=0 of diff] {a.sh};
  \draw [-] (diff.north west) -- (diff.north east);
  \node [draw,inner sep=0,fit=(diff file) (diff)] {};
  }

  \uncover<7->{
  \node [draw,label={Repository},fit=(diff) (main merge) (A) (feature)] {};
  }

\end{tikzpicture}
```

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

