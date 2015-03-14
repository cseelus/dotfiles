let g:plug_window = 'botright new'
call plug#begin('~/.nvim/plugged')

" General vim improvements
" ------------------------
" Change the working directory to the project root when you open a file
Plug 'airblade/vim-rooter'
" Make gui-only colorschemes work transparently in terminal vim with 16/256
" colors
Plug 'godlygeek/csapprox'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
" Adds . (repeat command) support for complex commands like surround.vim
Plug 'tpope/vim-repeat'
" yankring: effortless sanity for pasting. every time you yank something
" it goes into a buffer. after hitting p to paste, use ctrl-p or ctrl-n
" to cycle through the paste options. great for when you accidentally
" overwrite your yank with a delete.
Plug 'skwp/YankRing.vim'
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Plug 'kien/ctrlp.vim'


" Colorschemes
" ------------
Plug '~/Code/misc/vim-colors-clearance'
" Plug 'cseelus/vim-colors-clearance'
Plug 'imeos/vim-colors-solstice'
"Plug '~/Code/misc/vim-colors-lanai'
"Plug '~/Code/misc/vim-colors-kauai'
Plug 'cseelus/vim-colors-lanai'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'

call plug#end()
