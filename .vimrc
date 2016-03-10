" sos vimrc

" Disable Vi Compatability(First and foremost)
set nocompatible

" runtimepath manager
execute pathogen#infect()

if has("autocmd")
    filetype indent plugin on " Detect filetype, auto-indent
endif

if has("syntax")
    syntax enable " Enable syntax highlighting
    set t_Co=256 " Enable 256 colour support
    set background=dark " Set dark background
    " Grey line numbers
    highlight LineNr ctermfg=grey
    colorscheme gotham
endif

if has("cmdline_info")
    set showcmd " Show info in statusbar related to current command
endif

if has("wildmenu")
    set wildmenu " Show a list of possible completions
    set wildmode=longest,list " Tab autocomplete longest part of string then list
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/* " Cache-build ignores
endif

if has("extra_search")
    set hlsearch " Highlight search results
    set incsearch " Incremental search
    set ignorecase " Case-insensitive search
endif

" Don't use Ex mode, use Q for formatting
map Q gq

" Stop cursor jumping when joining lines
nnoremap J mzJ`z

" Better indentation
vnoremap < <gv 
vnoremap > >gv 

" tmux-style split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

set clipboard=unnamed " Access system clipboard

let mapleader = "," " Remap leader

set backspace=indent,eol,start " Backspace over everything

set backupdir=~/.vim/.backup " Backups location
set directory=~/.vim/.swp " Swapfiles location

" Number of remembered items
set history=1000
set undolevels=1000

set splitright " Vertical split right by default
set splitbelow " Horizontal split down by default
set diffopt+=vertical " Veritcal diffs 
set modelines=0 " Prevent modeline exploit

set colorcolumn=120 " 120 character line marker
set laststatus=2 " Show current filename
set number " Enable line numbering
" set cursorline " Highlight the current line
set noerrorbells " Disable beep
set shortmess+=I " Disable startup message

set lazyredraw " Redraw screen only when necessary
set ttyfast " Faster scrolling
set linebreak " Soft-wrap: Don't break words
set encoding=utf8 " Unicode by default
set autoread " Reload a file if it changes on disk
set autowrite " Automatically save before running commands
set hidden " Hide unsaved buffers instead of closing them

set smartindent " Guess indentation settings
set autoindent " Indent automatically
set copyindent " Indent using previous settings

set showmatch " Show matching parens
set pastetoggle=<F10> " To disable autoindent for pasting

set expandtab " Convert tabs to spaces  
set tabstop=4 " Tabs are four spaces
set softtabstop=4 " Insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftwidth=4 " Shift moves four spaces

set mousehide " Hide the cursor when typing

