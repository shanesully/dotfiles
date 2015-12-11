# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/$USER/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/zsh-git-prompt/zshrc.sh

# an example prompt
PROMPT='%B%m%~%b$(git_super_status) %# '

