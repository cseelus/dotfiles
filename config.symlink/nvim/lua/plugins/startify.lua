vim.g.startify_files_number        = 8
vim.g.startify_session_persistence = 1
vim.g.startify_session_autoload    = 1
vim.g.startify_enable_special      = 1

vim.g.startify_list_order = { 
  { '   Bookmarks' },
  'bookmarks',
  {'   Recently opened:'},
  'files',
  {'   Recently opened in current directory:'},
  'dir',
  {'   Sessions'},
  'sessions',
}

vim.g.startify_skiplist = { 
  'COMMIT_EDITMSG',
  'bundle/.*/doc',
  '.vimgolf',
}

vim.g.startify_bookmarks = {
  '~/Documents/Misc/ToDo.todo',
  '~/Documents/Misc/Journal.yml',
  '~/.dotfiles/config.symlink/nvim/lua/plugins/startify.lua',
  '~/.dotfiles/config.symlink/nvim/init.lua',
  '~/.dotfiles/config.symlink/nvim/lua/plugins/packer.lua',
  '~/Code/misc/nvim-colors-tone/lua/tone/init.lua',
  '~/Code/ruby/ruby-syntax-highlight-code-example.rb',
}
