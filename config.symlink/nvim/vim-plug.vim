let g:plug_window = 'botright new'
call plug#begin('~/.config/nvim/plugged')

" General NeoVIM improvements
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
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Plug 'kien/ctrlp.vim'
" Close buffers
Plug 'd11wtq/ctrlp_bdelete.vim'
" Rename a buffer on within VIM and on disk (:rename[!] {newname})
Plug 'danro/rename.vim'
" Show 'Match X of X' for searched term
Plug 'IndexedSearch'
" yankring: effortless sanity for pasting. every time you yank something
" it goes into a buffer. after hitting p to paste, use ctrl-p or ctrl-n
" to cycle through the paste options. great for when you accidentally
" overwrite your yank with a delete.
Plug 'skwp/YankRing.vim'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'airblade/vim-gitgutter'
" The missing motion for Vim
Plug 'justinmk/vim-sneak'
" Make Vim play nicely with iTerm 2 and tmux
Plug 'sjl/vitality.vim'
" Autocompletion
Plug 'Shougo/deoplete.nvim'
" Run ruby test (including vanilla test, rspec, shoulda etc.) in vim¬
Plug 'janko-m/vim-test'
" The Silver Searcher
Plug 'rking/ag.vim'
" snipMate: Offers textmate-like snippet expansion + scrooloose-snippets
" . try hitting TAB after typing a snippet
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
" 'end' certain keywords (like 'do', 'if') in some languages automatically
Plug 'tpope/vim-endwise'
" Wrapper of some neovim's :terminal functions
Plug 'kassio/neoterm'
" Distraction-free writing in Vim.
Plug 'junegunn/goyo.vim'

" Optimizations for specific languages/tools
" ------------------------------------------
" Vim syntax highlighting for C, Bison, Flex
Plug 'justinmk/vim-syntax-extra'
" Ships with VIM already, but most recent version here
Plug 'vim-ruby/vim-ruby'
" A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more
Plug 'tpope/vim-ragtag'
" ,he and ,hu to escape and unescape html
Plug 'skwp/vim-html-escape'
" HTML5 improvements
Plug 'othree/html5.vim'
" Easy navigation of the Rails directory structure, interface to rake +
" rails, much much more: https://github.com/tpope/vim-rails
Plug 'tpope/vim-rails'
Plug 'tpope/vim-liquid'
Plug 'depuracao/vim-rdoc'
Plug 'tpope/vim-haml'
Plug 'slim-template/vim-slim'
Plug 'kchmck/vim-coffee-script'
Plug 'plasticboy/vim-markdown'
Plug 'LaTeX-Box-Team/LaTeX-Box'
" Vim support for editing fish scripts
Plug 'dag/vim-fish'
Plug 'n3.vim'
Plug 'elentok/plaintasks.vim'
Plug 'toyamarinyon/vim-swift'
Plug 'digitaltoad/vim-jade'
" Mustache common
Plug 'mustache/vim-mustache-handlebars'
" Meteor
Plug 'Slava/vim-spacebars'
Plug 'etaoins/vim-volt-syntax'

" Colorschemes
" ------------
Plug '~/Code/misc/vim-colors-clearance'
" Plug 'cseelus/vim-colors-clearance'
Plug 'imeos/vim-colors-solstice'
Plug '~/Code/misc/vim-colors-lanai'
Plug '~/Code/misc/vim-colors-lucid'
" Plug '~/Code/misc/vim-colors-wwdc16'
Plug 'lifepillar/vim-wwdc16-theme'
"Plug '~/Code/misc/vim-colors-kauai'
" Plug 'cseelus/vim-colors-lanai'
Plug 'cseelus/vim-colors-icicle'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'joshdick/onedark.vim'

call plug#end()
