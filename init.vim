set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

call plug#begin('~/.config/nvim/plugged')

" appearance
Plug 'altercation/vim-colors-solarized'
Plug 'nathanaelkane/vim-indent-guides'

" git
Plug 'scrooloose/nerdtree'

call plug#end()

" color scheme
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" indenting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set list

" ui config
set number
set showcmd
set cursorline
set showmatch

" navigation
set autochdir

" nerdtree
map <C-n> :NERDTreeFind<CR>
