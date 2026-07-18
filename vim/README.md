# Vim mappings

Custom Neovim mappings, merged into dotfiles from the former `~/.upserv_foundations_vim` repo (July 2026). The code-scaffolding/template system it used to contain was retired in favor of Claude Code; what remains is navigation and editor muscle memory.

## What's here

- `prerequisites.vim` — shared functions: terminal/buffer/window management, test-file resolution, project helpers. Must load first.
- `manifest.vim` — loads everything below.
- `vim_mappings.vim` — insert-mode, visual/normal-mode (the home-row D-pad remap: `l`=up, `k`=down, `j`=left, `;`=right), terminal mappings.
- `space_mappings_simple.vim` — buffer, file, git, window management (`<space>` prefix, short chords).
- `space_mappings.vim` — file find/create/edit navigation, e.g. `<space>feco` opens the controller for the current view, `<space>femo` the model, `<space>fete` the test.

## Loading

Done in `vimrc`:

```vim
let g:path_to_upserv_foundations_vim = '~/.dotfiles/'
so ~/.dotfiles/vim/prerequisites.vim
so ~/.dotfiles/vim/manifest.vim
```

## Conventions

- `<space>` is the de-facto leader for all custom mappings (`mapleader` is not set). If adding plugins with `<space>`-leader defaults (e.g. telescope), resolve conflicts deliberately.
- `<Tab>`/`<S-Tab>` cycle windows in normal mode.
- Tests run with minitest (`rails t`) via `<space>gt` / `<space>gT`; `<space>GT` runs the full CI task.
- Terminals are named, not numbered: base, console, logs, debugger, test, claude — each tagged with `b:terminal_name` and toggled via `<space>te/tc/ts/td/tt/ta` (capital letter = reuse current window instead of splitting). A crashed terminal is detected, cleaned up, and recreated on the next toggle; it can never shift the others. The claude terminal auto-runs `mise run claude` on creation and lets `<Esc>` pass through to Claude (exit terminal mode there with `jj`).
