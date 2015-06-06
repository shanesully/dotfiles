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
# Initialize autocompletion
compinit
promptinit

alias cl='clear'
alias vi='vim'

# Custom prompt
PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%#"
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"
