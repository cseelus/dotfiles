let g:plug_window = 'botright new'
call plug#begin('~/.vim/plugged')

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
  " 🌸 A command-line fuzzy finder written in Go
  " Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
  " Rename a buffer on within VIM and on disk (:rename[!] {newname})
  Plug 'danro/rename.vim'
  " Show 'Match X of X' for searched term
  Plug 'vim-scripts/IndexedSearch'
  " Copy/past history; killring-alike plugin for neovim with no default mappings
  Plug 'bfredl/nvim-miniyank'
  Plug 'scrooloose/nerdtree'", { 'on':  'NERDTree, NERDTreeToggle' }
  Plug 'mhinz/vim-startify'
  Plug 'airblade/vim-gitgutter'
  " The missing motion for Vim
  Plug 'justinmk/vim-sneak'
  " Enhanced terminal integration
  Plug 'wincent/terminus'
  " Autocompletion
  Plug 'Shougo/deoplete.nvim'
  " The Silver Searcher
  Plug 'rking/ag.vim'
  " snipMate: Offers textmate-like snippet expansion + scrooloose-snippets
  " . try hitting TAB after typing a snippet
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  Plug 'honza/vim-snippets'
  " some rubymotion snippets
  Plug 'rcyrus/snipmate-snippets-rubymotion', { 'for': 'ruby' }
  " Run ruby test (including vanilla test, rspec, shoulda etc.) in vim¬
  Plug 'janko-m/vim-test', { 'for': 'ruby' }
  " 'end' certain keywords (like 'do', 'if') in some languages automatically
  Plug 'tpope/vim-endwise'
  " Wrapper of some neovim's :terminal functions
  Plug 'kassio/neoterm'
  " Distraction-free writing in Vim.
  Plug 'junegunn/goyo.vim', { 'ony': 'Goyo' }
  " Adds file type glyphs/icons to many popular Vim plugins such as: NERDTree, vim-airline, unite, vim-startify and many more
  " Plug 'ryanoasis/vim-devicons'
  " Plugin to help you stop repeating the basic movement keys
  Plug 'takac/vim-hardtime'
  " Highlight color hex codes and color names
  Plug 'chrisbra/Colorizer'
  " Asynchronous Lint Engine
  Plug 'w0rp/ale', { 'for':  ['javascript.jsx', 'javascript', 'jsx', 'ruby'] }
  Plug 'johngrib/vim-game-code-break', { 'on': 'VimGameCodeBreak' }

  " Optimizations for specific languages/tools
  " ------------------------------------------
  " Vim syntax highlighting for C, Bison, Flex
  Plug 'justinmk/vim-syntax-extra'
  " Better CSS syntax
  Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
  " Ships with VIM already, but most recent version here
  Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
  " A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more
  Plug 'tpope/vim-ragtag'
  " ,he and ,hu to escape and unescape html
  Plug 'skwp/vim-html-escape'
  " HTML5 improvements
  Plug 'othree/html5.vim'
  " Easy navigation of the Rails directory structure, interface to rake +
  " rails, much much more: https://github.com/tpope/vim-rails
  Plug 'tpope/vim-rails', { 'for': 'ruby' }
  Plug 'tpope/vim-liquid', { 'for': 'liquid' }
  Plug 'tpope/vim-haml', { 'for': 'haml' }
  Plug 'slim-template/vim-slim', { 'for': 'slim' }
  Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
  Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
  Plug 'LaTeX-Box-Team/LaTeX-Box', { 'for': 'tex' }
  " Vim support for editing fish scripts
  Plug 'dag/vim-fish', { 'for': 'fish' }
  Plug 'elentok/plaintasks.vim', { 'for': 'plaintasks' }
  Plug 'toyamarinyon/vim-swift', { 'for': 'swift' }
  Plug 'digitaltoad/vim-pug', { 'for': 'jade, pug' }
  " Emblem.js (Ember)
  " Vastly improved Javascript indentation and syntax support
  Plug 'pangloss/vim-javascript', { 'for':  ['javascript.jsx', 'javascript', 'jsx'] }
  Plug 'mxw/vim-jsx', { 'for': ['javascript.jsx', 'javascript', 'jsx'] }
  " GraphQL
  Plug 'jparise/vim-graphql', { 'for':  ['javascript.jsx', 'javascript', 'jsx'] }
  " JSON Formatter
  Plug 'XadillaX/json-formatter.vim', { 'for': 'json' }
  " Vim filetype and tools support for Crystal language
  Plug 'rhysd/vim-crystal', { 'for': 'crystal' }
  " Mustache and handlebars mode
  Plug 'mustache/vim-mustache-handlebars', { 'for': 'handlebars' }
  Plug 'hhsnopek/vim-sugarss', { 'for': 'sugarss' }
  " A Vim plugin that always highlights the enclosing html/xml tags
  Plug 'Valloric/MatchTagAlways'
  " EditorConfig plugin
  Plug 'editorconfig/editorconfig-vim'
  " Lean & mean status/tabline for vim that's light as air
  " Plug 'vim-airline/vim-airline'
  " Plug 'vim-airline/vim-airline-themes'
  " Light and configurable statusline/tabline for Vim
  " Plug 'itchyny/lightline.vim'

  " Colorschemes
  " ------------
  Plug '~/Code/misc/vim-colors-clearance'
  " Plug 'cseelus/vim-colors-clearance'
  Plug 'imeos/vim-colors-solstice'
  Plug '~/Code/misc/vim-colors-lanai'
  Plug '~/Code/misc/vim-colors-lucid'
  Plug 'cseelus/vim-colors-icicle'
  Plug 'chriskempson/base16-vim'
  Plug 'colepeters/spacemacs-theme.vim'
  Plug 'liuchengxu/space-vim-dark'
  Plug 'flazz/vim-colorschemes'

call plug#end()
