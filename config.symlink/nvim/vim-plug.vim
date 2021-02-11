" Plugins {{{
let g:plug_window = 'botright new'

function! VimrcLoadPlugins()
  " Install vim-plug if not available {{{
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
  " }}}

  call plug#begin()

  " General NeoVIM improvements
  " ---------------------------
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Change the working directory to the project root when you open
  " a file
  Plug 'airblade/vim-rooter'
  " 🌸 A command-line fuzzy finder written in Go
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  " Fast and Easy Find and Replace Across Multiple Files
  Plug 'dkprice/vim-easygrep'
  " Tame the quickfix window
  Plug 'romainl/vim-qf'
  " Adds file type glyphs/icons to many popular Vim plugins such as:
  " NERDTree, vim-airline, unite, vim-startify and many more
  Plug 'ryanoasis/vim-devicons'
  " Highlight color hex codes and color names
  Plug 'chrisbra/Colorizer'
  " Helpers for UNIX like :Rename, :Delete, :Chmod, :SudoWrite
  Plug 'tpope/vim-eunuch'
  " Allows you to save files into directories that do not exist yet.
  Plug 'DataWraith/auto_mkdir'
  " Show 'Match X of X' for searched term
  Plug 'vim-scripts/IndexedSearch'
  " Copy/past history; killring-alike plugin for neovim with no default
  " mappings
  Plug 'bfredl/nvim-miniyank'
  " A tree explorer plugin for vim.
  Plug 'scrooloose/nerdtree'
  " Display tags in a window, ordered by scope
  Plug 'majutsushi/tagbar'
  " The fancy start screen for Vim
  Plug 'mhinz/vim-startify'
  " Shows a git diff in the gutter (sign column) and stages/undoes hunks
  Plug 'airblade/vim-gitgutter'
  " Enhanced terminal integration
  Plug 'wincent/terminus'
  " Intellisense engine for vim8 & neovim, full language server
  " protocol support
  Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': ':CocInstall coc-solargraph coc-tsserver coc-eslint coc-json coc-css'}
  " Brings physics-based smooth scrolling to the Vim world!
  " Plug 'yuttie/comfortable-motion.vim'
  " Zen mode
  Plug 'junegunn/goyo.vim'

  " Editing
  " -------
  " 'end' certain keywords (like 'do', 'if') in some languages automatically
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-commentary'
  " Creates "surroundings" like parentheses, brackets, quotes,
  " XML tags, and more. The plugin provides mappings to easily delete,
  " change and add such surroundings in pairs.
  Plug 'tpope/vim-surround'
  " Adds . (repeat command) support for complex commands like surround.vim
  Plug 'tpope/vim-repeat'
  " The missing motion for Vim
  Plug 'justinmk/vim-sneak'
  " http://editorconfig.org support
  Plug 'sgur/vim-editorconfig'
  " True Sublime Text style multiple selections for Vim
  Plug 'mg979/vim-visual-multi'
  " Insert or delete brackets, parens, quotes in pairs
  Plug 'jiangmiao/auto-pairs'
  " Hardtime helps you break that annoying habit vimmers have of scrolling up and down the page using jjjjj and kkkkk but without compromising the rest of our vim experience.
  " Plug 'takac/vim-hardtime'

  " Syntax & optimizations for specific languages
  " ---------------------------------------------
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
  " Easy navigation of the Rails directory structure, interface to
  " rake + rails, much much more: https://github.com/tpope/vim-rails
  Plug 'tpope/vim-rails', { 'for': 'ruby' }
  " Run ruby test (including vanilla test, rspec, shoulda etc.) in vim¬
  Plug 'tpope/vim-liquid', { 'for': 'liquid' }
  Plug 'tpope/vim-haml', { 'for': 'haml' }
  Plug 'slim-template/vim-slim', { 'for': 'slim' }
  Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
  Plug 'gabrielelana/vim-markdown', { 'for': 'markdown' }
  " Plug 'JamshedVesuna/vim-markdown-preview', { 'for': 'markdown' }
  Plug 'LaTeX-Box-Team/LaTeX-Box', { 'for': 'tex' }
  " Vim support for editing fish scripts
  Plug 'dag/vim-fish', { 'for': 'fish' }
  Plug 'elentok/plaintasks.vim', { 'for': 'plaintasks' }
  Plug 'toyamarinyon/vim-swift', { 'for': 'swift' }
  Plug 'digitaltoad/vim-pug', { 'for': 'jade, pug' }
  " Emblem.js (Ember)
  " Vastly improved Javascript indentation and syntax support
  Plug 'pangloss/vim-javascript', { 'for':  ['javascript.jsx', 'javascript', 'jsx'] }
  Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['javascript.jsx', 'javascript', 'jsx'] }
  " Bundle for https://github.com/zeit/styled-jsx
  Plug 'alampros/vim-styled-jsx', { 'for':  ['javascript.jsx', 'jsx'] }
  " Svelte JavaScript syntax highlighting
  Plug 'evanleck/vim-svelte'
  " Typescript syntax files
  Plug 'HerringtonDarkholme/yats.vim', { 'for': ['typescript.tsx', 'typescript', 'tsx'] }
  " A Vim plugin for TypeScript
  Plug 'Quramy/tsuquyomi', { 'for': ['typescript.tsx', 'typescript', 'tsx'] }
  " GraphQL
  Plug 'jparise/vim-graphql', { 'for':  ['javascript.jsx', 'javascript', 'jsx'] }
  " JSON Formatter
  Plug 'XadillaX/json-formatter.vim', { 'for': 'json' }
  " Vim filetype and tools support for Crystal language
  Plug 'rhysd/vim-crystal', { 'for': 'crystal' }
  " Mustache and handlebars mode
  Plug 'mustache/vim-mustache-handlebars', { 'for': 'handlebars' }
  Plug 'hhsnopek/vim-sugarss', { 'for': 'sugarss' }
  Plug 'pantharshit00/vim-prisma', { 'for': 'prisma' }

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
  " Plug 'cseelus/vim-colors-tone'
  Plug 'cseelus/vim-colors-icicle'
  Plug 'yuttie/hydrangea-vim'
  Plug 'atelierbram/Base2Tone-vim'
  Plug 'flazz/vim-colorschemes'

  call plug#end()
endfunction
