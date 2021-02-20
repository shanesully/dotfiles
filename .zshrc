# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/$USER/.zshrc'

autoload -Uz compinit promptinit

compinit
promptinit

prompt adam1

# Aliases
alias ls='ls -lG'
alias ll='ls'
alias tls='tmux list-session'
alias cl='clear'
alias cls='cl'
alias code="open -a Visual\ Studio\ Code.app"
alias py='python3'
