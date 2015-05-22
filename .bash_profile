# Coloured output
alias ls='ls -G'
alias cl='clear'
# Show and hide hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Open location with finder
alias finder='open -a Finder'

# Set up git prompt
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
	GIT_PROMPT_THEME=Solarized
	source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

google() {
    search=""
    echo "Googling: $@"
    for term in $@; do
        search="$search%20$term"
    done
    open "http://www.google.com/search?q=$search"
}

# Bash history section
export HISTSIZE=10000

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups

# Append history entries
shopt -s histappend

# Save and reload history after each command
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
