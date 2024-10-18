---
title: Языки разметки
subtitle: Инструментарий Современного Программиста
---

# WYSIWYG vs WYSIWYM

::: columns
:::: column

## \centering What You See Is What You Get

\centering\small
Microsoft Word, Google Docs

```{=latex}
\begin{minipage}[b][.65\textheight][b]{\linewidth}
```
\centering
![Google Docs](images/markup/Google_Docs_screenshot.png)
```{=latex}
\end{minipage}
```

::::
:::: column

## \centering What You See Is What You Mean

\centering\small
Markdown, \LaTeX, HTML

```{=latex}
\begin{minipage}[b][.65\textheight][b]{\linewidth}
```
\centering
![Markdown](images/markup/Markdown_screenshot.png)
```{=latex}
\end{minipage}
```

::::
:::

# Markdown

::: columns
:::: {.column width=10%}
::::
:::: {.column width=40%}

## \centering Полезные ресурсы

- [Узнать Markdown за 60 секунд](https://commonmark.org/help/)
- [Markdown playground](https://spec.commonmark.org/dingus/)
- [GitHub Flavored Markdown](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
- [Pandoc User's Guide](https://pandoc.org/MANUAL.html)

::::
:::: {.column width=40%}

\centering
```{=latex}
\begin{minipage}[c][.35\textheight][c]{.6\textwidth}
\begin{mdframed}[backgroundcolor=maininverted,linecolor=maininverted]
```
![](images/markup/Markdown-mark.pdf)
```{=latex}
\end{mdframed}
\end{minipage}
```

::::
:::: {.column width=10%}
::::
:::

\vspace{2em}

`\lstset{style=default,basicstyle={\ttfamily\color{CtpPeach}}}`{=latex}

::: columns
:::: {.column width=33%}

## \centering Документы и отчеты

- [Pandoc](https://pandoc.org)
- [Jupyter Notebook](https://jupyter.org)

## \centering Заметки

- `vim`
- [Obsidian](https://obsidian.md)

::::
:::: {.column width=33%}

## \centering Презентации

- `pandoc` + `beamer`
- [Slidev](https://sli.dev)
- [reveal.js](https://revealjs.com)

::::
:::: {.column width=33%}

## \centering Форматирование

- [GitHub](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
- [StackOverflow](https://stackoverflow.com/editing-help)

## \centering Web-сайты

- [GitHub pages](https://pages.github.com)
- [Jekyll](https://jekyllrb.com)

::::
:::

# LaTeX

# Визуализация

## Графы и диаграмы

- [Graphviz](https://graphviz.org/)
- [Gnuplot](http://www.gnuplot.info)
- [Mermaid](https://mermaid.js.org)
- [Matplotlib](https://matplotlib.org)
- [TikZ](https://texample.net//tikz/examples/)

# Graphviz

::: columns
:::: column

```{=latex}
\centering
\begin{minipage}[c][.8\textheight][c]{.7\linewidth}
```

```{=latex}
\lstset{style=default,basicstyle={\small\ttfamily}}
```

::::: block

## \centering Пример

```{.dot style=dot}
digraph G {
  A -> {B, C} -> D
}
```

```{.bash columns=fixed}
$ dot -Tsvg example.gv \
      -o example.svg
```

:::::

::::: block

## \centering Полезные ресурсы

- [Graphviz Documentation](https://graphviz.org/documentation/)
- [Graphviz Gallery](https://graphviz.org/gallery/)
- [Online-редактор](https://dreampuf.github.io/GraphvizOnline/)

:::::

```{=latex}
\end{minipage}
```

::::
:::: column

```{=latex}
\centering
\begin{minipage}[c][.8\textheight][c]{.8\linewidth}
\begin{mdframed}[backgroundcolor=maininverted,linecolor=maininverted]
```
![](images/markup/graphviz-example.pdf)
```{=latex}
\end{mdframed}
\end{minipage}
```

::::
:::

# Gnuplot

::: columns
:::: column

```{=latex}
\centering
\begin{minipage}[c][.8\textheight][c]{.7\linewidth}
```

```{=latex}
\lstset{style=default,basicstyle={\small\ttfamily}}
```

::::: block

## \centering Пример

```{.bash columns=fixed}
$ gnuplot -p -e \
    "plot [-5:5] sin(x), cos(x)"
```

:::::

::::: block

## \centering Полезные ресурсы

- [Подробный туториал](https://ctcms-uq.github.io/data_tutorials/gnuplot.html)
- [Галерея примеров](https://gnuplot.sourceforge.net/demo/)

:::::

```{=latex}
\end{minipage}
```

::::
:::: column

```{=latex}
\centering
\begin{minipage}[c][.8\textheight][c]{\linewidth}
```
![](images/markup/gnuplot-example.pdf)
```{=latex}
\end{minipage}
```

::::
:::

# {.plain}

\centering
```{=latex}
{\fontsize{48pt}{7.2}\selectfont Q\&A }
```

