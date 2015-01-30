set ruler


execute pathogen#infect()
"if !has('gui_running')
"    set t_Co=8 t_md=
"endif
syntax on
filetype on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
au FileType python set omnifunc=pythoncomplete#Complete
set completeopt=longest,menuone
"let g:SuperTabDefaultCompletionType = ""context"
let g:SuperTabClosePreviewOnPopupClose=1
let g:solarized_bold=0

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


nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

map <F2> :mksession! ~/vim_session <cr>
map <F3> :source ~/vim_session <cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
