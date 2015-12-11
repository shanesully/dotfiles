# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep

# vim keybindings
bindkey -v

# Kill 400ms ESC mode-switch lag
export KEYTIMEOUT=1

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/$USER/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/zsh-git-prompt/zshrc.sh

# an example prompt
PROMPT='%B%m%~%b$(git_super_status) %# '

alias ls='ls -G'
alias cl='clear'
alias vi='vim'
alias py='python'
alias py3='python3'
alias tls='tmux list-sessions'
alias tks='tmux kill-session'
alias tas='tmux a -t'
alias lc='cl'

# tmux 256-colour support:
alias tmux='tmux -2'

# git section
alias g='git'
alias gl='git log --graph --abbrev-commit --pretty=oneline'

# Use vim as the editor
export EDITOR=vi


