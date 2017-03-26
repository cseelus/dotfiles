" Plugins {{{
let g:plug_window = 'botright new'

function! VimrcLoadPlugins()
  let g:plugins_dir = g:rc_dir.'/plugged'
  let g:vim_plug_dir = g:plugins_dir.'/vim-plug'

  " Install vim-plug if not available {{{
  if !isdirectory(g:vim_plug_dir)
    call mkdir(g:vim_plug_dir, 'p')
  endif
  if !isdirectory(g:vim_plug_dir.'/autoload')
    execute '!git clone git://github.com/junegunn/vim-plug '
          \ shellescape(g:vim_plug_dir.'/autoload', 1)
  endif
  " }}}

  call plug#begin()

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
  " 🌸 A command-line fuzzy finder written in Go
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
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
  " some rubymotion snippets
  Plug 'rcyrus/snipmate-snippets-rubymotion'
  " 'end' certain keywords (like 'do', 'if') in some languages automatically
  Plug 'tpope/vim-endwise'
  " Wrapper of some neovim's :terminal functions
  Plug 'kassio/neoterm'
  " Distraction-free writing in Vim.
  Plug 'junegunn/goyo.vim'
  " Adds file type glyphs/icons to many popular Vim plugins such as: NERDTree, vim-airline, unite, vim-startify and many more
  " Plug 'ryanoasis/vim-devicons'
  " Plugin to help you stop repeating the basic movement keys
  Plug 'takac/vim-hardtime'
  " Highlight color hex codes and color names
  Plug 'chrisbra/Colorizer'

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
  Plug 'digitaltoad/vim-pug'
  " Emblem.js (Ember)
  Plug 'yalesov/vim-emblem'
  " Vastly improved Javascript indentation and syntax support
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  " Vim filetype and tools support for Crystal language
  Plug 'rhysd/vim-crystal'
  " Mustache and handlebars mode
  Plug 'mustache/vim-mustache-handlebars'

  " Colorschemes
  " ------------
  Plug '~/Code/misc/vim-colors-clearance'
  " Plug 'cseelus/vim-colors-clearance'
  Plug 'imeos/vim-colors-solstice'
  Plug '~/Code/misc/vim-colors-lanai'
  Plug '~/Code/misc/vim-colors-lucid'
  Plug 'cseelus/vim-colors-icicle'
  Plug 'chriskempson/base16-vim'
  Plug 'flazz/vim-colorschemes'

  call plug#end()
endfunction
