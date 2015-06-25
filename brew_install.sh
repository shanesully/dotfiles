#!/bin/bash

# Terminal apps
cmd=(
	bash
	vim
	tmux
	git
	gcc
	bash-git-prompt
	python
	wget
	brew-cask
)

# Desktop gui apps
gui=(
	google-chrome
	google-drive
	iterm2
	evernote
	vlc
)

echo "Tapping cask..."
brew tap caskroom/cask

echo "Installing commandline apps..."
brew install ${cmd[@]}

echo "Installing gui apps..."
brew cask install ${gui[@]}

echo "Setup complete."
