HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
zstyle :compinstall filename '/Users/shanesully/.zshrc'
#faster completion
zstyle ':completion::complete:*' use-cache 1
autoload -Uz compinit
compinit

#launch tmux at startup
if which tmux > /dev/null 2>&1; then
  #if no session, start new 
  test -z ${TMUX} && tmux
  #when quit, attempt attatch
  while test -z ${TMUX}; do
	tmux attatch || break
  done
fi

#my custom prompt
#export PS1=$'\e[0;31m[%n@%m%d] > \e[0m'
export EDITOR="vi"

#autocorrect commands typed
setopt correctall
#auto cd command
setopt autocd
setopt extendedglob
#stop annoying pushd options
setopt PUSHD_SILENT
setopt NO_BEEP
setopt EXTENDED_GLOB
#ignore dups
setopt HIST_IGNORE_DUPS

#emacs for osx alias
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias home="cd ~"
alias df="df -h"
alias whoshome="who | cut -d ' ' -f1 | sort | uniq"
alias root="cd /"
alias downloads="cd ~/Downloads"
alias ez="vi ~/.zshrc"
alias ezv="vi ~/.vimrc"
alias q="exit"
alias show="ls -a"
alias cl="clear"
alias vi="vim"
alias v="vim"
alias up="cd .."
alias upgrade="brew update && brew upgrade"
alias search="brew search"
alias install="brew install"
alias uninstall="brew uninstall"
alias sqlite="sqlite3"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

#draw mandelbrot fractal
function zsh_abuse {
   local lines columns colour a b p q i pnew
   ((columns=COLUMNS-1, lines=LINES-1, colour=0))
   for ((b=-1.5; b<=1.5; b+=3.0/lines)) do
       for ((a=-2.0; a<=1; a+=3.0/columns)) do
           for ((p=0.0, q=0.0, i=0; p*p+q*q < 4 && i < 32; i++)) do
               ((pnew=p*p-q*q+a, q=2*p*q+b, p=pnew))
           done
           ((colour=(i/4)%8))
            echo -n "\\e[4${colour}m "
        done
        echo
    done
}
