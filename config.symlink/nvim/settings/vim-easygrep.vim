let g:EasyGrepCommand='ag'
let g:EasyGrepPatternType = 'fixed'

if !hasmapto("<plug>EgMapReplaceCurrentWord_r")
  nmap <silent> <Leader>vrr <plug>EgMapReplaceCurrentWord_r
endif
