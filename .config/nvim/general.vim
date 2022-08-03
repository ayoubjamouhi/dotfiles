syntax on

inoremap jj <ESC>
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

"set relativenumber
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" autoindent
set autoindent
" always uses spaces instead of tab characters
set expandtab
set termguicolors
set background=dark
set termguicolors

set ttyfast
set t_Co=256
" fold
"set foldmethod=indent
if exists('$TMUX')
" Colors in tmux
  let &t_8f = "<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "<Esc>[48;2;%lu;%lu;%lum"
endif

colorscheme nord
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline=
set statusline+=%#454545#
set statusline+=%=
set statusline+=\ %M
set statusline+=\ %r
set statusline+=\ %F
set statusline+=\ 
set statusline+=%#CursorLineNr#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#IncSearch#
set statusline+=\ %l/%L
set statusline+=\ [%c]

" c++
command! -nargs=0 CAR call TermWrapper(printf('g++ -std=c++11 %s && ./a.out', expand('%')))

command! -nargs=1 CompileAndRunWithFile call TermWrapper(printf('g++ -std=c++17 %s && ./a.out < %s', expand('%'), <args>))

autocmd FileType cpp nnoremap <Buffer><F5>fw CAR<CR>

let g:vim_json_syntax_conceal = 0
