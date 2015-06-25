" 
" sos vimrc
"

" Disable Vi Compatability(Before anything else)
set nocompatible 

" Aliases must start with uppercase
command Vs vsplit 
command Hs split 
" Open current directory in $EDITOR
command OpenCurr :silent !open % 

filetype plugin indent on " Detect filetype and indentation
syntax on " Syntax highlighting

execute pathogen#infect()

" Save keystrokes
nnoremap ; :
" Disable Ex Mode
nnoremap Q <nop>
" Stop cursor jumping when joining lines
nnoremap J mzJ`z
" Center cursor after jump
nnoremap n nzz
nnoremap } }zz

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

set backup " Turn file backup on
set backupdir=~/.vim/.backup " Set backup directory
set directory=~/.vim/.swp " Set swapfile directory

set history=1000 " Number of history items
set undolevels=1000 " Number of undo items

set modelines=0 " Prevent modeline exploit
let mapleader = "," " Remap leader
set nu " Enable line numbering
set ruler " Show cursor positional info
set title " Append buffer to Terminal name
set foldenable " Enable source code folding
set wildmenu " Use status line to show command completions
set wildmode=list:longest " Better wildmenu list
" set laststatus=2 " Always show status line(Even with one window)
set lazyredraw " Redraw screen only when necessary
set shortmess+=I " Disable startup message
set term=screen-256color " Enable 256 color mode
set background=dark " Dark theme support mode by default
colorscheme molokai " Solarized syntax theme - Source: .vim/colors
set linespace=0 " No padding between lines
set cursorline " Highlight current line
set textwidth=79 " 79 char text restriction
set colorcolumn=85 " Coloured column at 85 chars

if has ('gui_running') 
	" Only select a font if a GUI is running as it will inherit from the
	" terminal emulator otherwise
	set guifont=TerminusTTF " Terminus Monospace font
	set noantialias " Turn off font antialiasing
	set lines=60 columns=180 " Large window for desktop
endif

set hidden " Hide unsaved buffers instead of closing them
set smartindent " Automatically guess and apply indentation
set autoindent " Always set autoindenting on
set copyindent " Indent based on previous indent
set showmatch " Show matching parens
set ttyfast " Faster scrolling
set pastetoggle=<F10> " To disable autoindent for pasting
 
set noerrorbells " No audio beeping
set visualbell t_vb= " No visual beeping

set tabstop=4 " Tabs are four spaces
set shiftwidth=4 " Shift right or left four spaces

set hlsearch " Highlight search results
set incsearch " Incremental search(Highlight search results as you type)
set ignorecase " Case-insensitive search
set autoread " Auto-reload a file if it changes on disk

set mouse=a " Allow mouse to change cursor position
set mousehide  " Hide mouse when typing
set bs=2 " Backspace over line breaks
set backspace=indent,eol,start " Allow backspacing over everything
