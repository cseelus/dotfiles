nmap <silent> <leader>rt :TestNearest<CR>
nmap <silent> <leader>rT :TestFile<CR>
nmap <silent> <leader>ra :TestSuite<CR>
nmap <silent> <leader>rl :TestLast<CR>

let test#strategy = "terminal"

" Output in Terminal
" let g:rubytest_in_quickfix = 0
"
" map <Leader>rt <Plug>RubyTestRun     " change from <Leader>t to <Leader>\
" map <Leader>rT <Plug>RubyFileRun     " change from <Leader>T to <Leader>]
" map <Leader>rl <Plug>RubyTestRunLast " change from <Leader>l to <Leader>/
