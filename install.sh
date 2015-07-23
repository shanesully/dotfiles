#! /bin/bash
#
# Wed 22 Jul 2015 14:48:06 IST
#
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
    git clone https://github.com/Valloric/YouCompleteMe
    git clone https://github.com/kien/ctrlp.vim
} &> /dev/null

echo "Installing YouCompleteMe..."

cd YouCompleteMe

{
    git submodule update --init --recursive
    ./install.sh --clang-completer
} &> /dev/null

echo "Copying Solarized..."

cd .. # .vim/bundle
cp vim-colors-solarized/colors/solarized.vim ../colors

echo "Creating symlinks..."

ln -s /Users/$USER/dotfiles/.bash_profile ~/.bash_profile
ln -s /Users/$USER/dotfiles/.tmux.conf ~/.tmux.conf
ln -s /Users/$USER/dotfiles/.vim ~/.vim
ln -s /Users/$USER/dotfiles/.vimrc ~/.vimrc 

echo "Setup complete."
