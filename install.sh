#! /bin/bash

echo "Creating vim files..."
mkdir -p vim/.vim/autoload vim/.vim/bundle vim/.vim/colors vim/.vim/.backup vim/.vim/.swp

echo "Installing pathogen..."
curl -LSso vim/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim 

echo "Downloading plugins..."
cd vim/.vim/bundle
{
git clone https://github.com/altercation/vim-colors-solarized
git clone https://github.com/Valloric/YouCompleteMe
git clone https://github.com/kien/ctrlp.vim
} &> /dev/null

echo "Installing YouCompleteMe..."
{
cd YouCompleteMe;git submodule update --init --recursive;./install.sh --clang-completer
} &> /dev/null

echo "Creating symlinks..."
ln -s /Users/$USER/dotfiles/shell/.bash_profile ~/.bash_profile
ln -s /Users/$USER/dotfiles/vim/.vim ~/.vim
ln -s /Users/$USER/dotfiles/vim/.vimrc ~/.vimrc 
ln -s /Users/$USER/dotfiles/.tmux.conf ~/.tmux.conf

echo "Copying Solarized..."
cd ..;cp vim-colors-solarized/colors/solarized.vim ../colors

echo "Setup complete."
