" There are two different mappings for starting to put from the history. To remap p, 'autoput' mapping should be used. This will first put the same text as unmapped 'p' would have, and still support xp and clipboard=unnamed[plus]:
map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)

" Right after a put, use 'cycle' to go back through history:
map <C-N> <Plug>(miniyank-cycle)
map <C-P> <Plug>(miniyank-cycle) -g
