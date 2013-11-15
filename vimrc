" .vimrc
" ===========================================================================

set nocompatible                " Turn off compability mode with Vi


" Vundle initialization
" ---------------------------------------------------------------------------

if filereadable(expand("~/.dotfiles/vim_vundles.vim"))
  source ~/.dotfiles/vim_vundles.vim
endif


" General
" ---------------------------------------------------------------------------

" Keep unsaved files open in buffers
set hidden

set noerrorbells                " No beeps
set backspace=indent,eol,start  " Makes backspace key more powerful
set showcmd                     " Show me what I'm typing
set noshowmode                  " Show/Hide current mode
set relativenumber              " Set relative line number
set number                      " Enables hybrid line number mode

set noswapfile                  " Dont use swapfile
set nobackup                    " Dont create annoying backup files

set splitright                  " Split vertical windows to the right
set splitbelow                  " Split horizontal windows below

set encoding=utf-8              " Set default encoding to UTF-8
set autowrite                   " Autosave before :next, :make etc.
set autoread                    " Autoreread changed files w/o asking
set laststatus=2

set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats


" Indentation settings
" ---------------------------------------------------------------------------

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Dont wrap lines
set linebreak    "Wrap lines at convenient points


" Text wrapping
" ---------------------------------------------------------------------------

set wrap
set linebreak
set nolist
set textwidth=80
set foldcolumn=0
set columns=85
set formatoptions=qrn1


" Searching
" ---------------------------------------------------------------------------

"nnoremap / /\v
"vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
" nnoremap <tab> %
" vnoremap <tab> %


" Sessions
" ---------------------------------------------------------------------------

set ssop-=options               " Dont store global and local values in a session
set ssop-=folds                 " Dont store folds

set scrolloff=10                " Start scrolling X lines above/below cursor
syntax enable
set background=dark
colorscheme clearance
" colorscheme h80
set t_Co=256                    " Set 256 colors in terminal mode


" Persistent undo
" ---------------------------------------------------------------------------
" Keep undo history across sessions, by storing in file.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile


" Custom key mappings
" ---------------------------------------------------------------------------

" Sane vertical moving on displayed lines
nnoremap j gj
nnoremap k gk

" Bring cursor back after repeating a command
nmap . .`[

" Allow saving of files as sudo
"command W! w !sudo tee % >/dev/null

:let mapleader = ","

" Edit VIMRC
nmap <leader>v :e $MYVIMRC<CR>

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


" Wildmode completion
" ---------------------------------------------------------------------------

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif


" MacVim modifications (color, shortcuts, etc.. "
" ---------------------------------------------------------------------------

highlight SignColumn guibg=#272822

if has("gui_macvim")
  " No toolbars, menu or scrollbars in the GUI
  set guifont=Menlo\ for\ Powerline:h14
  set transparency=5
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

  " Go to file
  " macm File.New\ Tab key=<nop>
  " "nmap <D-t> :CtrlP<cr>

  " Move  with cmd+alt
  nmap <D-M-RIGHT> gt
  nmap <D-M-LEFT> gT
endif


" Plugins
" ---------------------------------------------------------------------------

" netrw
let g:netrw_banner=0

" VIM Markdown
let g:vim_markdown_folding_disabled=1

" Make ragtag globally available
let g:ragtag_global_maps=1

" Comment lines with cmd+/
map <D-/> :TComment<cr>
vmap <D-/> :TComment<cr>gv

" Neocomplete
let g:neocomplete#enable_at_startup=1
let g:neocomplete#sources#syntax#min_keyword_length=3
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? neocomplete#close_popup() : "\<TAB>"
" Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() . "\<Space>" : "\<Space>"

" LaTeX-Box
let g:LatexBox_latexmk_preview_continuously=1
let g:LatexBox_custom_indent=0

" Surround
" --------
" Ruby
" Use v or # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" v...s#  Wrap the selection in #{}
let g:surround_113 = "#{\r}"   " v
let g:surround_35  = "#{\r}"   " #
" Select text in an ERb file with visual mode and then press s- or s=
" Or yss- to do entire line.
let g:surround_45 = "<% \r %>"    " -
let g:surround_61 = "<%= \r %>"   " =

" Vim Session
" -----------
" let g:session_autosave=1
" let g:session_autosave_periodic=1
" let g:session_autoload=1
