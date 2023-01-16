nmap <C-i> <Plug>(Prettier)

" Fix files with prettier, and then ESLint.
"let b:ale_fixers = ['prettier', 'eslint']
" Equivalent to the above.
"let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
"let g:ale_fix_on_save = 1


" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
