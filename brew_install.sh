#!/bin/bash

# Currently no sublime-text3 package

term=(
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

gui=(
	google-chrome
	google-drive
	iterm2
	evernote
	github
	pycharm-ce
	vlc
	spectacle
)

echo "Installing cask..."
brew tap caskroom/cask
echo "Installing terminal app..."
brew install ${term[@]}
echo "Installing gui apps..."
brew cask install ${gui[@]}
echo "Setup complete."
