autoload -Uz colors && colors
autoload -Uz compinit && compinit

setopt PROMPT_SUBST
setopt AUTO_CD
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

git_branch() {
  local branch
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null) || return
  [[ "$branch" == HEAD ]] && branch=$(git rev-parse --short HEAD 2>/dev/null)
  echo " ($branch)"
}

PROMPT='%{$fg_bold[cyan]%}%n@%m %{$fg_bold[green]%}%~%{$reset_color%}%{$fg[yellow]%}$(git_branch)%{$reset_color%} %# '

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

export PATH="$HOME/bin:/usr/local/bin:$PATH"

export EDITOR=vim
export VISUAL=vim
export PAGER="less"
export LESS="-R"

alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias cls='clear'
alias grep='grep --color=auto'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gds='git diff --staged'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias gb='git branch'
alias gll='git log --oneline --graph --decorate --all'
