" 
" sully's vimrc
"
" Lean config. Mostly just sensible defaults with
" some aliases and cosmetics.
"
" Symlink to ~/.vimrc along with .vim dir
"

" Disable Vi compatability - Should be first
set nocompatible 

" Aliases - Must start with uppercase
command Vs vsplit 
command Hs split 
command OpenCurr :silent !open % 

" File and syntax
filetype plugin indent on " Detect the current file type and appropriate indentation
syntax on " Syntax highlighting on

" Execute Pathogen - package(runtimepath) manager
execute pathogen#infect()

" Remap 'Q' to nothing - Effectively disable Ex Mode
nnoremap Q <nop>

" Backup and swap settings
set backup " Turn backup on
set backupdir=~/.vim/.backup " Set backup directory
set directory=~/.vim/.swp " Set swap directory

" OS-specific settings
if has('mac')
	set macmeta " Don't get special characters in place of meta
endif

" UI settings - Graphical
if has ('gui_running')
	colorscheme molokai	
	set guifont=ProggyTiny
	set lines=60 columns=180 linespace=0
"
" UI settings - Terminal
else
	set term=screen-256color " Enable 256 color mode
	set background=dark " Dark theme support mode by default
	colorscheme solarized " Solarized syntax theme - Source: .vim/colors
endif

" Display settings
set nu " Show line numbers
set ruler " Show cursor positional info
set title " Append buffer to Terminal name
set foldenable " Enable source code folding
set wildmenu " Use status line to show command completions
set laststatus " Always show status line - Even with one window
set lazyredraw " Redraw screen only when necessary

" Buffer settings
set hidden " Hide unsaved buffers instead of closing them
set smartindent " Automatically guess and apply indentation
set showmatch " Show matching parens
 
" Error reporting
set noerrorbells " No audio beeping

" History settings
set history=1000 " Number of history items
set undolevels=1000 " Number of undo items

" Tab and indentation settings
set tabstop=4 " Tabs are four spaces
set shiftwidth=4 " Shift right or left four spaces
set autoindent " Always set autoindenting on
set copyindent " Indent based on previous indent

" Search settings
set hlsearch " Highlight search results
set incsearch " Incremental search - Highlight as you type
set ignorecase " Case-insensitive search
set autoread " Auto-reload a file if it changes on disk

" Navigation
set mouse=a " Allow mouse to change cursor position
set mousehide  " Hide mouse when typing
set bs=2 " Backspace over line breaks
set backspace=indent,eol,start " Allow backspacing over everything
