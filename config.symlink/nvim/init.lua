-- Neovim configuration
-- =====================================================================
--
-- Contents
--   - Load plugins
--   - General
--   - Custom key mappings/shortcuts
--   - Plugin settings
--   - Theming


-- Functions
-- ---------------------------------------------------------------------

-- Return to last edit position when opening files (see :help restore-cursor)
_G._autocommands = {} -- or wherever you prefer
_G._autocommands.line_return = function()
  local line = vim.fn.line
  if line("'\"") >= 1 and line("'\"") <= line("$") then
    vim.cmd("normal! g`\"")
  end
end

vim.api.nvim_exec([[
autocmd BufReadPost * lua _autocommands.line_return()
]], false)

-- Highlight on yank
vim.api.nvim_exec([[
au TextYankPost * lua vim.highlight.on_yank {higroup="TabLineFill", timeout=150, on_visual=true}
]], false)


-- Show syntax highlighting groups
show_highlight = function()
  -- TODO: show :TSHighlightCapturesUnderCursor, if Treesitter
  if vim.fn.exists(':TSHighlightCapturesUnderCursor') then
    vim.cmd('TSHighlightCapturesUnderCursor')
    return
  end
  local groups = ' '
  for _,val in pairs(vim.fn.synstack(vim.fn.line('.'), vim.fn.col('.'))) do
    groups = groups .. vim.fn.synIDattr(val, 'name') .. ' '
  end
  print(groups)
end


-- General
-- ---------------------------------------------------------------------

-- Define internal shortcuts for this file
local a = vim.api
local c = vim.cmd
local o = vim.opt

-- Do not save when switching buffers
o.hidden = true

-- Show Current line number in current line, relative line numbers elswhere 
-- and set numbers width
o.number = true
o.relativenumber = true
o.numberwidth = 7

-- Sign column
o.signcolumn = 'yes'

-- If this many milliseconds nothing is typed the swap file will be written to disk (used for lsp hover)
o.updatetime = 300

-- Display tabs and trailing spaces visually
o.list = true
o.listchars = { nbsp = '▒', tab = '▸ ', extends = '>', precedes = '<', trail = '·' }

-- Text wrapping
o.breakindent = true -- Wrapped lines will continue visually indented
o.linebreak = true
o.showbreak = '  '

-- Use spaces instead of tabs
o.expandtab = true
 
-- Be smart when using tabs
o.smarttab = true

-- 1 tab == 2 spaces
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2

-- Case insensitive searching UNLESS /C or capital letter in search and also replace each occurance per line by default
o.ignorecase = true
o.smartcase = true
o.gdefault = true

--Incremental live completion
o.inccommand = 'nosplit'

-- Use system clipboard
o.clipboard = 'unnamedplus'

-- Don't use swapfile
o.swapfile = false

-- Don't show current mode in command line (like -- INSERT --, …)
o.showmode = false

-- Enable mouse for all modes
o.mouse = 'a'

-- Save undo history
c [[set undofile]]

-- jbuilder syntax highlighting
vim.api.nvim_exec([[
au BufNewFile,BufRead *.json.jbuilder set ft=ruby
]], false)


-- Custom key mappings/shortcuts
-- ---------------------------------------------------------------------

-- Remap comma as leader key
a.nvim_set_keymap('', ',', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Leader shortcuts
local leader_remap = function(keys, mapping)
  a.nvim_set_keymap('n', '<leader>' .. keys, mapping, { noremap = true, silent = true })
end
-- Fast saving
leader_remap('w', '<cmd>w!<CR>')
-- Close tag
leader_remap('t', '<C-X><CR>')
-- Edit/Source VIMRC
leader_remap('ve', '<cmd>e $MYVIMRC<CR>')
leader_remap('vs', '<cmd>source $MYVIMRC<CR>')
-- Switch between the last two files by pressing leader key twice
leader_remap('<leader>', '<c-^>')
-- Telescope
leader_remap('t', '<cmd>lua require("telescope.builtin").find_files()<CR>')
leader_remap('b', '<cmd>lua require("telescope.builtin").buffers()<CR>')
leader_remap('p', '<cmd>lua require("telescope.builtin").commands()<CR>')
leader_remap('g', '<cmd>lua require("telescope.builtin").live_grep()<CR>')
-- File tree
leader_remap('f', '<cmd>NvimTreeToggle<CR>')
-- Remap HTML tag closing (vim ragtag)
leader_remap('et', '<cmd><C-X><CR>')
-- Startify
leader_remap('s', '<cmd>Startify<CR>')
-- Show highlight group
leader_remap('i', '<cmd>lua show_highlight()<CR>')

-- Remap j,k for sane vertical moving on wrapped lines
a.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
a.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Escape from search
a.nvim_set_keymap('n', '<ESC>', '<cmd>nohlsearch<CR>', { noremap = true, silent = true })


-- Theming
-- ---------------------------------------------------------------------

-- Still needed for modern colorschemes
o.termguicolors = true

-- Pseudo-transparency for floating windows
o.winblend = 10

c [[colorscheme tone]]
-- Example config in Lua
--require("github-theme").setup({
--  themeStyle = 'light',
--})


-- Load plugins (from /lua/plugins/init.lua)
-- ---------------------------------------------------------------------

require('plugins/packer')

require('plugins/nvim-colorizer')
require('plugins/formatter')
require('plugins/gitsigns')
require('plugins/indent-blankline')
require('plugins/lualine')
require('plugins/nvim-autopairs')
require('plugins/nvim-cmp')
require('plugins/nvim-comment')
require('plugins/nvim-devicons')
require('plugins/nvim-lspconfig')
require('plugins/nvim-tree')
require('plugins/nvim-treesitter')
require('plugins/startify')
require('plugins/telescope')
require('plugins/vim-easygrep')

c[[hi SpellBad   guisp=red    gui=undercurl guifg=red guibg=NONE ctermfg=NONE ctermbg=NONE term=undercurl cterm=undercurl]]
