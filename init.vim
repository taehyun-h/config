set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

call plug#begin('~/.config/nvim/plugged')

" appearance
Plug 'altercation/vim-colors-solarized'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
Plug 'ervandew/supertab'

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
map <C-c> "*y

" indentline
let g:indentLine_char= ''
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_color_term = 239
