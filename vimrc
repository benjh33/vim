" acivate pathogen
execute pathogen#infect()
" map 'jk' to the escape key to get out of insert
inoremap jk <ESC>
" I guess this changes the key before shortcuts to <space> instead of \
let mapleader = "\<Space>"
set encoding=utf-8
"
" Douglas Black
" Colors {{{
syntax enable           " enable syntax processing
colorscheme torte
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

" setting tab widths
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype js setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype es6 setlocal ts=2 sts=2 sw=2 expandtab

" get rid of preview screen for autocomplete
set completeopt-=preview

" Add the virtualenv's site-packages to vim path
if has('python')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir,
        'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

" javascript syntax
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
" set foldmethod=syntax
let g:javascript_plugin_flow = 1
let g:typescript_indent_disable = 1

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
autocmd FileType typescript JsPreTmpl html;
