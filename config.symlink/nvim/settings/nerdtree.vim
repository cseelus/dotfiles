" let NERDTreeHijackNetrw=1
" Shortcut
" map <C-f> :NERDTreeToggle<CR>
nmap <silent> <leader>f :NERDTreeToggle<cr>
" How can I close vim if the only window left open is a NERDTree?
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" let g:NERDTreeWinPos = "right"

" suppress whitespace highlighting
autocmd FileType nerdtree setlocal nolist
" suppress folding
autocmd FileType nerdtree setlocal nofoldenable

" Never open files inside NERDTree buffer, works also when using fzf etc.
au BufEnter * if bufname('#') =~ 'NERD_tree' && bufname('%') !~ 'NERD_tree' && winnr('$') > 1 | b# | exe "normal! \<c-w>\<c-w>" | :blast | endif
