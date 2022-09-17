-- Plugin configuration
-- =====================================================================
--
-- Contents
--   - Bootstrap packer
--   - Packages
--   - Includes for individual package settings
--
-- This file can be loaded by calling `lua require('plugins')` from your init.vim


-- Bootstrap packer
-- ---------------------------------------------------------------------
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Configure Neovim to automatically run :PackerSync whenever this file is updated
vim.cmd([[autocmd BufWritePost packer.lua source <afile> | PackerSync]])


-- Packages
-- ---------------------------------------------------------------------
return require('packer').startup({function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- General improvements
  -----------------------
  -- A blazing fast and easy to configure Neovim statusline written in Lua
  use 'nvim-lualine/lualine.nvim'
  -- Fast and Easy Find and Replace Across Multiple Files
  use 'mhinz/vim-grepper'
  -- Powerful autopairs
  use 'windwp/nvim-autopairs'
  --Highlight color hex codes and color names
  -- use 'norcalli/nvim-colorizer.lua'
  use 'DarwinSenior/nvim-colorizer.lua'
  --Helpers for UNIX like :Rename, :Delete, :Chmod, :SudoWrite
  use 'tpope/vim-eunuch'
  --A tree explorer plugin
  use 'kyazdani42/nvim-web-devicons' --for file icons
  use 'kyazdani42/nvim-tree.lua'
  --The fancy start screen for Vim
  use 'mhinz/vim-startify'
  --Shows a git diff in the gutter (sign column)
  use 'lewis6991/gitsigns.nvim'
  --Gaze deeply into unknown regions using the power of the moon
  use {
     'nvim-telescope/telescope.nvim',
     requires = 'nvim-lua/plenary.nvim'
  }
  -- Add indentation guides even on blank lines
  use 'lukas-reineke/indent-blankline.nvim'
  --Microsoft LSP protocol support
  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
  }
  --Autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  --Snippets
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  -- Highlight, edit, and navigate code using a fast incremental parsing library
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  --Change background depending on systems current color mode (dark/light)
  use {
    'will/bgwinch.nvim',
    config = function() require('bgwinch').setup() end
  }

  -- Editing
  ----------
  --Toggle comments in Neovim, using built in commentstring filetype option
  use 'terrortylor/nvim-comment'
  -- end certain keywords (like 'do', 'if') in some languages automatically
  use 'tpope/vim-endwise'
  --Creates "surroundings--like parentheses, brackets, quotes,
  --XML tags, and more. The plugin provides mappings to easily delete,
  --change and add such surroundings in pairs.
  use 'tpope/vim-surround'
  --A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more
  use 'tpope/vim-ragtag'
  --Adds . (repeat command) support for complex commands like surround.vim
  use 'tpope/vim-repeat'
  --http://editorconfig.org support
  use 'editorconfig/editorconfig-vim'
  --True Sublime Text style multiple selections for Vim
  use 'mg979/vim-visual-multi'
  -- Code formatter
  use 'mhartington/formatter.nvim'
  -- Strip trailing whitespace
  use 'axelf4/vim-strip-trailing-whitespace'
  -- Github Copilot
  use 'github/copilot.vim'

  --Syntax & optimizations for specific languages
  -----------------------------------------------
  use 'elentok/plaintasks.vim'
  use 'slim-template/vim-slim'
  use 'ekalinin/Dockerfile.vim'
  use 'kchmck/vim-coffee-script'

  --Colorschemes
  --------------
  use 'cseelus/vim-colors-lucid'
  use 'projekt0n/github-nvim-theme'
  use '~/Code/misc/nvim-colors-tone'
  use 'jim-at-jibba/ariake-vim-colors'
end,
config = {
  -- Use a floating window for command outputs
  display = {
    open_fn = require('packer.util').float,
  }
}})
