#!/bin/bash

# Currently no sublime-text3 package

# Commandline apps
cmd=(
	bash
	git
	bash-git-prompt
	vim
	tmux
	python
	python3
	gcc
	wget
	brew-cask
)

# Desktop gui apps
gui=(
	google-chrome
	google-drive
	iterm2
	evernote
	pycharm-ce
	vlc
	spectacle
)

echo "Tapping cask..."
brew tap caskroom/cask
echo "Installing commandline apps..."
brew install ${cmd[@]}
echo "Installing gui apps..."
brew cask install ${gui[@]}
echo "Setup complete."
