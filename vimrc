set nocompatible              " Vim mode, not vi mode
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

call vundle#end()            " required

filetype plugin indent on    " Enable automatic settings based on file type
syntax on                    " Enable color syntax highlighting
set laststatus=2             " Display status bar at the bottom
set ruler                    " Display line and column number in status bar
set number                   " Display the line numbers.
set visualbell               " Turn sounds off.

set cursorline               " Shows a horizontal highlight on the line
                             " with the cursor.

set hlsearch                 " Activate highlighting search pattern
set incsearch                " Activate incremental search
set ignorecase               " Activate case-insensitive search
set smartcase                " Activate smart case search

set wildmenu                 " Set wildchar visual completion awesomeness.
set wildmode=full            " This is enhanced command line completion and
                                         " it rocks.

set encoding=utf-8
"set mouse=a

let mapleader = ","          " Set a more convenient leader key on an AZERTY
                             " layout than the default backslash

" Disable beep and flash
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Mappings
no <Up> <NOP>
no <Down> <NOP>
no <Left> <NOP>
no <Right> <NOP>

ino <Up> <NOP>
ino <Down> <NOP>
ino <Left> <NOP>
ino <Right> <NOP>

nnoremap <C-N> :NERDTreeToggle<CR>
noremap <leader>l :ls<CR>:b<SPACE>
nnoremap <silent> <C-l> :nohl<CR><C-l>

" F5
imap <Esc>[15~ <Esc>:w<CR>:!clear;python %<CR>
noremap <Esc>[15~ <Esc>:w<CR>:!clear;python %<CR>

" Alt-Left
noremap <Esc>[1;3C :bn<CR>
" Alt-Right
noremap <Esc>[1;3D :bp<CR>

colors jellybeans

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" Airline options
let g:airline_powerline_fonts = 1
let g:Powerline_symbols="fancy"
let g:airline#extensions#tabline#enabled = 1

" SymplyFold options
let g:SimpylFold_docstring_preview=1

" YouCompleteMe eoptions
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
