# Notes

## Prerequisites

> TODO: linux installation guide VM

- VirtualBox / Docker / WSL

## What is Modern Programmer's Tools?

- Missing CS course
- Topics
  - Linux
  - Shell
  - Bash
  - Scripting
  - Git
  - Open source
  - Markdown
  - Automation
  - Encodings
  - LaTeX
  - Regex
  - Locales
  - Versioning
  - Docker ???
- Googling
- GitHub Classroom
- Grading
  - 8 assignments 8/10 - pass

## *nix history

1. Unix (1970)
1. C (1972)
   > Assembler -> C
   1. sh (1977)
      > Shell (command-line interpreter)
      - System V (AIX / HP UX / Solaris / ...)
   1. BSD (1978) (FreeBSD / macOS / iOS / ...)

   1. Linux (1991) (Many distributions / Servers / Android / ...)

## Shell

- Command-line interpreters
- Pipes / redirections
- Shortcuts / keybinds
- Aliases
- Wildcards
- File system
  - ~~Folder~~ Directory
  - Relative / absolute paths
  - `.` / `..`
  - Symlinks ?
- Environment variables
- Unix philosophy ?
  - Simple programs with single purpose
  - Unified program set
- Versioning
- Help

```bash
$ date
Вс 30 июн 2024 00:03:25 +07
$ date | sed 's/ .*//'
Вс
$ date | sed 's/ .*//' | tr '[:lower:]' '[:upper:]'
ВС

$ bc
> ...
$ echo foo
foo

$ bc '2+2'
???

$ echo '2+2' | bc

$ cat # con-cat-enate

$ cat > foo.txt # end with ^D
foobar

$ tac

$ ls

$ ls -l

$ ls -la

$ cd # relative / absolute paths

$ realpath ../

$ realpath --relative-to=.

$ cd ../

$ cd - # reading the manual

$ pwd

$ tree

$ alias

$ type ls

$ type cat

$ type echo

$ type type

$ # cp / mv / rm / mkdir / rmdir

$ # touch

$ # find

$ # copy / paste
```

> TODO: visual aids for everything

> Warn about `rm -rf`

### Shortcuts / keybinds

> TODO: cheatsheet

- `^C`
- `^D`
- `^R`
- HEREDOC
- wildcards / globs
- `~`

## Regex / editors

- `tail`, `head`
- Pagers: `less`, `more`
- `nano`, `vim` TODO: more vim
  - snake game with hjkl ??
- `grep`, `sed`
- Regex theory + practice problems on https://regexone.com
  - Typical regex is unreadable but often useful for scripting
