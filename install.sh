#! /bin/bash
#
# Tue  4 Aug 2015 14:26:48 IST
# sos 
#

echo "Creating vim files..."

mkdir -p .vim/autoload .vim/bundle .vim/colors .vim/.backup .vim/.swp

echo "Installing pathogen..."

curl -LSso .vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim 

echo "Downloading plugins..."

{
    git clone https://github.com/altercation/vim-colors-solarized .vim/bundle/
} &> /dev/null

echo "Symlinking colorschemes..."

ln -s .vim/bundle/vim-colors-solarized/colors/solarized.vim .vim/colors/

echo "Creating symlinks..."

if [ "$(uname)" == "Darwin" ]; then
    DIR="Users"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    DIR="home"
else
    DIR=""
fi

if [ -n "$DIR" ]; then 
    ln -s /$DIR/$USER/dotfiles/.bash_profile ~/
    ln -s /$DIR/$USER/dotfiles/.tmux.conf ~/
    ln -s /$DIR/$USER/dotfiles/.vim ~/
    ln -s /$DIR/$USER/dotfiles/.vimrc ~/
else
    echo "Symlinking aborted. Unable to detect OS."
fi

echo "Setup complete."
