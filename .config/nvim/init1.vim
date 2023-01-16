source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/plugins/phpactor.vim
source $HOME/.config/nvim/plugins/filetypes.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/fzf.vim
source $HOME/.config/nvim/plugins/easymotion.vim
source $HOME/.config/nvim/plugins/prettier.vim

" General
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" ctrlp
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard', 'node_modules', 'vendor']

"function! s:check_back_space() abort
  "let col = col('.') - 1
  "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

