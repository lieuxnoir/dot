call plug#begin('~/.config/nvim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'nightsense/cosmic_latte'
call plug#end()

syntax enable
filetype plugin indent on

set number relativenumber
set tabstop=4
set shiftwidth=4
set clipboard+=unnamedplus

set termguicolors
set background=dark
colorscheme cosmic_latte
let g:lightline = { 'colorscheme': 'cosmic_latte_dark' }
highlight Normal guibg=none
