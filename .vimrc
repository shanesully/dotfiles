" User aliases - They must start with uppercase
command Vs vsplit
command Hs split
command OpenCurr :silent !open %

filetype plugin indent on " Detect the current file type
syntax on " Syntax highlighting

set noswapfile " Disable swap files 
set term=screen-256color " Use 256 colors for terminal
set guifont=Source\ Code\ Pro " Set font
set background=dark " Theme settings
colorscheme solarized

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
