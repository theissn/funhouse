syntax on

set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
set backspace=2

highlight Comment ctermfg=green

call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
call plug#end()
