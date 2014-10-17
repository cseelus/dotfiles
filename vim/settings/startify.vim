let g:startify_files_number        = 12
let g:startify_session_persistence = 1
let g:startify_session_autoload    = 1
let g:startify_enable_special      = 0

nmap <silent> <leader>s :Startify<cr>

let g:startify_list_order = [
      \ ['   Recently opened:'],
      \ 'files',
      \ ['   Recently opened in current directory:'],
      \ 'dir',
      \ ['   Sessions'],
      \ 'sessions',
      \ ['   Bookmarks'],
      \ 'bookmarks',
      \ ]

let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ $VIMRUNTIME .'/doc',
            \ 'bundle/.*/doc',
            \ '.vimgolf',
            \ ]

let g:startify_bookmarks = [
            \ '~/.vim/vimrc',
            \ '~/.dotfiles/vim/vim-plug.vim',
            \ '~/Code/misc/vim-colors-lanai/colors/lanai.vim',
            \ ]

hi link StartifyNumber  Statement
hi link StartifyBracket Statement
hi link StartifySection Title
hi link StartifyPath    TextDarker
hi link StartifySlash   TextDarker
"    StartifyFile     |  the actual file         |  <none>
"    StartifyFooter   |  the custom footer       |  linked to Normal
"    StartifyHeader   |  the custom header       |  linked to Normal
"    StartifyNumber   |  the numbers between []  |  linked to Number
"    StartifySection  |  section headers         |  linked to Special
"    StartifySelect   |  selected entries        |  linked to Title
"    StartifySpecial  |  <empty buffer>,<quit>   |  <none>
