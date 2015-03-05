" sos shitty vimrc
syntax on
" setup pathogen
execute pathogen#infect()
" generate helptags
call pathogen#helptags() 
" include all plugins under ~/.vim/bundle
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
"search suck less
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase
" tasteful indent
set softtabstop=4
" line numbers
set nu
" get rid of ex mode forever
noremap Q <nop>
" no -n recursive, map keys
" essential: huge productivity gains
nore ; :
nore , ;
colorscheme gruvbox
" start nerdtree automatically
autocmd vimenter * NERDTree
set nostartofline
" enable code folding
set foldenable
set background=dark
" enable airline
set laststatus=2
set textwidth=80
set ai
set shiftwidth=2
set tabstop=4
set showcmd
set hidden
set noautowrite
set nocompatible
set autoindent smartindent
set scrolloff=5
set history=200
set undolevels=1000
" do lots of scanning on tab completion
set complete=.,w,b,u,U,t,i,d 
set ttyfast
set noerrorbells
set ff=unix
set wildmode=longest:full
set wildmenu
" uncomment to underline cursor line. not sure about it yet
" set cul

filetype on
filetype indent on
filetype plugin on

if has("autocmd")
	filetype plugin indent on
endif
