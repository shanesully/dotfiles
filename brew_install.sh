#!/bin/bash

binaries=(
	vim
	bash
	git
	bash-git-prompt
	tmux
	python
	python3
	wget
)

echo "Installinf binaries..."
brew install ${binaries[@]}
