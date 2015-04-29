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

"Setup term color support
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
  endif
let g:seoul256_background=235
colo seoul256
set background=dark

" let g:solarized_termcolors=256
" let g:solarized_visibility=high
" set background=dark
" colorscheme solarized

au FileType cpp setlocal tabstop=2 shiftwidth=2
au FileType python setlocal tabstop=4 shiftwidth=4
set tabstop=4 shiftwidth=4
set expandtab
set textwidth=80
set colorcolumn=+1
set nu
set clipboard=unnamed
set foldmethod=syntax
set foldlevel=99
set ignorecase
set smartcase

" nmap <S-Enter> O<Esc>
" nmap <CR> o<Esc>

map <F2> :mksession! ~/.vim_session <cr>
map <F3> :source ~/.vim_session <cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=1  
let g:ycm_show_diagnostics_ui=1
" au FileType cpp let g:ycm_auto_trigger = 0
" au FileType cpp let g:ycm_min_num_of_chars_for_completion = 4

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'
nnoremap <leader>t :CtrlPTag<cr>

let g:ctrlp_extensions = ['tag']

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*/build/*     " Linux/MacOSX

let g:ctrlp_working_path_mode = 'a'
set hlsearch
set incsearch

" Mouse {{{
" Send more characters for redraws
set ttyfast
 
" Enable mouse use in all modes
set mouse=a
 
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=sgr
" }}}

set tags=./tags;
set timeoutlen=1000 ttimeoutlen=100

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e

set noswapfile

if has('statusline')
  set laststatus=2
  set statusline=%<%f\    " Filename
  set statusline+=%w%h%m%r " Options
  " set statusline+=%{fugitive#statusline()} "  Git Hotness
  set statusline+=%#warningmsg#
  set statusline+=%*
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
