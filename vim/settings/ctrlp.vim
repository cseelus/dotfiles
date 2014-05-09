" CtrlP
" Remap CtrlP as it clashes with YankRing
let g:ctrlp_map = '<C-t>'
let g:ctrlp_max_height = 30

" Go to file
" macm File.New\ Tab key=<nop>
" nmap <D-t> :CtrlP<cr>
"
" Do not retain cache between sessions
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_extensions = ['tag']

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" CtrlP auto cache clearing.
" ----------------------------------------------------------------------------
" function! SetupCtrlP()
"   if exists("g:loaded_ctrlp") && g:loaded_ctrlp
"     augroup CtrlPExtension
"       autocmd!
"       autocmd FocusGained  * CtrlPClearCache
"       autocmd BufWritePost * CtrlPClearCache
"     augroup END
"   endif
" endfunction
" if has("autocmd")
"   autocmd VimEnter * :call SetupCtrlP()
" endif
