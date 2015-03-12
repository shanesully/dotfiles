# coloured output
alias ls='ls -G'

# set up git prompt
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
	GIT_PROMPT_THEME=Default
	source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

# tmux auto-start
[[ $TERM != "screen" ]] && exec tmux

# sweet terminal google search 
google() {
    search=""
    echo "Googling: $@"
    for term in $@; do
        search="$search%20$term"
    done
    open "http://www.google.com/search?q=$search"
}
