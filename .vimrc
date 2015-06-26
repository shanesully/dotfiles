" 
" sos vimrc
"

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
    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }
endif

" Remove a keystroke from Command Mode
nnoremap ; :
" Disable Ex Mode
nnoremap Q <nop>
" Stop cursor jumping when joining lines
nnoremap J mzJ`z
" Center cursor after jump
nnoremap n nzz
nnoremap } }
" Ctrl-T goes to next tab
nmap <C-T> <ESC>:tabn<CR>

" Easy window navigation
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
set title " Append buffer to Terminal name
set foldenable " Enable source code folding
set wildmenu " Use status line to show command completions
set wildmode=list:longest " Better wildmenu list
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " MacOSX/Linux ignores
set lazyredraw " Redraw screen only when necessary
set shortmess+=I " Disable startup message
set term=xterm-256color " Enable 256 color mode
set background=dark " Dark theme support mode by default
colorscheme molokai " Molokai theme
set laststatus=2 " Show statusline with current file
set linespace=0 " No padding between lines
set cursorline " Highlight current line
set textwidth=79 " 79 char text restriction
set formatoptions+=t " Wrap text as close to 79 chars
set colorcolumn=85 " Draw line length indicator
set guifont=TerminusTTF:h12 " Terminus Monospace font
set noantialias " Font antialiasing
set lines=50 columns=160 " Window size

set hidden " Hide unsaved buffers instead of closing them
set smartindent " Automatically guess and apply indentation
set autoindent " Always set autoindenting on
set copyindent " Indent based on previous indent
set showmatch " Show matching parens
set ttyfast " Faster scrolling
set pastetoggle=<F10> " To disable autoindent for pasting
 
set noerrorbells " No audio beeping
set visualbell t_vb= " No visual beeping

set expandtab " Default to soft tab
set tabstop=4 " Tabs are four spaces
set shiftwidth=4 " Shift right or left four spaces

set hlsearch " Highlight search results
set incsearch " Incremental search(Highlight search results as you type)
set ignorecase " Case-insensitive search
set autoread " Auto-reload a file if it changes on disk

set mouse=a " Allow mouse to change cursor position
set mousehide  " Hide mouse when typing
set bs=2 " Allow backspacing over linebreak
