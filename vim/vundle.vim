" Vundle configuration
" ===========================================================================

" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'


" Vundles
" ---------------------------------------------------------------------------

" vim-session: use :SaveSession and :OpenSession to come back to your saved window layout
"
" IndexedSearch - when you do searches will show you 'Match 2 of 4' in the status line
"
" SearchComplete - tab completion in the / search window
"
"

" General vim improvements
" ------------------------
" Change the working directory to the project root when you open a file
Bundle 'airblade/vim-rooter'
" As soon as you type a character that could have a matching (closing) counterpart, vim automatically puts its counterpart in front of your cursor
Bundle 'jiangmiao/auto-pairs'
Bundle 'tpope/vim-surround'
Bundle 'ap/vim-css-color'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-commentary'
" Adds . (repeat command) support for complex commands like surround.vim
Bundle 'tpope/vim-repeat'
" yankring: effortless sanity for pasting. every time you yank something it goes into a buffer. after hitting p to paste, use ctrl-p or ctrl-n to cycle through the paste options. great for when you accidentally overwrite your yank with a delete.
Bundle 'skwp/YankRing.vim'
" Vim-Session: Use :SaveSession and :OpenSession to come back to your saved window layout (vim-misc is required)
" Bundle "xolox/vim-misc"
" Bundle "xolox/vim-session"
" Autocompletion
Bundle 'Shougo/neocomplcache.vim'
" snipMate: Offers textmate-like snippet expansion + scrooloose-snippets . try hitting TAB after typing a snippet
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
" 'end' certain keywords (like 'do', 'if') in some languages automatically
Bundle 'tpope/vim-endwise'
" matchit - helps with matching brackets, improves other plugins
Bundle 'matchit.zip'
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Bundle 'kien/ctrlp.vim'
" Rename a buffer on within VIM and on disk (:rename[!] {newname})
Bundle 'danro/rename.vim'
" Show 'Match X of X' for searched term
Bundle 'IndexedSearch'
" Vim plugin for accelerated smooth scroll
Bundle 'yonchu/accelerated-smooth-scroll'
" Make gui-only colorschemes work transparently in terminal vim with 16/256
" colors
Bundle 'CSApprox'

" Optimizations for specific languages/tools
" ------------------------------------------
" A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more
Bundle 'tpope/vim-ragtag'
" ,he and ,hu to escape and unescape html
Bundle "skwp/vim-html-escape"
" Easy navigation of the Rails directory structure, interface to rake + rails, much much more: https://github.com/tpope/vim-rails
Bundle 'tpope/vim-rails'
Bundle 'depuracao/vim-rdoc'
Bundle 'tpope/vim-haml'
Bundle 'othree/html5.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'plasticboy/vim-markdown'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
" Vim support for editing fish scripts
Bundle 'dag/vim-fish'
Bundle 'n3.vim'
Bundle 'webgefrickel/vim-typoscript'

" Colorschemes
" ------------
Bundle 'flazz/vim-colorschemes'
Bundle 'cseelus/vim-colors-clearance'
Bundle 'file:///Users/chris/.vim/bundle/vim-colors-lanai'


" Filetype plugin indent on is required by vundle
filetype plugin indent on
