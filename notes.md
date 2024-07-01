# Notes

## Helper materials

- https://missing.csail.mit.edu

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
- Pipes / redirections / `;` / `&&` / `||`
- exit codes
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

$ tee

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

$ # sort basename

$ # diff / delta
```

- challenge: what does `paste` command do?

- ripgrep (grep)
- fzf
- broot (tree)
- file managers (vifm / nnn / ranger / ~~mc~~ / ~~far~~)

> TODO: visual aids for everything

> Warn about `rm -rf`

- `find -exec` / `| xargs`
- processes
  - `^Z`
  - `fg` / `bg`
- permissions
- users
- tmux
- ssh
- ssh game --- https://overthewire.org/wargames/bandit/

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
  - Verification of regex and human-readable descriptions on https://regex101.com
  - Typical regex is unreadable but often useful for scripting
- `| sort | uniq` ?
- example for sorting students list by name ?
  - TODO: add some issues and try to solve it

## Bash scripting

- https://devhints.io/bash
- bash
- `chmod +x`
- shebang
- script locations
- script arguments
- `$@`
- variables
- `"` and `'`
- for loops
- if statements
- `$(...)`
- `set -xe`
- ShellCheck
- source

- wait-notify sample with multiple processes
