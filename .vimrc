" sweet plugin site
" http://vimawesome.com/

syntax on " obvious
set nocompatible              " be iMproved, required
filetype off                  " required
set tabstop=4
" line-wrapping breaks aesthetic
" set nowrap

" autoreload a file if it changes on disk
set autoread
" autoreload .vimrc changes 
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

colorscheme gruvbox
set background=dark
if has('gui_running')
  set guifont=ProggyTiny
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"  Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"  Plugin 'L9'
" Git plugin not hosted on GitHub
"  Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"  Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"  Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"  Plugin 'user/L9', {'name': 'newL9'}

" user-added plugins
" a Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'
" A tree explorer plugin for Vim.
Plugin 'scrooloose/nerdtree'
" Fuzzy file, buffer, mru, tag, etc finder
Plugin 'kien/ctrlp.vim'
" lean & mean status/tabline for vim that's light as air
Plugin 'bling/vim-airline'
" A vim plugin which shows a git diff in the gutter (side column) and
" stages/reverts hunks
Plugin 'airblade/vim-gitgutter'
" one stop shop for vim colorschemes.
Plugin 'flazz/vim-colorschemes'
" best theme ever (y)
Plugin 'morhetz/gruvbox'
" obvious..
Plugin 'bronson/vim-trailing-whitespace'
" visual indent guides
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
