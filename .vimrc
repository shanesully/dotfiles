" 
" sully's vimrc
"
" Lean config. Mostly just sensible defaults with
" some aliases and cosmetics.
"
" Symlink to ~/.vimrc along with .vim dir
"

" Disable Vi compatability
" 
"  - This should come first as it will effect other settings
"
set nocompatible 

" User aliases - They must start with uppercase
command Vs vsplit 
command Hs split 
command OpenCurr :silent !open % 

filetype plugin indent on " Detect the current file type and appropriate indentation
syntax on " Syntax highlighting on

" Enable pathogen package(runtimepath) manager
execute pathogen#infect()

" Remap 'Q' to nothing - Effectively disable Ex Mode
nnoremap Q <nop>

" Vim auto-backup to specified directories
set backup " Turn backup on
set backupdir=~/.vim/.backup " Set backup directory
set directory=~/.vim/.swp " Set swap directory

if has('mac')
	set macmeta " Don't get special characters in place of meta
endif

if has ('gui_running')
	colorscheme molokai	
	set guifont=Source\ Code\ Pro
	set lines=60 columns=180 linespace=0
else
	set term=screen-256color " Enable 256 color mode
	set background=dark " Dark theme support mode by default
	colorscheme solarized " Solarized syntax theme - Source: .vim/colors
endif

set nu " Show line numbers
set hidden " Hide unsaved buffers instead of closing them
set title " Append buffer to Terminal name
set ruler " Show cursor positional info
set bs=2 " Backspace over line breaks
set ignorecase " Case-insensitive search
set backspace=indent,eol,start " Allow backspacing over everything
set autoindent " Always set autoindenting on
set copyindent " Indent based on previous indent
set lazyredraw " Redraw screen only when necessary
set smartindent " Automatically guess and apply indentation
set showmatch " Show matching parens
set noerrorbells " No audio beeping
set history=1000 " Number of history items
set undolevels=1000 " Number of undo items
set tabstop=4 " Tabs are four spaces
set shiftwidth=4 " Shift right or left four spaces
set hlsearch " Highlight search results
set incsearch " Incremental search - Highlight as you type
set autoread " Auto-reload a file if it changes on disk
set mouse=a " Allow mouse to change cursor position
set mousehide  " Hide mouse when typing
set foldenable " Enable source code folding
set wildmenu " Use status line to show command completions
set laststatus " Always show status line - Even with one window
