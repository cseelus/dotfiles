" VIM Session

" Don't persist options and mappings because it can corrupt sessions.
set sessionoptions-=options

let g:session_autosave = 'yes'
let g:session_autoload = 'yes'
let g:session_default_to_last = 1
