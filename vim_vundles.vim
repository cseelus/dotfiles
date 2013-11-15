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

" yankring - effortless sanity for pasting. every time you yank something it goes into a buffer. after hitting p to paste, use ctrl-p or ctrl-n to cycle through the paste options. great for when you accidentally overwrite your yank with a delete.
" 
" ConqueTerm - embedded fully colorful shell inside your vim
" 
" html-escape - ,he and ,hu to escape and unescape html
" 
" Gundo - visualize your undos - pretty amazing plugin. Hit ,u with my keymappings to trigger it, very user friendly
" 
" vim-indent-guides - visual indent guides, off by default
" 
" AnsiEsc - inteprets ansi color codes inside log files. great for looking at Rails logs
" 
" vim-session: use :SaveSession and :OpenSession to come back to your saved window layout
" 
" IndexedSearch - when you do searches will show you 'Match 2 of 4' in the status line
" 
" SearchComplete - tab completion in the / search window
" 
" repeat - adds . (repeat command) support for complex commands like surround.vim. i.e. if you perform a surround and hit ., it will Just Work (vim by default will only repeat the last piece of the complex command)
" 
" matchit - helps with matching brackets, improves other plugins

" General vim improvements
" ------------------------
" As soon as you type a character that could have a matching (closing) counterpart, vim automatically puts its counterpart in front of your cursor
Bundle 'twe4ked/vim-peepopen'
Bundle 'airblade/vim-rooter'
Bundle 'Townk/vim-autoclose'
Bundle 'tpope/vim-surround'
Bundle 'ap/vim-css-color'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tomtom/tcomment_vim'
Bundle 'Shougo/neocomplete.vim'
Bundle 'tristen/vim-sparkup'

" Optimizations for specific languages/tools
" ------------------------------------------
" A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more
Bundle 'tpope/vim-ragtag'
" Easy navigation of the Rails directory structure, interface to rake + rails, much much more: https://github.com/tpope/vim-rails
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'kchmck/vim-coffee-script'
Bundle 'plasticboy/vim-markdown'
Bundle 'LaTeX-Box-Team/LaTeX-Box'

" Colorschemes
" ------------
Bundle 'flazz/vim-colorschemes'
Bundle 'file:///Users/chris/Code/misc/sleepwalker-vim'


" Filetype plugin indent on is required by vundle
filetype plugin indent on       " required for vundle
