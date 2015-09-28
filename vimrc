" Activate all the handy Windows key-bindings we're used to.
"source $VIMRUNTIME/mswin.vim

" Display status bar at the bottom
set laststatus=2

" Display line and column number in bottom ruler.
set ruler

" Display the line numbers.
set number

" Turn sounds off.
set visualbell

" Shows a horizontal highlight on the line with the cursor.
"set cursorline

" Activate syntax highlighting.
syntax enable

" Activate highlighting search pattern matches & incremental search.
" Incremental search means your cursor will jump to the first match as you
" type.
set hlsearch
set incsearch

" Allow using  to kill the current search highlighting.
"nnoremap   :nohlsearch

" Activate case-insensitive & smart case search (if a capital letter is used
" in your search query, Vim will search case-sensitive).
set ignorecase 
set smartcase

" Set wildchar visual completion awesomeness.
" This is enhanced command line completion and it rocks.
set wildmenu 
set wildmode=full

" Turning on line wrapping and line-break for easy text-file editing.
" Line-break wraps full words at the end of a sentence for readability.
"set wrap
"set linebreak

" Set a nice theme.
color deepsea

if has("gui_running")
  " Set a nicer font.
  set guifont=Consolas:h10:cDEFAULT
  " Hide the toolbar.
  set guioptions-=T
  " Remove right-hand scroll bar
  "set guioptions-=r
  "set guioptions-=m  "remove menu bar
  "set guioptions-=L  "remove left-hand scroll bar

  " Set heigth and width
  set lines=30 columns=120
endif

" Use unicode/utf-8 encoding by default for keyboard, display and files.
"set encoding=utf-8

" Set a more convenient leader key on an AZERTY layout than the default backslash
let mapleader = ","

" Programming

" Set tabs to 4 characters and expand to spaces, activate smart indentation.
" See tabstop help for more info.
" Setting tabstop & softtabstop to the same value to avoid messy layout with mixed tabs & spaces.
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4
"set expandtab
"set smartindent

" Enabled folding on indent level. That way it works on any code & html, xml
" etc. 
" Setting foldlevelstart ensures that for newly opened files folds are open
" unless they are 10 levels deep.
"set foldmethod=indent
"set foldenable
"set foldlevelstart=10
"set foldnestmax=10      " no more than 10 fold levels please

" Unmap the arrow keys
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>

no <Up> <NOP>
no <Down> <NOP>
no <Left> <NOP>
no <Right> <NOP>

ino <Up> <NOP>
ino <Down> <NOP>
ino <Left> <NOP>
ino <Right> <NOP>

