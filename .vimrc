" Detect the current file type
filetype plugin on
" Syntax highlighting
syntax on

" User aliases - They must start with uppercase
command Vs vsplit
command Hs split
command OpenCurr :silent !open %

" Disable Vi compatability
set nocompatible
" Tabs are four spaces
set tabstop=4

" Auto-indent lines
set autoindent

" Better searching
set hlsearch
set incsearch

" Autoreload a file if it changes on disk
set autoread
" Allow mouse to set cursor position
set mouse=a

" Theme settings
set background=dark
colorscheme solarized
set guifont=Source\ Code\ Pro
