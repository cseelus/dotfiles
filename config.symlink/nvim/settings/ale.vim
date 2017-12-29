" Automatic JS formatting on save (unfortunately very slow)
" autocmd bufwritepost *.js silent !standard --fix %
" set autoread

" Configure linters
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}

" Signs ALE uses
let g:ale_sign_error = '● '
let g:ale_sign_warning = '● '

" highlight clear ALEErrorSign
hi link ALEErrorSign           Delimiter
hi link ALEWarningSign         Userdef
" highlight clear ALEWarningSign
