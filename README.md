# Презентации курса Инструментарий Современного Программиста

Отрендеренные презентации находятся в директории [publish](publish):

- [Введение](publish/intro.pdf?raw=true)
- [Основы работы с Unix](publish/unix.pdf?raw=true)
- [Основы работы с текстом](publish/text.pdf?raw=true)
- [Создание скриптов](publish/bash.pdf?raw=true)
- [Системы контроля версий](publish/git.pdf?raw=true)
- [Локализация и интернационализация программного обеспечения](publish/encoding.pdf?raw=true)
- [Языки разметки](publish/markup.pdf?raw=true)
- [Автоматизация сборки программного обеспечения](publish/automation.pdf?raw=true)

## Building

Following command builds presentations into `.pdf`:

```
make
```

## Publishing

To "publish" the final `.pdf` you can use the following command which builds and copies `src/*.pdf` into `publish/*.pdf`
which can then be committed to the repo:

```
make publish
```
