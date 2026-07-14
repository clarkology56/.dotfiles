# Dotfiles

Personal config for a Rails + Neovim + Claude Code dev environment on macOS.
Cleaned up July 2026: retired two archived generations of vim scaffolding config, merged the live mapping system in from `~/.upserv_foundations_vim`, and migrated rbenv/nvm → mise.

## Contents

| Path | Purpose |
|---|---|
| `zshrc` / `zsh/manifest.zsh` | Shell config (oh-my-zsh, mise, aliases: `gs`, `gd`, `mr`=`mise run`, …) |
| `vimrc` / `config/nvim/init.vim` | Neovim entry (vim-plug; init.vim sources `~/.vimrc`) |
| `vim/` | Custom mappings — navigation + muscle memory (see `vim/README.md`) |
| `gitconfig`, `gitignore_global` | Git config (diff-so-fancy, lfs, osxkeychain) |
| `gemrc`, `dircolors`, `ssh/config` | Misc tool config |
| `iterm/` | iTerm2 profile + global key mappings |

## Setup on a new machine

```zsh
git clone <this-repo> ~/.dotfiles
brew install mise gh diff-so-fancy coreutils
# symlink dotfiles into $HOME (rcm's `rcup`, or manual ln -s)
```

Tool versions (ruby, node) are managed by mise, which reads each project's `.ruby-version` / `.nvmrc`.

## Notes

- Rails dev environment at work runs via the rails-dev-docker wrapper (`mise run up`, worktrees, Claude Code per worktree) — see that repo's README.
- Code scaffolding/boilerplate that used to live in vim templates is now Claude Code's job.
