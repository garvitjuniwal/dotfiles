set ruler


execute pathogen#infect()
"if !has('gui_running')
"    set t_Co=8 t_md=
"endif
syntax on
let delimitMate_expand_cr = 1
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
au FileType python set omnifunc=pythoncomplete#Complete
set completeopt=longest,menuone

let mapleader=" "

"Setup term color support
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif
" let g:seoul256_background=236
" colo seoul256
" set background=dark

" let g:solarized_termcolors=234
" let g:solarized_visibility=high
" set background=dark
" colorscheme solarized

" Solarized stuff
let g:solarized_termtrans = 1
let g:solarized_contrast="high"
let g:solarized_visibility="high"
set background=dark
colorscheme solarized

au FileType cpp setlocal tabstop=2 shiftwidth=2 textwidth=80
au FileType json setlocal tabstop=2 shiftwidth=2 textwidth=10000
au FileType yaml setlocal tabstop=2 shiftwidth=2 textwidth=80
au FileType python setlocal tabstop=4 shiftwidth=4 textwidth=79
set tabstop=4 shiftwidth=4
set expandtab
set textwidth=80
set colorcolumn=+1

set ignorecase
set smartcase
set pumheight=15
set nonu

" nmap <S-Enter> O<Esc>
" nmap <CR> o<Esc>

map <F2> :mksession! ~/.vim_session <cr>
map <F3> :source ~/.vim_session <cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui=0
let g:ycm_confirm_extra_conf = 0
" let g:ycm_filetype_blacklist={'python': 1}
" au FileType cpp let g:ycm_auto_trigger = 0
" au FileType cpp let g:ycm_min_num_of_chars_for_completion = 4

" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlPBuffer'
" nnoremap <leader>t :CtrlPTag<cr>
" 
" let g:ctrlp_extensions = ['tag']
" 
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*/cpp/build/*,*/web/build/*,*/py/build/*,*.class,*src/web/*     " Linux/MacOSX
" 
" let g:ctrlp_working_path_mode = 'a'
" let g:ctrlp_custom_ignore = 'log.txt'
" let g:ctrlp_max_files = 200000
" let g:ctrlp_max_depth = 40
" call ctrlp_bdelete#init()
set nohlsearch
set incsearch
set nofoldenable

" " Mouse {{{
" " Send more characters for redraws
" set ttyfast
"  
" " Enable mouse use in all modes
" set mouse=a
"  
" " Set this to the name of your terminal that supports mouse codes.
" " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
" set ttymouse=sgr
" " }}}

set tags=./tags;
set timeoutlen=1000 ttimeoutlen=100

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre *.scala :%s/\s\+$//e
autocmd BufWritePre *.json :%s/\s\+$//e
autocmd BufWritePre *.yaml :%s/\s\+$//e

set noswapfile
set spell

if has('statusline')
  set laststatus=2
  set statusline=%<%f\    " Filename
  set statusline+=%w%h%m%r " Options
  set statusline+=%{fugitive#statusline()} "  Git Hotness
  set statusline+=%#warningmsg#
  set statusline+=%*
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" Rainbow parenthesis
let g:rbpt_colorpairs = [
    \ ['darkgreen', 'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ]
let g:rbpt_max = 3
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" thrift
au BufRead,BufNewFile *.thrift set filetype=thrift
au! Syntax thrift source ~/.vim/thrift.vim

" yaml
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

" python mode settings
let g:pymode_rope=0
let g:pymode_options=0
let g:pymode_folding=0
let g:pymode_rope_lookup_project = 0
let g:pymode_doc = 0
let g:pymode_run = 0
let g:pymode_lint_checkers = ['pep8']
let g:pymode_breakpoint = 0
let g:pymode_lint_cwindow = 0
autocmd FilterWritePre * if &diff | setlocal wrap< | endif

set rtp+=~/.fzf
" {{{  FZF fzf related settings
  let g:fzf_nvim_statusline = 0 " disable statusline overwriting
  let g:fzf_tags_command = 'ctags -R'
  " [Buffers] Jump to the existing window if possible
  let g:fzf_buffers_jump = 1

  " [[B]Commits] Customize the options used by 'git log':
  let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d%s %C(black)%C(bold)%cr"'
  "let g:fzf_launcher = 'gnome-terminal -geometry 120x30 -e sh -c %s'


  nnoremap <silent> <leader>a :Files<CR>
  nnoremap <silent> <leader><space> :Buffers<CR>
  nnoremap <silent> <leader>A :Windows<CR>
  nnoremap <silent> <leader>; :BLines<CR>
  nnoremap <silent> <leader>. :Lines<CR>
  nnoremap <silent> <leader>o :BTags<CR>
  nnoremap <silent> <leader>O :Tags<CR>
  nnoremap <silent> <leader>r :History<CR>
  nnoremap <silent> <leader>/ :execute 'Gg ' . input('Gg/')<CR>
  nnoremap <silent> K :call SearchWordWithGg()<CR>
  vnoremap <silent> K :call SearchVisualSelectionWithGg()<CR>
  nnoremap <silent> <leader>gl :Commits<CR>
  nnoremap <silent> <leader>ga :BCommits<CR>
  nnoremap <silent> <leader>ft :Filetypes<CR>

  imap <C-x><C-f> <plug>(fzf-complete-file-ag)
  imap <C-x><C-l> <plug>(fzf-complete-line)

  function! SearchWordWithGg()
    execute 'Gg' expand('<cword>')
  endfunction

  function! SearchVisualSelectionWithGg() range
    let old_reg = getreg('"')
    let old_regtype = getregtype('"')
    let old_clipboard = &clipboard
    set clipboard&
    normal! ""gvy
    let selection = getreg('"')
    call setreg('"', old_reg, old_regtype)
    let &clipboard = old_clipboard
    execute 'Gg' selection
  endfunction

  function! s:escape(path)
      return substitute(a:path, ' ', '\\ ', 'g')
  endfunction

  function! GitGrepHandler(line)
    let parts = split(a:line, ':')
    let [fn, lno] = parts[0 : 1]
    execute 'e '. s:escape(fn)
    execute lno
    normal! zz
  endfunction

  command! -bang -nargs=* Gg call fzf#run({
    \ 'source': 'git grep -n -I --untracked -i "<args>"',
    \ 'sink': function('GitGrepHandler'),
    \ 'options': '+m -m',
    \ 'tmux_height': '40%'
  \ })

" }}}
call camelcasemotion#CreateMotionMappings('<leader>')

let g:vim_json_syntax_conceal = 0
