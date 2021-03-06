" Don't try to be vi compatible
set nocompatible

set autoindent

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Automate vim-plug installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load plugins here
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Gruvbox setup
colorscheme darkblue
set bg=dark

" NERDTree setup
nmap <C-n> :NERDTreeToggle<CR>

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Shortcutting tab navigation to Ctrl + directional key
map <C-Left> :tabp<cr>
map <C-Right> :tabn<cr> 

" Security
set modelines=0

" Show line numbers
set number
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of annoying beeping
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Allow hidden buffers
set hidden

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd
