execute pathogen#infect()
syntax on
filetype plugin indent on

call pathogen#helptags()

let g:vdebug_options = {}
let g:vdebug_options["port"] = 9000
let g:vdebug_options['server'] = ''

set number
set ruler
syntax on
set encoding=utf-8
set t_Co=256

set lazyredraw
set ttyfast
au BufNewFile,BufRead *.zep setf zep

set tabstop=4
set shiftwidth=4
set expandtab
