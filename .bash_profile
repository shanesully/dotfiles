# coloured output
alias ls='ls -G'
alias cl='clear'

# open location with finder
alias finder='open -a Finder'

# set up git prompt
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
	GIT_PROMPT_THEME=Default
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

# bash history section
export HISTSIZE=10000

# avoid duplicates
export HISTCONTROL=ignoredups:erasedups

# append history entries
shopt -s histappend

# Save and reload history after each command
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
