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

cd .vim/bundle

{
    git clone https://github.com/altercation/vim-colors-solarized
} &> /dev/null

echo "Copying colorschemes..."

cd .. # .vim/bundle
cp vim-colors-solarized/colors/solarized.vim ../colors

echo "Creating symlinks..."

ln -s /Users/$USER/dotfiles/.bash_profile ~/
ln -s /Users/$USER/dotfiles/.tmux.conf ~/
ln -s /Users/$USER/dotfiles/.vim ~/
ln -s /Users/$USER/dotfiles/.vimrc ~/

echo "Setup complete."
