" let NERDTreeHijackNetrw=1
" Shortcut
" map <C-f> :NERDTreeToggle<CR>
nmap <silent> <leader>f :NERDTreeToggle<cr>
" How can I close vim if the only window left open is a NERDTree?
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" let g:NERDTreeWinPos = "right"

autocmd FileType nerdtree setlocal nolist       " suppress whitespace highlighting
autocmd FileType nerdtree setlocal nofoldenable " suppress folding
