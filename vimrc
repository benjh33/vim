" map 'jk' to the escape key to get out of insert
inoremap jk <ESC>
" I guess this changes the key before shortcuts to <space> instead of \
let mapleader = "\<Space>"

set encoding=utf-8

set expandtab
set shiftwidth=2
set softtabstop=4
set cursorline
syntax on
filetype indent plugin on
nmap <F7> :tabp <CR>
nmap <F8> :tabn <CR>


