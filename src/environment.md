---
title: Development Environment
subtitle: Инструментарий Современного Программиста
---

# Today

- **i3** — a tiling window manager (you've been looking at one all semester)
- **tmux** — the same idea when there is no desktop: servers, SSH
- **Neovim** — the editor you already know, extended into an IDE
- **pi** — AI agents in the terminal

## Format

Discussion, not a lecture. Interrupt, ask, suggest.

# i3

## Window manager

- Distro — system; **DE** (GNOME, KDE) — full desktop: WM + panels + settings + apps
- A **WM** is just the window part — and it can be a tiling one
- Tiling: windows never overlap, mouse optional, layout *is* the config

## Manual vs dynamic tiling

- i3: **manual** — you decide every split
- Hyprland, dwm, awesome: **dynamic** — the WM arranges windows by algorithm
- Same debate as vim vs IDE: control vs convenience

<https://i3wm.org/docs/userguide.html>

# i3: what I use

```{.i3}
# vim-style navigation, in the actual config
set $left j
bindsym $mod+$left focus left

# pin applications to workspaces
assign [class="TelegramDesktop"] $ws1

# restore a whole workspace layout on startup
exec --no-startup-id i3-msg 'workspace $ws1; append_layout ~/.config/i3/browser-messaging.json'
```

- Config is one plain-text file, reloaded **live** (`$mod+Shift+r`)
- Status bar: i3blocks

# i3: live

- Point at the current layout: this is i3, these are workspaces
- Edit a keybinding → reload → windows rearrange
- Scratchpad: `bindsym $mod+minus scratchpad show`
- Show the JSON layout file and the startup script for ws1
- Discussion: would *you* switch? what keeps you on a DE?

# tmux

## The desktop you can disconnect from

- Problem: you are on a server over SSH — no i3, and SSH drops
- tmux starts a **server** holding a session; your terminal is just a client
- Drop the connection, reconnect, `tmux attach` — everything is still there
- Same vocabulary: sessions ≈ desktops, windows ≈ workspaces, panes ≈ tiled windows

<https://github.com/tmux/tmux/wiki>

# tmux: panes are addressable

```{.bash}
# from ~/.tmux.conf
set-window-option -g mode-keys vi
bind-key -T copy-mode-vi y send -X copy-pipe-and-cancel 'xclip -in -selection clipboard'
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'catppuccin/tmux#v2.3.0'
```

. . .

```{.bash}
# a pane is an addressable stream of text — remember this for later
tmux capture-pane -p -t mysession:0.0   # read what's on screen
tmux send-keys -t mysession:0.0 'make' Enter   # type into it
```

# tmux: live

- New session, splits, windows, renaming
- Detach → kill the terminal → reconnect → attach → nothing lost
- vi-mode copying straight into the system clipboard
- TPM: the config is in git too
- Foreshadow: "a pane is just an addressable stream of text — this becomes important in the last block"

# Neovim: editor → IDE

## You already know vim — the delta is plugins

- **LSP**: diagnostics inline, `gd` go-to-definition, `gr` references, rename across files
- **fzf-lua**: fuzzy file finder, live grep — the same fzf you've seen me use with `Ctrl-r` in the terminal
- **Floaterm**: a terminal *inside* the editor — how I run lazygit and `make` without leaving vim
- Splits and tabs: manual tiling again, same idea as tmux

[github.com/liontiger23/configs-nvim](https://github.com/liontiger23/configs-nvim)

# Neovim: you don't need an IDE — mostly

```{.lua}
-- from configs-nvim: after/plugin/lsp.lua
require('mason').setup({})
require('mason-lspconfig').setup {
  ensure_installed = {'lua_ls', 'pyright'},
}
vim.lsp.config('lua_ls', { settings = { ... } })
vim.keymap.set('n', 'gd', '<cmd>lua require("fzf-lua").lsp_definitions()<cr>', opts)
```

- LSP covers daily navigation, completion, light refactoring
- Honest answer: Scala debugging and heavy refactoring keep me in IDEA; C debugging is gdb
- You build the IDE you need instead of installing one you don't

# Neovim: live

- Open the C reference project from another course
- `gd`, `gr`, hover, inline diagnostics
- Rename a symbol — watch it propagate across files
- `:Floaterm` → lazygit
- Discussion: what does your IDE give you that you'd actually miss?

# Agents

## From chat to agent

- Chat: you copy code in, copy code out
- Agent: reads and writes files, runs commands — tools like `bash`, `read`, `write`, `edit`
- It works *in* your project, not beside it

## Survey

- Who uses LLMs for coding? Chat interfaces? Agent CLIs? Which ones?

<https://www.boot.dev/courses/learn-ai-coding>

# Agents: live

## The task

- Agent, figure out how to build the C reference project — and build it
- First run: **without** `AGENTS.md` — watch it explore and guess
- Then write `AGENTS.md` together: build command, compiler flags, project layout
- Second run: straight to the point

## What just happened

- `AGENTS.md` is project context the agent reads on its own — conventions as a text file
- Watched tools: `bash`, `read`, `edit`

# pi: why this one

## Two philosophies

- **opencode** — batteries included: plan mode, LSP integration, parallel sessions
- **pi** — a minimal harness: TypeScript extensions, skills, custom providers; *you* build the workflow
- Provider-agnostic: switch models mid-session, your keys, your costs

## From my configs

- My pi extensions and skills were mostly **written by the agent itself** ([configs-pi](https://github.com/liontiger23/configs-pi))
- The `routerai` extension shows live token costs right in the UI
- As a unix utility too: `pi -p "..."` for scripts

<https://github.com/earendil-works/pi> · <https://opencode.ai>

# pi: live

- Run pi in the C project, give it a small real task — narrate the tools as they appear
- `/model` mid-session — show the provider list
- Ask it to write a tiny extension (e.g. "prefer ripgrep over grep in bash commands") — pi picks it up without restart
- Discussion: how would *you* use this? what would you build first?

# Useful resources

:::::: columns
:::: column

## i3 and tmux

- <https://i3wm.org/docs/userguide.html>
- <https://github.com/tmux/tmux/wiki>
- <https://github.com/tmux-plugins/tpm>

## Neovim

- <https://github.com/nvim-lua/kickstart.nvim>
- <https://github.com/neovim/nvim-lspconfig>
- <https://github.com/ibhagwan/fzf-lua>

::::
:::: column

## Agents

- <https://www.boot.dev/courses/learn-ai-coding>
- <https://github.com/earendil-works/pi>
- <https://opencode.ai>
- <https://agents.md>

## My configs

```{=latex}
\vspace{1em}
\centering
\qrcode[height=1.5cm]{https://github.com/liontiger23/configs-nvim}
\qrcode[height=1.5cm]{https://github.com/liontiger23/configs-pi}
\vspace{1em}
```

[configs-nvim](https://github.com/liontiger23/configs-nvim) ·
[configs-pi](https://github.com/liontiger23/configs-pi)

::::
::::::

# {.plain}

\centering
```{=latex}
{\fontsize{48pt}{7.2}\selectfont Q\&A }
```
