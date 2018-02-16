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
  " Full path fuzzy file, buffer, mru, tag, ... finder for Vim
  " Plug 'kien/ctrlp.vim'
  " 🌸 A command-line fuzzy finder written in Go
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  " Helpers for UNIX like :Rename, :Delete, :Chmod, :SudoWrite
  Plug 'tpope/vim-eunuch'
  " Allows you to save files into directories that do not exist yet.
  Plug 'DataWraith/auto_mkdir'
  " Show 'Match X of X' for searched term
  Plug 'vim-scripts/IndexedSearch'
  " Copy/past history; killring-alike plugin for neovim with no default mappings
  Plug 'bfredl/nvim-miniyank'
  " A tree explorer plugin for vim.
  Plug 'scrooloose/nerdtree'", { 'on':  'NERDTree, NERDTreeToggle' }
  " The fancy start screen for Vim
  Plug 'mhinz/vim-startify'
  " Shows a git diff in the gutter (sign column) and stages/undoes hunks.
  Plug 'airblade/vim-gitgutter'
  " Enhanced terminal integration
  Plug 'wincent/terminus'
  " Autocompletion
  Plug 'Shougo/deoplete.nvim'
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
  " Lean & mean status/tabline for vim that's light as air
  " Plug 'vim-airline/vim-airline'
  " Plug 'vim-airline/vim-airline-themes'
  " Light and configurable statusline/tabline for Vim
  " Plug 'itchyny/lightline.vim'
  " Tame the quickfix window
  Plug 'romainl/vim-qf'
  "
  " snipMate
  " ------------------------
  " Offers textmate-like snippet expansion + scrooloose-snippets
  " . try hitting TAB after typing a snippet
  " Plug 'MarcWeber/vim-addon-mw-utils'
  " Plug 'tomtom/tlib_vim'
  " Plug 'garbas/vim-snipmate'
  " Plug 'honza/vim-snippets'
  " " some rubymotion snippets
  " Plug 'rcyrus/snipmate-snippets-rubymotion', { 'for': 'ruby' }

  " Editing
  " ------------------------
  " Plug 'jiangmiao/auto-pairs'
  " 'end' certain keywords (like 'do', 'if') in some languages automatically
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-commentary'
  " Creates "surroundings" like parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
  Plug 'tpope/vim-surround'
  " Adds . (repeat command) support for complex commands like surround.vim
  Plug 'tpope/vim-repeat'
  " The missing motion for Vim
  Plug 'justinmk/vim-sneak'
  " http://editorconfig.org support
  Plug 'sgur/vim-editorconfig'
  " True Sublime Text style multiple selections for Vim
  Plug 'terryma/vim-multiple-cursors'
  " Insert or delete brackets, parens, quotes in pairs
  Plug 'jiangmiao/auto-pairs'

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
  " HTML5 improvements
  Plug 'othree/html5.vim'
  " Easy navigation of the Rails directory structure, interface to rake +
  " rails, much much more: https://github.com/tpope/vim-rails
  Plug 'tpope/vim-rails', { 'for': 'ruby' }
  " Run ruby test (including vanilla test, rspec, shoulda etc.) in vim¬
  Plug 'janko-m/vim-test', { 'for': 'ruby' }
  Plug 'tpope/vim-liquid', { 'for': 'liquid' }
  Plug 'tpope/vim-haml', { 'for': 'haml' }
  Plug 'slim-template/vim-slim', { 'for': 'slim' }
  Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
  Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
  Plug 'JamshedVesuna/vim-markdown-preview', { 'for': 'markdown' }
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
  Plug 'alampros/vim-styled-jsx', { 'for':  ['javascript.jsx', 'javascript', 'jsx'] }
  " JSON Formatter
  Plug 'XadillaX/json-formatter.vim', { 'for': 'json' }
  " Vim filetype and tools support for Crystal language
  Plug 'rhysd/vim-crystal', { 'for': 'crystal' }
  " Mustache and handlebars mode
  Plug 'mustache/vim-mustache-handlebars', { 'for': 'handlebars' }
  Plug 'hhsnopek/vim-sugarss', { 'for': 'sugarss' }
  " Asynchronous Lint Engine
  Plug 'w0rp/ale', { 'for':  ['javascript.jsx', 'javascript', 'jsx', 'ruby'] }

  " Colorschemes
  " ------------
  Plug '~/Code/misc/vim-colors-clearance'
  " Plug 'cseelus/vim-colors-clearance'
  Plug 'imeos/vim-colors-solstice'
  Plug '~/Code/misc/vim-colors-lanai'
  Plug '~/Code/misc/vim-colors-ornate'
  Plug '~/Code/misc/vim-colors-lucid'
  Plug '~/Code/misc/vim-colors-reactjs'
  Plug '~/Code/misc/vim-colors-tone'
  Plug 'cseelus/vim-colors-icicle'
  Plug 'chriskempson/base16-vim'
  Plug 'colepeters/spacemacs-theme.vim'
  Plug 'liuchengxu/space-vim-dark'
  Plug 'flazz/vim-colorschemes'
  Plug 'yuttie/hydrangea-vim'

  call plug#end()
endfunction
