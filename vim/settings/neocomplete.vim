" let g:neocomplcache_enable_at_startup = 1
" let g:neocomplcache_enable_camel_case_completion = 1
" let g:neocomplcache_enable_underbar_completion = 1
" let g:neocomplcache_enable_smart_case = 1
"
" " default # of completions is 100, that's crazy
" let g:neocomplcache_max_list = 12
"
" " words less than 2 letters long aren't worth completing
" let g:neocomplcache_auto_completion_start_length = 2

" This makes sure we use neocomplcache completefunc instead of
" the one in rails.vim, otherwise this plugin will crap out
" let g:neocomplcache_force_overwrite_completefunc = 1


" Newer version of neocomplete
let g:neocomplete#enable_at_startup            = 1
let g:neocomplete_enable_camel_case_completion = 1
let g:neocomplete_enable_underbar_completion   = 1
let g:neocomplete_enable_smart_case            = 1
let g:neocomplete#enable_fuzzy_completion      = 1
" let g:neocomplete#data_directory          = '~/.vim/tmp/neocomplete'
" "
" " " default # of completions is 100, that's crazy
let g:neocomplete#max_list                     = 12
" "
" " " words less than 2 letters long aren't worth completing
let g:neocomplete#auto_completion_start_length = 2
" "
" " " This makes sure we use neocomplcache completefunc instead of
" " " the one in rails.vim, otherwise this plugin will crap out
let g:neocomplete_force_overwrite_completefunc = 1
