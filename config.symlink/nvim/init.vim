" Neovim configuration
" ======================================================================

" Load plugins
source $HOME/.config/nvim/vim-plug.vim


" General
" ----------------------------------------------------------------------

set hidden                      " Keep unsaved files open in buffers w/o the need to write

set showmode                    " Show/Hide current mode
" set relativenumber              " Set relative line number
set number                      " Show line number
set numberwidth=5               " Line numbers width (leading whitespace)

set noswapfile                  " Dont use swapfile

set splitright                  " Split vertical windows to the right
set splitbelow                  " Split horizontal windows below

set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats

set scroll=9                    " Set # lines CTRL-D and CTRL-U jumps
set scrolloff=5                 " Start scrolling X lines above/below cursor

set clipboard+=unnamed          " Use System Clipboard"

set timeoutlen=500              " Timeout for leader key

set nostartofline               " Dont jump to start of line e.g. when switching buffers
" Return to last edit position when opening files (see :help restore-cursor)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

set shortmess+=c                " Hide the 'Back at original' and 'Match X of Y' when autocompleting

if $SHELL =~ 'bin/fish'
  set shell=/bin/sh
endif


" Indentation settings
" ----------------------------------------------------------------------

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set copyindent
set smartindent

" Display tabs and trailing spaces visually
" show ↪ and display the next line if the line exceeds the width of the window
if has("multi_byte")
  set listchars=nbsp:░,tab:▸\ ,eol:¬,extends:>,precedes:<,trail:·
  let &sbr = nr2char(8618).' '
else
  set listchars=nbsp:+,=tab:>\ ,extends:>,precedes:<,trail:-
  let &sbr = '+++ '
endif

" Remove trailing white space for certain file types on save
autocmd BufWritePre {*.c,*.bib,*.coffee,*.css,*.erb,*.haml,*.html,*.js,*.py,*.rb,*.sass,*.scss,*.slim,*.swift,*.tex,*.vim,*.xml,*.yml} :call <SID>StripTrailingWhitespaces()


" Text wrapping
" ----------------------------------------------------------------------

set breakindent
set list
"set columns=89                 " window width
set linebreak
set textwidth=0
set wrapmargin=0
set foldcolumn=0


" Searching
" ----------------------------------------------------------------------

set ignorecase
set smartcase
set gdefault                   " Use 'g' flag by default with :s/foo/bar/.
" Enter cleans the search highlight
:nnoremap <CR> :nohlsearch<cr>


" Theming
" ----------------------------------------------------------------------

set termguicolors " Enable true colors
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " Hand down VIM cursor shape to terminal
set background=dark
set linespace=5
" Some nice colorschemes
" - dark
" colorscheme 256-grayvim
" colorscheme base16-default
" colorscheme busybee
" colorscheme clearance
" colorscheme flatcolor
" colorscheme icicle
" colorscheme jellybeans
" colorscheme lanai
colorscheme lucid
" colorscheme kauai
" colorscheme spacemanspiff
" colorscheme oceanblack
" colorscheme onedark
" colorscheme pencil
" colorscheme solstice
" - light
" colorscheme flatui
" colorscheme lanai-light
" colorscheme github
" colorscheme google
" colorscheme louver
" colorscheme OceanicNext
" colorscheme tomatosoup


" Persistent undo
" ----------------------------------------------------------------------

" Keep undo history across sessions
set undofile
set undodir=$HOME/.config/nvim-undo


" Custom key mappings/shortcuts
" ----------------------------------------------------------------------

" Sane vertical moving on displayed lines
nnoremap j gj
nnoremap k gk

" Bring cursor back after repeating a command
nmap . .`[

" Allow saving of files as sudo
"command W! w !sudo tee % >/dev/null

let mapleader=","

nmap <leader>e :e.<cr>                    " Show netrw
nmap <silent> <leader>w :w<cr>
imap <leader>t <C-X>/                     " Close tag
:tnoremap <Esc> <C-\><C-n>                " Escape the Terminal
" Edit/Source VIMRC
nmap <silent> <leader>ve :e $MYVIMRC<cr>
nmap <silent> <leader>vr :so $MYVIMRC<cr>
" Switch between the last two files with double leader
nnoremap <leader><leader> <c-^>

" Show syntax highlighting groups for word under cursor
nmap <leader>i :call <SID>SynStack()<cr>


" Statusline
" ----------------------------------------------------------------------

set statusline=
" set statusline+=\ %t,                             "tail of the filename
" set statusline+=[%t]\ \                         "file name
set statusline+=\ Line\ %l/%L\ (%P),\             "cursor line/total lines (Percent)
set statusline+=Column\ %c\ \                     "cursor column
set statusline+=%=                                "left/right separator
set statusline+=\ \ %{strlen(&fenc)?&fenc:'none'} "file encoding
set statusline+=\ \ \|\ \ %{&ff}\ \ \|\ \         "file format
set statusline+=%h                                "help file flag
set statusline+=%r                                "read only flag
set statusline+=%y                                "filetype
set statusline+=%m\                               "modified flag


" Functions
" ----------------------------------------------------------------------

" http://vimcasts.org/episodes/tidying-whitespace/
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" Show syntax highlighting groups
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


" Plugin settings
" ----------------------------------------------------------------------

if filereadable(expand("~/.dotfiles/config.symlink/nvim/settings.vim"))
  source ~/.dotfiles/config.symlink/nvim/settings.vim
endif
