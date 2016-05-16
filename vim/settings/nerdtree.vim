" let NERDTreeHijackNetrw=1
" Shortcut
" map <C-f> :NERDTreeToggle<CR>
nmap <silent> <leader>f :NERDTreeToggle<cr>
" Close VIM if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Close automatically on file open
let NERDTreeQuitOnOpen = 1
" Automatically delete the buffer of the file you just deleted with NerdTree
let NERDTreeAutoDeleteBuffer = 1

" let g:NERDTreeWinPos = "right"

autocmd FileType nerdtree setlocal nolist       " suppress whitespace highlighting
autocmd FileType nerdtree setlocal nofoldenable " suppress folding
