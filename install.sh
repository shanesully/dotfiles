#! /bin/bash

echo "Setting up vim..."

# Setup vim directory structure
mkdir -p vim/.vim/autoload vim/.vim/bundle vim/.vim/colors vim/.vim/.backup vim/.vim/.swp

echo "Installing pathogen..."

# Install pathogen
curl -LSso vim/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim 

echo "Downloading vim plugins..."

# Download vim plugins
cd vim/.vim/bundle
{
git clone https://github.com/altercation/vim-colors-solarized
git clone https://github.com/Valloric/YouCompleteMe
git clone https://github.com/kien/ctrlp.vim
} &> /dev/null

echo "Installing YouCompleteMe..."

# Setup YouCompleteMe completion engine with semantic support for C-family languages
{
cd YouCompleteMe;git submodule update --init --recursive;./install.sh --clang-completer
} &> /dev/null

echo "Symlinking..."

# Symlink setup files to ~/
ln -s /Users/$USER/dotfiles/shell/.bash_profile ~/.bash_profile
ln -s /Users/$USER/dotfiles/vim/.vim ~/.vim
ln -s /Users/$USER/dotfiles/vim/.vimrc ~/.vimrc 
ln -s /Users/$USER/dotfiles/.tmux.conf ~/.tmux.conf

echo "Solarizing..."

# Setup vim Solarized colorscheme
cd ..
cp vim-colors-solarized/colors/solarized.vim ../colors

echo "Setup complete."
