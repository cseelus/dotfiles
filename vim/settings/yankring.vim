" YankRing {{{
nnoremap ,yr :YRShow<CR>
nnoremap C-y :YRShow<CR>
let g:yankring_min_element_length = 2         " Do not retain single letter deletes
let g:yankring_max_element_length = 524288    " 0.5M max
let g:yankring_history_dir = '~/.vim' " Don't put the history in $HOME
" }}}
