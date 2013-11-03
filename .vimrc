" .vimrc
" ---------------------------------------------------------------------------

set nocompatible                " Turn off compability mode with Vi
filetype off                    " required for vundle

" Bundles
" ---------------------------------------------------------------------------

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-powerline'
Bundle 'ap/vim-css-color'
" "Bundle 'wincent/Command-T'
Bundle 'twe4ked/vim-peepopen'
Bundle 'plasticboy/vim-markdown'
Bundle 'airblade/vim-rooter'
Bundle 'tpope/vim-surround'
Bundle 'tristen/vim-sparkup'
Bundle 'SirVer/ultisnips'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-haml'
Bundle 'kchmck/vim-coffee-script'
Bundle 'terryma/vim-multiple-cursors'
" vim-scripts repos
Bundle 'AutoClose' 
" git repos on your local machine (ie. when working on your own plugin)
Bundle 'file:///Users/chris/Code/misc/sleepwalker-vim'

filetype plugin indent on       " required for vundle


" vim config
" ---------------------------------------------------------------------------

" For starters … moving the right way
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Sane vertical moving on displayed lines
nnoremap j gj
nnoremap k gk

" Bring cursor back after repeating a command
nmap . .`[

" Allow saving of files as sudo
"command W! w !sudo tee % >/dev/null

:let mapleader = ","

" Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set autoindent
set ruler
" Keep unsaved files open in buffer
set hidden

" Text wrapping
set wrap
set linebreak
set nolist
set textwidth=80
set foldcolumn=0
set columns=85
set formatoptions=qrn1
""set cursorline                  " Highlight current line

set noerrorbells                " No beeps
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set noshowmode                  " Show/Hide current mode.
set nonumber
set relativenumber              " Set relative line number

set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set encoding=utf-8              " Set default encoding to UTF-8
set autowrite                   " Automatically save before :next, :make etc.
set autoread                    " Automatically reread changed files without asking me anything
set laststatus=2

set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats

" Searching
"nnoremap / /\v
"vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Sessions
set ssop-=options               " do not store global and local values in a session
set ssop-=folds                 " do not store folds

set scrolloff=5                 " always 5 lines above/below cursor
colorscheme sleepwalker
set t_Co=256                    " set 256 colors in terminal mode

" Remove trailing white space for certain file types
autocmd FileType c,php,css,sass,scss,html,rb autocmd BufWritePre <buffer> :%s/\s\+$//e


" Statusline
" ---------------------------------------------------------------------------

hi User1 guibg=black guifg=#ececec 

set statusline=
set statusline+=%1*            "switch to User1 highlight
"set statusline+=%t            "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'},\  "file encoding
set statusline+=%{&ff}]\ \     "file format
set statusline+=%h             "help file flag
set statusline+=%m             "modified flag
set statusline+=%r             "read only flag
set statusline+=%y             "filetype
set statusline+=%=             "left/right separator
set statusline+=Line\ %l/%L,\  "cursor line/total lines
set statusline+=Column\ %c,    "cursor column
set statusline+=\ %P\          "percent through file


" MacVim modifications (color, shortcuts, etc.. "
" ---------------------------------------------------------------------------

highlight SignColumn guibg=#272822

if has("gui_macvim")
  " No toolbars, menu or scrollbars in the GUI
  set guifont=Menlo\ for\ Powerline:h14
  set transparency=10
  set linespace=3
  " "set clipboard+=unnamed
  set vb t_vb=
  set guioptions-=m  "no menu
  set guioptions-=T  "no toolbar
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r  "no scrollbar
  set guioptions-=R

  set showtabline=2  "always show tabbar, so no resizing occurs

  " Open ctrlp with cmd+p
  " macmenu File. Print key=<nop>
  let g:ctrlp_map = '<D-p>'

  " Open Go to symbol (via tags)
  nmap <D-r> :MyCtrlPTag<cr>
  nmap <D-R> :CtrlPBufTagAll<cr>

  " Go to file
  " macm File.New\ Tab key=<nop>
  " "nmap <D-t> :CtrlP<cr>

  " Move  with cmd+alt
  nmap <D-M-RIGHT> gt
  nmap <D-M-LEFT> gT

  " Comment lines with cmd+/
  map <D-/> :TComment<cr>
  vmap <D-/> :TComment<cr>gv

  " Indent lines with cmd+[ and cmd+]
  nmap <D-]> >>
  nmap <D-[> <<
  vmap <D-[> <gv
  vmap <D-]> >gv

  "switch between tabs with cmd+1, cmd+2,..."
  map <D-1> :tabfirst<Cr>
  map <D-2> :tabfirst<Cr>gt
  map <D-3> :tabfirst<Cr>3gt
  map <D-4> :tabfirst<Cr>4gt
  map <D-5> :tabfirst<Cr>5gt
  map <D-6> :tabfirst<Cr>6gt
  map <D-7> :tabfirst<Cr>7gt
  map <D-8> :tabfirst<Cr>8gt
  map <D-9> :tabfirst<Cr>9gt

  imap <D-1> <esc>:tabfirst<Cr>
  imap <D-2> <esc>:tabfirst<Cr>gt
  imap <D-3> <esc>:tabfirst<Cr>3gt
  imap <D-4> <esc>:tabfirst<Cr>4gt
  imap <D-5> <esc>:tabfirst<Cr>5gt
  imap <D-6> <esc>:tabfirst<Cr>6gt
  imap <D-7> <esc>:tabfirst<Cr>7gt
  imap <D-8> <esc>:tabfirst<Cr>8gt
  imap <D-9> <esc>:tabfirst<Cr>9gt

  " Stop completion with enter, in addition to default ctrl+y
  " imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"

endif


" vim plugins
" ---------------------------------------------------------------------------

" VIM Markdown
let g:vim_markdown_folding_disabled=1

" Make ragtag globally available
let g:ragtag_global_maps = 1

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
