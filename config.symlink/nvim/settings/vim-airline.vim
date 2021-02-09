" https://github.com/vim-airline/vim-airline#integrating-with-powerline-fonts
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

function! AirlineInit()
  let g:airline_section_a = airline#section#create(['mode',' ','branch'])
  let g:airline_section_b = airline#section#create_left(['filetype'])
  let g:airline_section_c = airline#section#create_left(['filetype'])
endfunction

" Get rid of empty sections (orange warning section triangle to the right)
let g:airline_skip_empty_sections = 1

" Custom Sections
function! AirlineColors(...)
  call a:1.add_section('bla', '')
endfunction

call airline#add_statusline_func('AirlineColors')

let g:airline_theme = 'tone'

" Show/Hide mode like -- INSERT --, useful with vim-airline
set noshowmode
