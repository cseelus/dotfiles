let g:startify_files_number        = 12
let g:startify_session_persistence = 1
let g:startify_session_autoload    = 1
let g:startify_enable_special      = 0

nmap <silent> <leader>s :Startify<cr>

let g:startify_list_order = [
      \ ['   Bookmarks'],
      \ 'bookmarks',
      \ ['   Recently opened:'],
      \ 'files',
      \ ['   Recently opened in current directory:'],
      \ 'dir',
      \ ['   Sessions'],
      \ 'sessions',
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
            \ '~/.vim/settings/startify.vim',
            \ '~/Code/misc/vim-colors-lanai/colors/lanai.vim',
            \ '~/Code/misc/vim-colors-clearance/colors/clearance.vim',
            \ '~/Code/ruby/syntax-highlight-example.rb',
            \ ]

hi link StartifyNumber  Statement
hi link StartifyBracket Statement
hi link StartifySection Title
hi link StartifyPath    Comment
hi link StartifySlash   Comment
hi link StartifyFile    StorageClass
"    StartifyFooter   |  the custom footer       |  linked to Normal
"    StartifyHeader   |  the custom header       |  linked to Normal
"    StartifyNumber   |  the numbers between []  |  linked to Number
"    StartifySection  |  section headers         |  linked to Special
"    StartifySelect   |  selected entries        |  linked to Title
"    StartifySpecial  |  <empty buffer>,<quit>   |  <none>
