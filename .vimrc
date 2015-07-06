" sos vimrc

" Disable Vi Compatability(First and foremost)
set nocompatible

" Aliases must start with uppercase
command Vs vsplit
command Hs split

filetype plugin indent on " Detect filetype and indentation
syntax on " Syntax highlighting

" runtimepath manager
execute pathogen#infect()

" (Modern)Mac-specific
if has("macunix")
    " Open current file with OS X default
    command OpenCurr :silent !open %
endif

if exists(':CtrlP')
    " <C-p> invokes CtrlP
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'

    " Ignores to speed up CtrlP cacheing and startup
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }
endif

" Disable Ex Mode
nnoremap Q <nop>
" Stop cursor jumping when joining lines
nnoremap J mzJ`z
" Center cursor after jump
nnoremap n nzz
nnoremap } }

" tmux-like split pane navigation
" <C-w> + [DIRECTION]
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
set modelines=0 " Prevent modeline exploit
set nu " Enable line numbering
set ruler " Show cursor positional info
set foldenable " Enable source code folding
set wildmenu " Use status line to show command completions
set wildmode=list:longest " Better wildmenu list
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " MacOSX/Linux ignores
set lazyredraw " Redraw screen only when necessary
set ttyfast " Faster scrolling
set shortmess+=I " Disable startup message
set term=xterm-256color " Enable 256 color mode
set background=dark " Dark theme support mode by default
colorscheme solarized " Solarized theme
set linespace=0 " No padding between lines
set cursorline " Highlight the current line
set linebreak " Soft-wrap: Don't break words
set anti enc=utf-8 " Encoding
set guifont=Source\ Code\ Pro\ 11 " Monospace font

set hidden " Hide unsaved buffers instead of closing them
set smartindent " Guess indentation settings
set autoindent " Indent automatically
set copyindent " Indent using previous settings
set showmatch " Show matching parens
set pastetoggle=<F10> " To disable autoindent for pasting

set noerrorbells " No audio beeping

set expandtab " Convert tabs to spaces  
set tabstop=4 " Tabs are four spaces
set shiftwidth=4 " Shift moves four spaces

set hlsearch " Highlight search results
set incsearch " Incremental search(Highlight results as you type)
set ignorecase " Case-insensitive search
set autoread " Reload a file if it changes on disk

set mouse=a " Allow mouse to change cursor position
set mousehide  " Hide the cursor when typing
set bs=2 " Backspace can move over newlines
