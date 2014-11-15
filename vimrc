set ruler


execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
au FileType python set omnifunc=pythoncomplete#Complete
set completeopt=longest,menuone
"let g:SuperTabDefaultCompletionType = ""context"
let g:SuperTabClosePreviewOnPopupClose=1

let g:solarized_contrast = "high"
let mapleader=","

colorscheme solarized
    set background=dark

set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=80
set nu
set clipboard=unnamed
set foldmethod=indent
set foldlevel=99


vmap <Enter> <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)

let g:syntastic_enable_matlab_checker = 1
let g:syntastic_matlab_checkers = ['mlint']

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
