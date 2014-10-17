let g:plug_window = 'botright new'
call plug#begin('~/.vim/plugged')

" General vim improvements
" ------------------------
" Change the working directory to the project root when you open a file
Plug 'airblade/vim-rooter'
" Make gui-only colorschemes work transparently in terminal vim with 16/256
" colors
Plug 'godlygeek/csapprox'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'hexHighlight.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
" Adds . (repeat command) support for complex commands like surround.vim
Plug 'tpope/vim-repeat'
" yankring: effortless sanity for pasting. every time you yank something
" it goes into a buffer. after hitting p to paste, use ctrl-p or ctrl-n
" to cycle through the paste options. great for when you accidentally
" overwrite your yank with a delete.
Plug 'skwp/YankRing.vim'
" Autocompletion
Plug 'Shougo/neocomplcache.vim'
" The name says it all …
Plug 'SudoEdit.vim'
" snipMate: Offers textmate-like snippet expansion + scrooloose-snippets
" . try hitting TAB after typing a snippet
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
" 'end' certain keywords (like 'do', 'if') in some languages automatically
Plug 'tpope/vim-endwise'
" matchit - helps with matching brackets, improves other plugins
Plug 'matchit.zip'
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Plug 'kien/ctrlp.vim'
Plug 'Shougo/unite.vim' " Better than CtrlP, but needs diff. package manager
" Close buffers
Plug 'd11wtq/ctrlp_bdelete.vim'
" Rename a buffer on within VIM and on disk (:rename[!] {newname})
Plug 'danro/rename.vim'
" Show 'Match X of X' for searched term
Plug 'IndexedSearch'
" The Silver Searcher
Plug 'rking/ag.vim'
" Vim plugin for accelerated smooth scroll
" Plug 'yonchu/accelerated-smooth-scroll'
" Make Vim play nicely with iTerm 2 and tmux
Plug 'sjl/vitality.vim'
" Type :e this/does/not/exist/file.txt, then save and smile that VIM created a
" non existend directory for you
Plug 'pbrisbin/vim-mkdir'
" Checks your syntax
Plug 'scrooloose/syntastic'
" Exuberant Ctags
Plug 'vim-scripts/ctags.vim'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'

" Optimizations for specific languages/tools
" ------------------------------------------
" A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more
Plug 'tpope/vim-ragtag'
" ,he and ,hu to escape and unescape html
Plug 'skwp/vim-html-escape'
" Easy navigation of the Rails directory structure, interface to rake +
" rails, much much more: https://github.com/tpope/vim-rails
Plug 'tpope/vim-rails'
Plug 'depuracao/vim-rdoc'
Plug 'tpope/vim-haml'
Plug 'slim-template/vim-slim'
Plug 'othree/html5.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'plasticboy/vim-markdown'
Plug 'LaTeX-Box-Team/LaTeX-Box'
" Vim support for editing fish scripts
Plug 'dag/vim-fish'
Plug 'n3.vim'
Plug 'webgefrickel/vim-typoscript'
Plug 'elentok/plaintasks.vim'
" Git wrapper
Plug 'tpope/vim-fugitive'
Plug 'toyamarinyon/vim-swift'

" Colorschemes
" ------------
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'csexton/spacemanspiff.vim'
Plug '~/Code/misc/vim-colors-clearance'
" Plug 'cseelus/vim-colors-clearance'
Plug 'john2x/flatui.vim'
Plug 'imeos/vim-colors-solstice'
Plug '~/Code/misc/vim-colors-lanai'
" Plug 'cseelus/vim-colors-lanai'

call plug#end()
