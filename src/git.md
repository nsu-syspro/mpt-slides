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

# Git internals {.fragile}

:::::: columns
:::: {.column width=53%}

## \centering Хранение данных

- Хранится не разница (`{\color{CtpTeal}diff}`{=latex}) файлов,
  а полный снимок (`{\color{CtpTeal}snapshot}`{=latex}) файловой структуры в виде *дерева*
- `\uncover<2->{{\color{CtpTeal} Blob}`{=latex}: содержимое одного файла`}`{=latex}
- `\uncover<3->{{\color{CtpTeal} Tree}`{=latex}: директория указывающая на blob'ы, находящихся в ней файлов
  и на tree поддиректорий`}`{=latex}
- `\uncover<4->{{\color{CtpTeal} Коммит}`{=latex}: конкретный снимок, указывающий на соответствующий root tree
  и на предыдущий коммит в истории`}`{=latex}
- `\uncover<5->{{\color{CtpTeal} Ветка}`{=latex}: указатель на конкретный коммит`}`{=latex}
- `\uncover<5->{{\color{CtpTeal} HEAD}`{=latex}: указатель на *текущий* коммит`}`{=latex}

::::
\hfill
\vline
:::: {.column width=45%}

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
    commit/.style={draw,fill=CtpPeach,circle,minimum height=1.5em,minimum width=1.5em},
    tree/.style={draw,fill=CtpSky,isosceles triangle,isosceles triangle apex angle=60,rotate=90,minimum height=1em,minimum width=1em},
    blob/.style={draw,fill=CtpMaroon,minimum height=1.2em,minimum width=1.2em},
    branch/.style={draw},
]

  \matrix [row sep=1.5em, column sep=1em,ampersand replacement=\&] {
  \&
  \uncover<5->{\node [branch] (main) {main};} \&
  \uncover<6->{\node [branch] (HEAD) {HEAD};} \&
  \\

  \uncover<4->{\node [commit] (C1) {};} \&
  \uncover<4->{\node [commit] (C2) {};} \&
  \uncover<7->{\node [commit] (C3) {};} \&
  \\

  \&
  \uncover<3->{\node [tree] (R2) {};} \&
  \uncover<7->{\node [tree] (R3) {};} \&
  \\

  \uncover<3->{\node [tree] (T1) {};} \&
  \uncover<3->{\node [tree] (T2) {};} \&
  \uncover<7->{\node [tree] (T3) {};} \&
  \\

  \uncover<3->{\node []  (T0) {...};} \&
  \uncover<2->{\node [blob,label=below:a.txt]  (A1) {};} \&
  \uncover<2->{\node [blob,label=below:b.txt]  (B1) {};} \&
  \uncover<7->{\node [blob,label=below:a.txt'] (A2) {};} \\
  };

  \uncover<3->{\node (R2 label) [left=0.5em of R2,yshift=1em] {root};}
  \uncover<3->{\node (T1 label) [left=0.5em of T1,yshift=1em] {bar};}
  \uncover<3->{\node (T2 label) [left=0.5em of T2,yshift=1em] {foo};}
  \uncover<7->{\node (T3 label) [left=0.5em of T3,yshift=1em] {foo};}

  \uncover<3->{
  \graph [use existing nodes] {
      R2 -> {{T1 -> T0}, T2 -> {A1, B1}}
  };
  }
  \uncover<4->{
  \graph [use existing nodes] {
      C2 -> {R2, C1}
  };
  }
  \uncover<5-6>{
  \graph [use existing nodes] {
      main -> C2
  };
  }
  \uncover<6>{
  \graph [use existing nodes] {
      HEAD -> C2
  };
  }
  \uncover<7->{
  \graph [use existing nodes] {
      {main, HEAD} -> C3 -> {C2, R3 -> {T1, T3 -> {B1, A2}}}
  };
  }

\end{tikzpicture}

\hrule{}
\vspace{1em}

\begin{figure}
\centering
\footnotesize
\begin{BVerbatim}
.
├── bar
│   └── ...
└── foo
    ├── a.txt
    └── b.txt
\end{BVerbatim}
\end{figure}
```

::::
::::::

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

# Работа с ветками

## \centering Pro Git Глава 3. Git Branching

```{=latex}
\vspace{1em}
\centering
\qrcode[height=3cm]{https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell}
\vspace{1em}
```
<https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell>

# Команды Git

- `git init` / `git clone`
- `git status`
- `git log`
- `git add`
- `git restore`
- `git commit`
- `git push`
- `git switch` / `git checkout`
- `git merge`
- `git cherry-pick`
- `git rebase --interactive`
- `git remote ...`

# Git config

\small

- `~/.gitconfig`
  ```gitconfig
  [user]
	  email = <email>
	  name = <first-name> <last-name>
  [diff]
	  tool = vimdiff
  [merge]
	  conflictstyle = zdiff3
	  tool = vimdiff
  [mergetool]
	  keepBackup = false
  [alias]
	  st = status
	  graph = log --graph --oneline --decorate --all
	  ...
  ```
- `git config set --global <option> <value>`

# Git tools

`\lstset{style=default,basicstyle={\ttfamily\color{CtpPeach}}}`{=latex}

:::::: columns
:::: {.column width=53%}

## TUI

- `git log --graph --oneline --decorate`
- `vimdiff`
- [delta](https://dandavison.github.io/delta/introduction.html)
- [lazygit](https://github.com/jesseduffield/lazygit)

## GUI

- `gitk` + `git gui`
- [Sublime Merge](https://www.sublimemerge.com)
- [GitKraken](https://www.gitkraken.com/git-client)

::::
:::: {.column width=47%}

## \centering Git clients

```{=latex}
\vspace{1em}
\centering
\qrcode[height=3cm]{https://git-scm.com/downloads/guis}
\vspace{1em}
```
<https://git-scm.com/downloads/guis>

::::
::::::

# {.plain}

\centering
```{=latex}
{\fontsize{48pt}{7.2}\selectfont Q\&A }
```

