syntax on

" user aliases - they must start with uppercase
command Vs vsplit
command Hs split
command OpenCurr :silent !open %

set nocompatible
filetype off
set tabstop=4

" auto-indent lines
set autoindent

" better searching
set hlsearch
set incsearch

" autoreload a file if it changes on disk
set autoread
set mouse=a

" Dark theme compatability
set background=dark
