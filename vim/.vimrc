" sos vimrc

" Disable Vi Compatability(First and foremost)
set nocompatible

" Aliases must start with uppercase
command Vs vsplit
command Hs split

" runtimepath manager
execute pathogen#infect()

" (Modern)Mac-specific
if has("macunix")
    " Open current file with OS X default
    command OpenCurr :silent !open %
endif

if exists('g:ctrl_user_command')
    " Unlet to actually use wildignore
    unlet g:ctrl_user_command
endif

if has("autocmd")
    " Load files for specific filetypes
    filetype on
    filetype indent on
    filetype plugin on
    autocmd BufRead,BufNewFile *.json set filetype=json " Don't treat json as javascript
endif

if has("syntax")
    syntax enable " Enable syntax highlighting
    set t_Co=256 " Enable 256 colour support
    set background=dark " Set dark background - Support for dark colorschemes
endif

if has("cmdline_info")
    set ruler " Show cursor line and column info in statusbar
    set showcmd " Show partial command in statusbar
    set showmode " Show mode in statusbar
endif

if has("wildmenu")
    set wildmenu " Show a list of possible completions
    set wildmode=longest,list " Tab autocomplete longest part of string then list
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/* " MacOSX/Linux ignores
endif

if has("extra_search")
    set hlsearch " Highlight search results
    set incsearch " Incremental search(Highlight results as you type)
    set ignorecase " Case-insensitive search
endif

if has("gui_running")
    set guifont=Source\ Code\ Pro:h12 " TrueType Monospace font
    set guioptions-=r
    silent! colorscheme molokai " Molokai colorscheme
endif

if has("mouse")
    set mouse=a " Enable mouse
endif

" Disable Ex Mode
nnoremap Q <nop>
" Stop cursor jumping when joining lines
nnoremap J mzJ`z
" Center cursor after jump
nnoremap n nzz
nnoremap } }

" Better indentation
vnoremap < <gv 
vnoremap > >gv 

" tmux-like split navigation
" <C-w> + [STANDARD VIM DIRECTIONAL KEY]
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

let mapleader = "," " Remap leader
set backup " Turn file backup on
set backupdir=~/.vim/.backup " Set backup directory
set directory=~/.vim/.swp " Set swapfile directory

set history=1000 " Lots of history
set undolevels=1000 " Lots of undo levels

set splitright " vsplit right by default
set splitbelow " split down by default
set modelines=0 " Prevent modeline exploit
set nu " Enable line numbering
set foldenable " Enable source code folding
set lazyredraw " Redraw screen only when necessary
set ttyfast " Faster scrolling
set shortmess+=I " Disable startup message
set linespace=0 " No padding between lines
set cursorline " Highlight the current line
set linebreak " Soft-wrap: Don't break words
set encoding=utf8 " Encoding
set autoread " Reload a file if it changes on disk
set autowrite " Automatically :write before running commands
set hidden " Hide unsaved buffers instead of closing them

set noerrorbells " No audio beeping

" set textwidth=79 " Wrap text at 79 chars
" set colorcolumn=+1 " Color the next column(column 80)

set smartindent " Guess indentation settings
set autoindent " Indent automatically
set copyindent " Indent using previous settings
set showmatch " Show matching parens
set pastetoggle=<F10> " To disable autoindent for pasting

set expandtab " Convert tabs to spaces  
set tabstop=2 " Tabs are two spaces
set softtabstop=4 " Insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftwidth=4 " Shift moves four spaces

set mousehide " Hide the cursor when typing
set backspace=indent,eol,start " Backspace over everything in Insert Mode

set diffopt+=vertical " Always use vertical diffs
