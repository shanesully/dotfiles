"sos shitty vimrc
syntax on
"search suck less
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase
"tasteful indent
set tabstop=4
"line numbers
set nu
"no -n recursive, map keys
"essential: huge productivity gains
nore ; :
nore , ;
set nostartofline
set textwidth=80
set ruler
set ai
set background=dark
set shiftwidth=2
set tabstop=4
set showcmd
set hidden
set noautowrite
set lazyredraw
set nocompatible
set autoindent smartindent
set scrolloff=5
set history=200
set undolevels=1000
set complete=.,w,b,u,U,t,i,d " do lots of scanning on tab completion
set ttyfast
set noerrorbells
set ff=unix
set wildmode=longest:full
set wildmenu
"uncomment to underline cursor line. not sure about it yet
"set cul

filetype on
filetype indent on
filetype plugin on

if has("autocmd")
	filetype plugin indent on
endif
