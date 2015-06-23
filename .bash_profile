# Color reporting for tmux
export TERM="xterm-256color"

# User aliases	
alias ls='ls -G' # Coloured directory listings
alias cl='clear'
alias vi='vim'

# Show and hide hidden files on OS X
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias finder='open -a Finder' # Open target with Finder

# Set up bash git prompt
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
	GIT_PROMPT_THEME=Solarized
	source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

# Terminal Google Search function
# Syntax: $ google cats
google() {
    search=""
    echo "Googling: $@"
    for term in $@; do
        search="$search%20$term"
    done
    open "http://www.google.com/search?q=$search"
}

# Bash history section
export HISTSIZE=1000

# Avoid duplicate entries
export HISTCONTROL=ignoredups:erasedups

# Append history entries
shopt -s histappend

# Save and reload history after each command
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
