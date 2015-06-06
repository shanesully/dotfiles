#!/bin/bash

binaries=(
	vim
	git
	zsh
	zsh-syntax-highlighting
	tmux
	python
	python3
	gcc
	wget
)

echo "Installing binaries..."
brew install ${binaries[@]}
