let g:ctrlp_map = '<leader>t'
nnoremap <silent> <leader>t :CtrlPCurWD<CR>

" let g:ctrlp_map = '<leader>t'
" let g:ctrlp_cmd = 'CtrlP'

" Mappings for buffer search
nnoremap <silent> <leader>b :CtrlPBuffer<cr>
nnoremap <silent> <C-b> :CtrlPBuffer<cr>

let g:ctrlp_working_path_mode = 'ra'

" Ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|node_modules\|build\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

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

let g:ctrlp_use_caching = 0
