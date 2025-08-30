---
title: Автоматизация сборки программного обеспечения
subtitle: Инструментарий Современного Программиста
---

# Системы сборки

`\lstset{style=default,basicstyle={\ttfamily\color{CtpPeach}}}`{=latex}

- Universal: `make`, `ninja`, `bazel`
- C/C++: `CMake`
- Rust: `cargo`
- Java: `maven`, `gradle`
- Scala: `sbt`
- Haskell: `cabal`, `stack`

# Continuous Integration (CI)

## Принципы

- Проект полностью хранится в VCS
- Сборка осуществляется одной командой
- Сборка занимает мало времени
- Сборка тестируется автоматически

. . .

## Инструменты

- [GitHub Actions](https://github.com/features/actions)
- [Jenkins](https://www.jenkins.io)
- [Travis CI](https://www.travis-ci.com)
- [TeamCity](https://www.jetbrains.com/teamcity)

# Docker

- Легковесные контейнеры
- Виртуализация Linux-окружения
- Унификация окружения сборки и запуска приложений
- Возможность версионировать конфигурацию
- Распространение готовых образов через реестры
  - Локальные
  - Публичные ([Docker Hub](https://hub.docker.com))

# Полезные ресурсы

:::::: columns
:::: column

## \centering Makefile cheatsheet

```{=latex}
\vspace{1em}
\centering
\qrcode[height=3cm]{https://devhints.io/makefile}
\vspace{1em}
```
<https://devhints.io/makefile>

::::
:::: column

## \centering Make Reference Manual

```{=latex}
\vspace{1em}
\centering
\qrcode[height=3cm]{https://www.gnu.org/software/make/manual/make.html}
\vspace{1em}
```
<https://www.gnu.org/software/make/manual/make.html>

::::
::::::

# Полезные ресурсы

:::::: columns
:::: column

## \centering Docker CLI cheatsheet

```{=latex}
\vspace{1em}
\centering
\qrcode[height=3cm]{https://devhints.io/docker}
\vspace{1em}
```
<https://devhints.io/docker>

::::
:::: column

## \centering Getting started with Docker

```{=latex}
\vspace{1em}
\centering
\qrcode[height=3cm]{https://docs.docker.com/get-started/}
\vspace{1em}
```
<https://docs.docker.com/get-started/>

::::
::::::

# {.plain}

\centering
```{=latex}
{\fontsize{48pt}{7.2}\selectfont Q\&A }
```

