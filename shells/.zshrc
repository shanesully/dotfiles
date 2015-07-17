# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/$USER/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Init custom prompts
autoload -U promptinit
promptinit

alias ls='ls -G'
alias tls='tmux list-sessions'
alias vi='vim'
alias gs='git status'
alias gull='git pull'
alias gush='git push'
