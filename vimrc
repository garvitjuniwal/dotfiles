set ruler


execute pathogen#infect()
"if !has('gui_running')
"    set t_Co=8 t_md=
"endif
syntax on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
au FileType python set omnifunc=pythoncomplete#Complete
set completeopt=longest,menuone

let mapleader=","

" ------------------------------------------------------------------
" Solarized Colorscheme Config
" ------------------------------------------------------------------
" let g:solarized_visibility="high"    "default value is normal
" let g:solarized_hitrail=1    "default value is 0
" syntax enable
" set background=dark
" colorscheme solarized
" ------------------------------------------------------------------
"Setup term color support
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
  endif
colo seoul256
set background=dark

set tabstop=2
set shiftwidth=2
set expandtab
set textwidth=80
set nu
set clipboard=unnamed
set foldmethod=syntax
set foldlevel=99


" nmap <S-Enter> O<Esc>
" nmap <CR> o<Esc>

map <F2> :mksession! ~/.vim_session <cr>
map <F3> :source ~/.vim_session <cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <leader>. :CtrlPTag<cr>

let g:ctrlp_extensions = ['tag']

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*/build/*     " Linux/MacOSX

let g:ctrlp_working_path_mode = 'a'
set hlsearch

" Mouse {{{
" Send more characters for redraws
set ttyfast
 
" Enable mouse use in all modes
set mouse=a
 
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=sgr
" }}}

:set tags=./tags;
