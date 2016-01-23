" acivate pathogen
execute pathogen#infect()
" map 'jk' to the escape key to get out of insert
inoremap jk <ESC>
" I guess this changes the key before shortcuts to <space> instead of \
let mapleader = "\<Space>"
set encoding=utf-8

" Douglas Black
" Colors {{{
syntax enable           " enable syntax processing
colorscheme badwolf
" }}}
" Misc {{{
set ttyfast                     " faster redraw
set backspace=indent,eol,start
" }}}

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set cursorline
set modelines=1
filetype indent plugin on
set autoindent
nmap <F7> :tabp <CR>
nmap <F8> :tabn <CR>


