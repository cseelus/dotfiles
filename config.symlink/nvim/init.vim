" Neovim configuration
" ======================================================================
"
" Contents
"   - Load plugins
"   - General
"   - Indentation settings
"   - Text wrapping
"   - Searching
"   - Theming
"   - Persistent undo
"   - Custom key mappings/shortcuts
"   - Statusline
"   - Functions
"   - Plugin settings

" Extract the Neovim config directory from $MYVIMRC
let g:rc_dir = strpart($MYVIMRC, 0, strridx($MYVIMRC, '/'))


" Load plugins
" ----------------------------------------------------------------------

" Load plugin file …
exec 'source '.g:rc_dir.'/vim-plug.vim'
" … and execute
call VimrcLoadPlugins()


" General
" ----------------------------------------------------------------------

" Keep unsaved files open in buffers w/o the need to write
set hidden

" Number of lines for command prompt
set cmdheight=1

" Show line number (alternatively use `relativenumber`)
set number
" Line numbers width (leading whitespace)
set numberwidth=5

" Dont use swapfile
set noswapfile

" Split vertical windows to the right
set splitright
" Split horizontal windows below
set splitbelow

" Prefer Unix over Windows over OS 9 formats
set fileformats=unix,dos,mac

" Set # lines CTRL-D and CTRL-U jumps
set scroll=5
" Start scrolling X lines above/below cursor
set scrolloff=7

" Use System Clipboard"
set clipboard+=unnamedplus

" Timeout for leader key
set timeoutlen=500

" Show/Hide mode like -- INSERT --, useful with vim-airline
set noshowmode

" Dont jump to start of line e.g. when switching buffers
set nostartofline
" Return to last edit position when opening files (see :help restore-cursor)
autocmd BufReadPost *
   \ if line("'\"") > 0 && line("'\"") <= line("$") |
   \   exe "normal! g`\"" |
   \ endif

" Disable line numbers for certain filetypes
autocmd FileType text :set nonumber

" Create folder(s) when :edit(ing) if needed
" autocmd BufNewFile * :exe ': !mkdir -p ' . escape(fnamemodify(bufname('%'),':p:h'),'#% \\')

" Hide the 'Back at original' and 'Match X of Y' when autocompleting
set shortmess+=c

" When this option is set, the screen will not be redrawn while
" executing macros, registers and other commands that have not been
" typed.
set lazyredraw

" Move around the screen freely while in visual block mode to define your selections
set virtualedit=block

" First Tab press (or whatever your wildchar is set to) will expand a
" filename or command in command mode to the longest common string it
" can, and a second press will display a list of all possible
" completions above the command line.
set wildmode=longest,list

" Pseudo-transparency for floating windows
set winblend=10

if $SHELL =~ 'bin/fish'
  set shell=/bin/sh
endif

" Treat _ and - as word separators
" set iskeyword-=_
" set iskeyword-=-

" file encoding
set encoding=utf-8
set fileencoding=utf-8


" Indentation settings
" ----------------------------------------------------------------------

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Do smart autoindenting when starting a new line.
set smartindent


" Display whitespace
set list

" Display tabs and trailing spaces visually
" show ↪ and display the next line if the line exceeds the width of the window
if has("multi_byte")
  " Selection of nice special characters
  " nbsp:▒ ▩ ▨ ▢ ▞ ╳
  " eol:¬,
  set listchars=nbsp:▒,tab:▸\ ,extends:>,precedes:<,trail:·
  let &sbr = nr2char(8618).' '
else
  set listchars=nbsp:+,=tab:>\ ,extends:>,precedes:<,trail:-
  let &sbr = '+++ '
endif

" Remove trailing white space for certain file types on save
autocmd BufWritePre {*.c,*.bib,*.coffee,*.css,*.erb,*.haml,*.html,*.js,*.jsx,*.php,*.py,*.rb,*.sass,*.scss,*.slim,*.svelte,*.swift,*.tex,*.ts,*.tsx,*.vim,*.xml,*.yml} :call <SID>StripTrailingWhitespaces()


" Text wrapping
" ----------------------------------------------------------------------

" Every wrapped line will continue visually indented
set breakindent
"set columns=89                 " window width
set linebreak
" Max width of text that is being inserted, zero value disables this
set textwidth=0
" Number of chars from the right window border where wrapping starts
set wrapmargin=0

" Add a bit extra margin to the left
set foldcolumn=1


" Searching
" ----------------------------------------------------------------------

set ignorecase
set smartcase
set gdefault                   " Use 'g' flag by default with :s/foo/bar/.
set inccommand=split           " Show search/replace in split window
" Enter cleans the search highlight
:nnoremap <ESC> :nohlsearch<cr>


" Theming
" ----------------------------------------------------------------------

set termguicolors " Enable true colors
" Hand down VIM cursor shape to terminal
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
set background=dark
set linespace=5
" Some nice colorschemes
" - dark
" colorscheme 256-grayvim
" colorscheme badcat
" colorscheme base16-default
" colorscheme busybee
" colorscheme clearance
" colorscheme flatcolor
" colorscheme hydrangea
" colorscheme icicle
" colorscheme jellybeans
" colorscheme lanai
" colorscheme lucid
" colorscheme kauai
" colorscheme spacemanspiff
" colorscheme oceanblack
" colorscheme onedark
" colorscheme pencil
" colorscheme solstice
" colorscheme sierra
colorscheme tone
" - light
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

" Show netrw
nmap <leader>e :e.<cr>
" Fast saving
nmap <leader>w :w!<cr>
" Close tag
imap <leader>t <C-X><cr>
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
set statusline+=\ %t\ \ \·                        "tail of the filename
" set statusline+=[%t]\ \                         "file name
set statusline+=\ \ Line\ %l/%L\ (%P),\           "cursor line/total lines (Percent)
set statusline+=Col\ %c\ \                        "cursor column
set statusline+=%=                                "left/right separator
set statusline+=\ \ %{strlen(&fenc)?&fenc:'none'} "file encoding
set statusline+=\ \·\ %{&ff}\ \·\                 "file format
set statusline+=%h                                "help file flag
set statusline+=%r                                "read only flag
set statusline+=%y                                "filetype
set statusline+=%m\                               "modified flag


" Functions
" ----------------------------------------------------------------------

" http://vimcasts.org/episodes/tidying-whitespace/
function! <SID>StripTrailingWhitespaces()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  silent! %s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction

" Show syntax highlighting groups
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunction


" Plugin settings
" ----------------------------------------------------------------------

let g:vim_settings_file = g:rc_dir.'/settings.vim'
if filereadable(expand(g:vim_settings_file))
  exec 'source '.g:vim_settings_file
endif

" TODO remove when that crap works like it should
au BufRead,BufNewFile *.ts   setfiletype typescript
au BufRead,BufNewFile *.tsx   setfiletype typescript

let g:goyo_height=100
