" 
" sully's vimrc
"
" Lean config. Mostly just sensible defaults with
" some aliases and cosmetics.
"
" Symlink to ~/.vimrc along with .vim dir
"

" User aliases - They must start with uppercase
command Vs vsplit 
command Hs split 
command OpenCurr :silent !open % 

filetype plugin indent on " Detect the current file type and appropriate indentation
syntax on " Syntax highlighting on

" Remap 'Q' to nothing - Effectively disable Ex Mode
nnoremap Q <nop>

" Vim auto-backup to specified directories
set backup " Turn backup on
set backupdir=~/.vim/.backup " Set backup directory
set directory=~/.vim/.swp " Set swap directory

set term=screen-256color " 256 color support for terminal
set background=dark " Dark theme support mode by default
colorscheme solarized " Solarized syntax theme - Source: .vim/colors

if has("gui_running")
	colorscheme molokai	
	set guifont=Source\ Code\ Pro
	set lines=60 columns=180 linespace=0
endif

set nu " Show line numbers
set hidden " Hide unsaved buffers instead of closing them
set title " Append buffer to Terminal name
set ruler " Show cursor positional info
set bs=2 " Backspaces quicker - delete 2 characters
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
