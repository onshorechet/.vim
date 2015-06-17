execute pathogen#infect()
syntax on
filetype plugin indent on

call pathogen#helptags()

let g:vdebug_options = {}
let g:vdebug_options["port"] = 9000
let g:vdebug_options['server'] = ''
let g:vdebug_options['break_on_open'] = '0'
let g:vdebug_options['watch_window_style'] = 'compact'

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

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" Set delay to prevent extra search
let g:ctrlp_lazy_update = 350

" Do not clear filenames cache, to improve CtrlP startup
" You can manualy clear it by <F5>
let g:ctrlp_clear_cache_on_exit = 0

" Set no file limit, we are building a big project
let g:ctrlp_max_files = 0

" If ag is available use it as filename list generator instead of 'find'
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'
endif
let g:airline#extensions#tabline#enabled = 1

set wildchar=<tab></tab>
set complete-=k complete+=k
