if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
	GIT_PROMPT_THEME=Default
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

alias ls='ls -aG'

# start tmux automatically

if [[ ! $TERM =~ screen ]]; then
  exec tmux
fi
