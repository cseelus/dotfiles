" Automatic JS formatting on save (unfortunately very slow)
" autocmd bufwritepost *.js silent !standard --fix %
" set autoread

" Configure linters
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rails_best_practices'],
\}

" Signs ALE uses
let g:ale_sign_error = '● '
let g:ale_sign_warning = '● '

" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" let g:ale_open_list = 1
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
" let g:ale_keep_list_window_open = 1

" Show 5 lines of errors (default: 10)
let g:ale_list_window_size = 5

" highlight clear ALEErrorSign
hi link ALEErrorSign           Delimiter
hi link ALEWarningSign         Userdef
" highlight clear ALEWarningSign
