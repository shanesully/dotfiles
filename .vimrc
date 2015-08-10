" sos vimrc

" Disable Vi Compatability(First and foremost)
set nocompatible

" runtimepath manager
execute pathogen#infect()

if has("autocmd")
    " Load files for specific filetypes
    filetype indent plugin on " Detect filetype, auto-indent
endif

if has("syntax")
    syntax enable " Enable syntax highlighting
    set t_Co=256 " Enable 256 colour support
    set background=dark " Set dark background
endif

if has("cmdline_info")
    set showcmd " Show partial command in statusbar
    set showmode " Show mode in statusbar
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

set guifont=Source\ Code\ Pro:h12 " Set font
silent! colorscheme solarized " Solarized colorscheme

set clipboard=unnamed " Access system clipboard

let mapleader = "," " Remap leader
set backup " Turn file backup on
set backupdir=~/.vim/.backup " Set backup directory
set directory=~/.vim/.swp " Set swapfile directory

set history=1000 " Lots of history
set undolevels=1000 " Lots of undo levels

set splitright " vsplit right by default
set splitbelow " split down by default
set diffopt+=vertical " Always use vertical diffs
set modelines=0 " Prevent modeline exploit

set number " Line numbering
set ruler " Display cursor location info
set cursorline " Highlight the current line
set noerrorbells " No audio beeping
set shortmess+=I " Disable startup message

set lazyredraw " Redraw screen only when necessary
set ttyfast " Faster scrolling
set linebreak " Soft-wrap: Don't break words
set encoding=utf8 " Unicode encoding by default
set autoread " Reload a file if it changes on disk
set autowrite " Automatically :write before running commands
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

if has('mouse')
    set mouse=a " Enable mouse
endif

set mousehide " Hide the cursor when typing
set backspace=indent,eol,start " Backspace over everything in Insert Mode
