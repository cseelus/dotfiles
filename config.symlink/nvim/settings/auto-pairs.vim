" Autoclose pipe in Ruby
autocmd FileType ruby
  \ let b:AutoPairs = g:AutoPairs |
  \ let b:AutoPairs['|'] = '|'

" Neocomplete Cursor Jump bug: github.com/jiangmiao/auto-pairs/issues/16
" let g:AutoPairsMapCR = 0
" imap <silent><CR> <CR><Plug>AutoPairsReturn
