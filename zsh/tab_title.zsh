# Name each terminal tab after the current git branch, falling back to the
# directory name outside a repo. oh-my-zsh's own title hooks are switched off so
# they don't overwrite this on every prompt (and with the command name on every
# preexec).
DISABLE_AUTO_TITLE=true

function _git_branch_tab_title {
  local name
  name=$(command git symbolic-ref --quiet --short HEAD 2>/dev/null) \
    || name=$(command git rev-parse --short HEAD 2>/dev/null) \
    || name=${PWD:t}

  # `title` runs its arguments through prompt expansion, so a literal % has to
  # be doubled or a branch like `wip-50%` will mangle the tab name. Keep the
  # separator ASCII too — `title` shell-quotes non-ASCII into visible `$'\M-..'`
  # escapes rather than passing the character through.
  title "${name//\%/%%}" "${name//\%/%%}: %~"
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd _git_branch_tab_title
