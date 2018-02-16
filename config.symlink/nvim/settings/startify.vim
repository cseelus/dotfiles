let g:startify_files_number        = 12
let g:startify_session_persistence = 1
let g:startify_session_autoload    = 1
let g:startify_enable_special      = 1

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
            \ '~/Documents/Misc/ToDo.todo',
            \ '~/Documents/Misc/Journal.yml',
            \ '~/.dotfiles/config.symlink/nvim/init.vim',
            \ '~/.dotfiles/config.symlink/nvim/vim-plug.vim',
            \ '~/.dotfiles/config.symlink/nvim/settings/startify.vim',
            \ '~/Code/misc/vim-colors-lanai/colors/lanai.vim',
            \ '~/Code/misc/vim-colors-lucid/colors/lucid.vim',
            \ '~/Code/misc/vim-colors-ornate/colors/ornate.vim',
            \ '~/Code/misc/vim-colors-reactjs/colors/reactjs.vim',
            \ '~/Code/misc/vim-colors-tone/colors/tone.vim',
            \ '~/Code/misc/vim-colors-clearance/colors/clearance.vim',
            \ '~/Code/ruby/syntax-highlight-example.rb',
            \ ]

" hi link StartifyNumber  Statement
" hi link StartifyBracket Statement
" hi link StartifySection Title
hi link StartifyPath    Darker
" hi link StartifySlash   Comment
" hi link StartifyFile    StorageClass
"    StartifyFooter   |  the custom footer       |  linked to Normal
"    StartifyHeader   |  the custom header       |  linked to Normal
"    StartifyNumber   |  the numbers between []  |  linked to Number
"    StartifySection  |  section headers         |  linked to Special
"    StartifySelect   |  selected entries        |  linked to Title
"    StartifySpecial  |  <empty buffer>,<quit>   |  <none>
