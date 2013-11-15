" .vimrc
" ===========================================================================

set nocompatible                " Turn off compability mode with Vi


" Vundle initialization
" ---------------------------------------------------------------------------

if filereadable(expand("~/.dotfiles/vim_vundles.vim"))
  source ~/.dotfiles/vim_vundles.vim
endif


" vim config
" ---------------------------------------------------------------------------

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
set smartindent
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
set relativenumber              " Set relative line number
set number

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
" nnoremap <tab> %
" vnoremap <tab> %

" Sessions
set ssop-=options               " do not store global and local values in a session
set ssop-=folds                 " do not store folds

set scrolloff=5                 " always 5 lines above/below cursor
syntax enable
set background=dark
colorscheme sleepwalker
set t_Co=256                    " set 256 colors in terminal mode

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

  " Open ctrlp with cmd+p
  " macmenu File. Print key=<nop>
  let g:ctrlp_map = '<D-p>'

  " Go to file
  " macm File.New\ Tab key=<nop>
  " "nmap <D-t> :CtrlP<cr>

  " Move  with cmd+alt
  nmap <D-M-RIGHT> gt
  nmap <D-M-LEFT> gT

  " Indent lines with cmd+[ and cmd+]
  nmap <D-]> >>
  nmap <D-[> <<
  vmap <D-[> <gv
  vmap <D-]> >gv

  " Stop completion with enter, in addition to default ctrl+y
  " imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"
endif


" vim plugins
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
