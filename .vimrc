set t_Co=256

set nocp
call pathogen#infect('~/.vim/bundle/drupalvim/bundle/{}')
execute pathogen#infect()
syntax on
filetype plugin indent on

set nobackup
set nowritebackup
set noswapfile
            set clipboard=unnamedplus

call pathogen#helptags()

let g:vdebug_options = {}
let g:vdebug_options["port"] = 9000
let g:vdebug_options['server'] = ''
let g:vdebug_options['break_on_open'] = '0'
let g:vdebug_options['watch_window_style'] = 'compact'
let g:vdebug_options['watch_window_height'] = 100
let g:vdebug_options['continuous_mode'] = '1'
let g:vdebug_features = {}
"let g:vdebug_features['max_data'] = 2048000"
"let g:vdebug_features['max_depth'] = 2048000"
"let g:vdebug_features['max_children'] = 2048000"
let g:vdebug_features['show_hidden'] = 1
let g:vdebug_features['multiple_sessions'] = 0
let g:vdebug_force_ascii = 2
let g:vdebug_options["marker_default"] = '*'
let g:vdebug_options["marker_closed_tree"] = '+'
let g:vdebug_options["marker_open_tree"] = '-'

set number
set ruler
set encoding=utf-8
set t_Co=256

set lazyredraw
set ttyfast
au BufNewFile,BufRead *.zep setf zep

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set nowrap
set mouse=a

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

" let g:agprg="ag -G --vimgrep"

autocmd FileType java setlocal omnifunc=javacomplete#Complete

let g:android_sdk_path = "/home/henry/Android/Sdk"

let g:JavaComplete_Home = $HOME . '/.vim/bundle/vim-javacomplete2'
let $CLASSPATH .= '.:' . $HOME . '/.vim/bundle/vim-javacomplete2/lib/javavi/target/classes'

let g:jsx_ext_required = 0

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

" for command mode
nnoremap <S-Tab> <<
nnoremap <Tab> >>
" for insert mode
inoremap <S-Tab> <C-d>

vmap <Tab> >>
vmap <S-Tab> <<
vnoremap < <gv
vnoremap > >gv
autocmd VimEnter * call StartUp()
