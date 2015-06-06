#!/bin/bash

binaries=(
	vim
	git
	zsh
	tmux
	python
	python3
	gcc
	wget
)

echo "Installing binaries..."
brew install ${binaries[@]}
