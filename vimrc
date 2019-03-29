syntax on
colorscheme monokai

filetype plugin indent on

set tabstop=4
set expandtab
set autoindent 
set shiftwidth=4
set ruler
set number
set backspace=indent,eol,start
set visualbell
set encoding=utf-8
set number relativenumber

" Remap ESC to kj
inoremap kj <esc>
cnoremap kj <C-C>

" NERDTree
"au VimEnter *  NERDTree
function! StartUp()
    " If no file is specified when running Vim, automatically open NERDTree
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()

let NERDTreeIgnore = ['\.pyc$',
                     \'.*__pycache__.*',
                     \'.*egg-info',
                     \'venv',
                     \'^dist$',
                     \'^\.git$',
                     \'^\.cache$',
                     \'^\.hypothesis$',
                     \'^\.tox$',
                     \'^\.pytest_cache$']

let NERDTreeShowHidden=1
