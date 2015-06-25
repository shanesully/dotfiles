" 
" Wed Jun 24 15:57:54 IST 2015
" 
" sos vimrc
"
" Lean conf with sensible defaults and some cosmetics
"
" Symlink to ~/ with .vim/
"

" Disable Vi Compatability(Before anything else)
set nocompatible 

" Aliases must start with uppercase
command Vs vsplit 
command Hs split 
" Open current directory in $EDITOR
command OpenCurr :silent !open % 

" File and Syntax Settings
filetype plugin indent on " Detect the current file type and apply the appropriate indentation
syntax on " Turn on syntax highlighting

" Execute Pathogen(runtimepath manager)
execute pathogen#infect()

" Remap colon to semicolon(Saves a keystroke with most commands)
nnoremap ; :

" Remap 'Q' to nothing(Effectively disable Ex Mode)
nnoremap Q <nop>

" Stop cursor jumping when joining lines
nnoremap J mzJ`z

" Center cursor after jumping
nnoremap n nzz
nnoremap } }zz

" Easy window navigation
" CTRL + [MOTION]
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

set modelines=0 " Prevent modeline exploit
let mapleader = "," " Remap leader

" Backup and Swap Settings
set backup " Turn file backup on
set backupdir=~/.vim/.backup " Set backup directory
set directory=~/.vim/.swp " Set swapfile directory

" OS-specific Settings
if has('mac')
	set macmeta " Don't get special characters in place of meta
endif

" UI Settings - General
set nu " Enable line numbering
" Realtive numbering in Normal Mode, absolute in Insert Mode
autocmd InsertEnter * silent! :set norelativenumber
autocmd InsertLeave,BufNewFile,VimEnter * silent! :set relativenumber
set shortmess+=I " Disable startup message
set term=screen-256color " Enable 256 color mode
set background=dark " Dark theme support mode by default
colorscheme molokai " Solarized syntax theme - Source: .vim/colors
set linespace=0 " No padding between lines
set cursorline " Highlight current line
set textwidth=79 " 79 char text restriction
set colorcolumn=85 " Coloured column at 85 chars


" UI Settings - GUI-specific 
if has ('gui_running') 
	" Only select a font if a GUI is running as it will inherit from the
	" terminal emulator otherwise
	set guifont=TerminusTTF:h12 " 12pt Terminus Monospace font
	set noantialias " Turn off font antialiasing
	set lines=60 columns=180 " Large window for desktop
	
	" Change statusline colour settings based on mode
	function! InsertStatuslineColor(mode)
		if a:mode == 'i'
			hi statusline guibg=magenta
	  	elseif a:mode == 'r'
			hi statusline guibg=yellow
	  	else
			hi statusline guibg=red
	  	endif
	endfunction

	" Apply changes on mode switch
	au InsertEnter * call InsertStatuslineColor(v:insertmode)
	au InsertChange * call InsertStatuslineColor(v:insertmode)
	au InsertLeave * hi statusline guibg=green

	" Default the statusline to green when entering Vim
	hi statusline guibg=green
endif

" Display Settings
set ruler " Show cursor positional info
set title " Append buffer to Terminal name
set foldenable " Enable source code folding
set wildmenu " Use status line to show command completions
set wildmode=list:longest " Better wildmenu list
set laststatus=2 " Always show status line(Even with one window)
set lazyredraw " Redraw screen only when necessary

" Buffer Settings
set hidden " Hide unsaved buffers instead of closing them
set smartindent " Automatically guess and apply indentation
set showmatch " Show matching parens
set ttyfast " Faster scrolling
set pastetoggle=<F10> " To disable autoindent for pasting
 
" Error Settings
set noerrorbells " No audio beeping
set visualbell t_vb= " No visual beeping

" History Settings
set history=1000 " Number of history items
set undolevels=1000 " Number of undo items

" Tab and Indentation Settings
set tabstop=4 " Tabs are four spaces
set shiftwidth=4 " Shift right or left four spaces
set autoindent " Always set autoindenting on
set copyindent " Indent based on previous indent

" Search Settings
set hlsearch " Highlight search results
set incsearch " Incremental search(Highlight search results as you type)
set ignorecase " Case-insensitive search
set autoread " Auto-reload a file if it changes on disk

" Navigation Settings
set mouse=a " Allow mouse to change cursor position
set mousehide  " Hide mouse when typing
set bs=2 " Backspace over line breaks
set backspace=indent,eol,start " Allow backspacing over everything
