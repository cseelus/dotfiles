" YankRing
nnoremap ,yr :YRShow<CR>
" let g:yankring_replace_n_pkey = '<Char-172>'
" let g:yankring_replace_n_nkey = '<Char-174>'
let g:yankring_history_dir = '~/.config/nvim/'      " Don't put the history in $HOME
let g:yankring_min_element_length = 2      " Do not retain single letter deletes
let g:yankring_max_element_length = 524288 " 0.5M max
let g:yankring_persist = 0 " Yankring should persist between Vim instances
