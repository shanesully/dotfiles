HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
# Ignore duplicates in history
setopt HIST_IGNORE_DUPS
bindkey -v
zstyle :compinstall filename '/Users/shaneosullivan/.zshrc'
# Enable syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -U promptinit
# Load autocompletion
autoload -Uz compinit
# Enable zsh colors
autoload -U colors && colors
# Initialize autocompletion
compinit
promptinit

alias cl='clear'
alias vi='vim'

# Custom prompt
PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%2~ %{$reset_color%}%# "
