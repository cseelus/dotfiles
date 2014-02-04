" CtrlP {{{
" Remap CtrlP as it clashes with YankRing
let g:ctrlp_map = '<C-t>'
let g:ctrlp_max_height = 30
" Do not retain cache between sessions
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_extensions = ['tag']

" CtrlP auto cache clearing.
" ----------------------------------------------------------------------------
function! SetupCtrlP()
  if exists("g:loaded_ctrlp") && g:loaded_ctrlp
    augroup CtrlPExtension
      autocmd!
      autocmd FocusGained  * CtrlPClearCache
      autocmd BufWritePost * CtrlPClearCache
    augroup END
  endif
endfunction
if has("autocmd")
  autocmd VimEnter * :call SetupCtrlP()
endif
