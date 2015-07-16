#! /bin/bash

# Create vim directory structure
mkdir -p vim/.vim/autoload vim/.vim/bundle vim/.vim/colors vim/.vim/.backup vim/.vim/.swp

curl -LSso vim/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim # Install pathogen

# Download vim plugins
cd ~/.vim/bundle
git clone https://github.com/altercation/vim-colors-solarized
git clone https://github.com/Valloric/YouCompleteMe
git clone https://github.com/kien/ctrlp.vim

# Install YouCompleteMe completion engine with semantic support for C-family languages
cd YouCompleteMe;git submodule update --init --recursive >/dev/null;./install.sh --clang-completer >/dev/null

# Setup vim Solarized colorscheme
cp vim-colors-solarized/colors/* ~/.vim/colors
