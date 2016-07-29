let g:plug_window = 'botright new'
call plug#begin('~/.vim/plugged')

" General vim improvements
" ------------------------
" Change the working directory to the project root when you open a file
Plug 'airblade/vim-rooter'
" Make gui-only colorschemes work transparently in terminal vim with 16/256
" colors
Plug 'godlygeek/csapprox'
" Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
" Plug 'gorodinskiy/vim-coloresque'
Plug 'chrisbra/Colorizer' " Newer alternative colorizer
Plug 'hexHighlight.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
" Adds . (repeat command) support for complex commands like surround.vim
Plug 'tpope/vim-repeat'
" Autocompletion
Plug 'Shougo/neocomplete.vim'
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
" Close buffers
Plug 'd11wtq/ctrlp_bdelete.vim'
" Rename a buffer on within VIM and on disk (:rename[!] {newname})
Plug 'danro/rename.vim'
" Show 'Match X of X' for searched term
Plug 'IndexedSearch'
" The Silver Searcher
Plug 'rking/ag.vim'
" Make Vim play nicely with iTerm 2 and tmux
Plug 'sjl/vitality.vim'
" Type :e this/does/not/exist/file.txt, then save and smile that VIM created a
" non existend directory for you
Plug 'pbrisbin/vim-mkdir'
" Checks your syntax
Plug 'scrooloose/syntastic'
" Effortless sanity for pasting
Plug 'vim-scripts/YankRing.vim'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'airblade/vim-gitgutter'
" HTML and CSS hi-speed coding
Plug 'mattn/emmet-vim'
" The missing motion for Vim
Plug 'justinmk/vim-sneak'

" Optimizations for specific languages/tools
" ------------------------------------------
" Vim syntax highlighting for C, Bison, Flex
Plug 'justinmk/vim-syntax-extra'
" Ships with VIM already, but most recent version here
Plug 'vim-ruby/vim-ruby'
" Run ruby test (including vanilla test, rspec, shoulda etc.) in vim
Plug 'janko-m/vim-test'
" A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more
Plug 'tpope/vim-ragtag'
" ,he and ,hu to escape and unescape html
Plug 'skwp/vim-html-escape'
" HTML5 improvements
Plug 'othree/html5.vim'
" Easy navigation of the Rails directory structure, interface to rake +
" rails, much much more: https://github.com/tpope/vim-rails
Plug 'tpope/vim-rails'
Plug 'sunaku/vim-ruby-shoulda-context'
Plug 'keith/rspec.vim'
Plug 'tpope/vim-liquid'
Plug 'depuracao/vim-rdoc'
Plug 'tpope/vim-haml'
Plug 'slim-template/vim-slim'
Plug 'jelera/vim-javascript-syntax'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'wavded/vim-stylus'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'shime/vim-livedown'
Plug 'LaTeX-Box-Team/LaTeX-Box'
" Vim support for editing fish scripts
Plug 'dag/vim-fish'
Plug 'n3.vim'
Plug 'elentok/plaintasks.vim'
Plug 'toyamarinyon/vim-swift'
" Pug template engine (formerly Jade)
Plug 'digitaltoad/vim-pug'
" Mustache common
Plug 'mustache/vim-mustache-handlebars'
" Meteor
Plug 'Slava/vim-spacebars'
" React
Plug 'mxw/vim-jsx'
" Ruby Volt templating engine
Plug 'etaoins/vim-volt-syntax'

" Colorschemes
" ------------
Plug '~/Code/misc/vim-colors-clearance'
" Plug 'cseelus/vim-colors-clearance'
Plug 'imeos/vim-colors-solstice'
Plug '~/Code/misc/vim-colors-icicle'
Plug '~/Code/misc/vim-colors-lanai'
Plug '~/Code/misc/vim-colors-grayvim'
Plug '~/Code/misc/vim-colors-lucid'
Plug '~/Code/misc/vim-colors-kauai'
" Plug 'cseelus/vim-colors-lanai'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'ajh17/Spacegray.vim'
Plug 'carlson-erik/wolfpack'
Plug 'gregsexton/Muon'
Plug 'robertmeta/nofrils'

" Not needed atm
" ------------------------------------------
" Git wrapper
" Plug 'tpope/vim-fugitive'

" Not usable
" ------------------------------------------

" Vim plugin for accelerated smooth scroll
" Plug 'yonchu/accelerated-smooth-scroll'
" Exuberant Ctags (not working with yankring)
" Plug 'vim-scripts/ctags.vim'
" Move lines up and down
" Plug 'matze/vim-move' " 'ciw' not realiable
" Works also for snake case
" Plug 'bkad/CamelCaseMotion' 'ce' on line end not reliable
" Vim plugin for previewing markdown files in a browser.
" Plug 'JamshedVesuna/vim-markdown-preview' " Shows emptpy preview


call plug#end()
