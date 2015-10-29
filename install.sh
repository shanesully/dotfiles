#! /bin/bash
#
# sos 
#

echo "Creating vim files..."

mkdir -p .vim/autoload .vim/bundle .vim/colors .vim/.backup .vim/.swp

echo "Installing pathogen..."

curl -LSso .vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim 

echo "Downloading plugins..."

{
    git clone https://github.com/altercation/vim-colors-solarized.git .vim/bundle/vim-colors-solarized
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
    ln -s /$DIR/$USER/dotfiles.emacs ~/
else
    echo "Symlinking aborted. Unable to detect OS."
fi

echo "Setup complete."
