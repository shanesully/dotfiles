set nocompatible
set encoding=utf-8
set fileencoding=utf-8

filetype plugin indent on
syntax on

set number
set ruler
set cursorline
set cursorlineopt=number
set scrolloff=5
set wildmenu
set hidden
set undofile

highlight LineNr ctermfg=DarkGray
highlight CursorLineNr ctermfg=Yellow

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent
set backspace=indent,eol,start

set mouse=a
set showmatch

set incsearch
set hlsearch
set ignorecase
set smartcase

set splitbelow
set splitright

" use system clipboard when available
if has('clipboard')
  set clipboard=unnamedplus
endif

let mapleader=" "
nnoremap <leader><space> :nohlsearch<CR>
