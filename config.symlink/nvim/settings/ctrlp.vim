call ctrlp_bdelete#init()

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
" Remap CtrlP as it clashes with YankRing
let g:ctrlp_map = '<leader>t'
nnoremap <silent> <leader>t :CtrlPCurWD<CR>

" Mappings for buffer search
nnoremap <silent> <leader>b :CtrlPBuffer<cr>
nnoremap <silent> <C-b> :CtrlPBuffer<cr>

"Cmd-Shift-(M)ethod - jump to a method (tag in current file)
"Ctrl-m is not good - it overrides behavior of Enter
nnoremap <silent> <D-M> :CtrlPBufTag<CR>

" Switch to the file if it's already open
" let g:ctrlp_switch_buffer = '<leader><leader>'

" Drop down from top instead up from bottom
" let g:ctrlp_match_window_bottom = 0
" let g:ctrlp_match_window_reversed = 0

" Use the silver searcher if possible
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\cache$|\.svn$'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif

let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
  \ }
let g:ctrlp_reuse_window = 'startify\|NERDTree'

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1

" Height
let g:ctrlp_max_height = 12

" Do not retain cache between sessions
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_extensions = ['tag']

" Really respect my ignores
let b:ctrlp_user_command = ['.git', 'git --git-dir=/tmp/repo/.git/modules/submodule ls-files -oc --exclude-standard']
if exists("g:ctrl_user_command")
  unlet g:ctrlp_user_command
endif
