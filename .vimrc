" User aliases - They must start with uppercase
command Vs vsplit
command Hs split
command OpenCurr :silent !open %

filetype plugin indent on " Detect the current file type
syntax on " Syntax highlighting

" Effectively disable Ex Mode
nnoremap Q <nop>

set hidden " Hide unsaved buffers instead of closing them
set title " Append buffer to Terminal name

" Vim auto-backup to specified directories
set backup " Turn backup on
set backupdir=~/.vim/.backup " Set backup directory
set directory=~/.vim/.swp " Set swap directory

set lazyredraw " Redrawn the buffer only when needed
set term=screen-256color " 256 color support for terminal
set background=dark " Dark theme mode by default
colorscheme solarized " Solarized syntax theme - Source: .vim/colors

set ignorecase " Case-insensitive search
set nocompatible " Disable Vi compatability
set backspace=indent,eol,start " Allow backspacing over everything
set autoindent " Always set autoindenting on
set copyindent " Indent based on previous indent
set smartindent " Automatically guess and apply indentation
set showmatch " Show matching parens
set noerrorbells " No audio beeping
set history=1000 " Long history
set undolevels=1000 " Long undo history 
set tabstop=4 " Tabs are four spaces
set shiftwidth=4 " Shift right or left four spaces
set hlsearch " Highlight search results
set incsearch " Incremental search - Highlight as you type
set autoread " Auto-reload a file if it changes on disk
set nu " Show line numbers
