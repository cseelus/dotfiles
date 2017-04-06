let g:lightline = {
  \ 'colorscheme': 'lucid',
  \ 'component': {
  \   'readonly': '%{&readonly?"⭤":""}',
  \ },
  \ 'separator': { 'left': '⮀', 'right': '⮂' },
  \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
  \ }

" let g:airline_powerline_fonts = 1
" let g:airline_theme='lucid'
"
" let g:airline_section_warning = ''
" let g:airline_section_error = ''

" let g:airline_section_b += ' %t '                        "tail of the filename
" let g:airline_section_b += '[%t]\ \'                         "file name
" let g:airline_section_b += '\ \ Line\ %l/%L\ (%P),\'           "cursor line/total lines (Percent)
" let g:airline_section_b +=Col\ %c\ \                        "cursor column
" let g:airline_section_b +=%=                                "left/right separator
" let g:airline_section_b +=\ \ %{strlen(&fenc)?&fenc:'none'} "file encoding
" let g:airline_section_b +=\ \·\ %{&ff}\ \·\                 "file format
" let g:airline_section_b +=%h                                "help file flag
" let g:airline_section_b +=%r                                "read only flag
" let g:airline_section_b +=%y                                "filetype
" let g:airline_section_b +=%m\                               "modified flag
