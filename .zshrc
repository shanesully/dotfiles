# Enable prompt command substitution
setopt PROMPT_SUBST

# Load colours
autoload -Uz colors && colors

# Inline Git branch function
git_branch() {
  local branch
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null) || return
  echo " ($branch)"
}

# Prompt: user@host path (branch) %
PROMPT='%{$fg_bold[cyan]%}%n@%m %{$fg_bold[green]%}%~%{$reset_color%}%{$fg[yellow]%}$(git_branch)%{$reset_color%} %# '

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS SHARE_HISTORY

# Path
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Editors
export EDITOR="vim"
export VISUAL="vim"
export PAGER="less"

# Common aliases
alias ll='ls -lah'
alias ..='cd ..'
alias ...='cd ../..'
alias cls='clear'

# Git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias gb='git branch'
