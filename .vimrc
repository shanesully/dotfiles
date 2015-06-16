" User aliases - They must start with uppercase
command Vs vsplit
command Hs split
command OpenCurr :silent !open %

filetype plugin indent on " Detect the current file type
syntax on " Syntax highlighting

set hidden " Hide unsaved buffers instead of closing them

" Vim auto-backup stuff
set backup " Turn backup on
set backupdir=~/.vim/.backup " Backup directory
set directory=~/.vim/.swp " Swap directory

set lazyredraw " Redrawn only when needed
set term=screen-256color " Use 256 colors for terminal
set background=dark " Theme settings
colorscheme solarized " Solarized syntax theme - in .vim/colors

set ignorecase " Ignore search case by default
set nocompatible " Disable Vi compatability
set backspace=indent,eol,start " Allow backspacing over everything
set autoindent " Always set autoindenting on
set copyindent " Indent based on previous indent
set showmatch " Show matching parens
set noerrorbells " No beeping
set history=1000 " Long history
set undolevels=1000 " Long undo history 
set tabstop=4 " Tabs are four spaces
set autoindent " Auto-indent lines
set hlsearch " Highlight search results
set incsearch " Incremental search - Highlight as you type
set autoread " Autoreload a file if it changes on disk
set mouse=a " Allow mouse to set cursor position
set nu " Show line numbers
