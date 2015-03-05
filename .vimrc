" sos shitty vimrc
syntax on
" setup pathogen
execute pathogen#infect()
" generate helptags
call pathogen#helptags() 
filetype plugin indent on
" set default window size
set lines=80 columns=200
" search suck less
set hlsearch
set incsearch
set showmatch
" set font style and size
set guifont=Menlo\ Regular:h10
" case-insensitive default search
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
" gruvbox colorscheme in conjunction with backround=dark 
colorscheme gruvbox
" start nerdtree automatically
autocmd vimenter * NERDTree
set nostartofline
" enable code folding
set foldenable
set background=dark
" enable airline
set laststatus=2
" formatting option to enforce textwidth
set formatoptions+=t
" wrap lines on whitespace after 80 chars
set textwidth=80
" turn auto-indent on
set ai
" setting for auto c-style indentation
set shiftwidth=4
" small tabs
set tabstop=4
" show commands as they're typed before execution
set showcmd
" allow hiding buffers even if they're unsaved
set hidden
" don't autosave buffers
set noautowrite
" better safe than sorry - force vi compatability off
set nocompatible
" 'modern' auto-indentation for c code
set cindent
set autoindent smartindent
set scrolloff=5
" short history
set history=200
" generous undo
set undolevels =1000
" do lots of scanning on tab completion
set complete=.,w,b,u,U,t,i,d 
" fast scrolling
set ttyfast
" no visual or fucking audible beep alerts
set noerrorbells
set ff=unix
set wildmode=longest:full
set wildmenu
" uncomment to highlight current line. not sure if i like this
" set cul

" force filetype detection on
filetype plugin on
" detect the type of file you're editing
filetype on
" base auto-indentation behaviour on filetype
filetype indent on

if has("autocmd")
	filetype plugin indent on
endif

" allow vimrc auto-reloading
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
