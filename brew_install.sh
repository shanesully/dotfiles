#
# Thu 25 Jun 2015 10:54:37 IST
#
# sos homebrew and cask install script
#
#!/bin/bash
#

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
	macvim
	adobe-creative-cloud
	vlc
	evernote
)

echo "Tapping cask..."
brew tap caskroom/cask

echo "Installing commandline apps..."
brew install ${cmd[@]}

echo "Installing gui apps..."
brew cask install ${gui[@]}

echo "Setup complete."
