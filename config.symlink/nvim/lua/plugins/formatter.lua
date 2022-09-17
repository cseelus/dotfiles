-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for each filetype go here and will be executed in order
    -- Check github.com/mhartington/formatter.nvim/blob/master/lua/formatter/filetypes for available formatters filetypes
    css = {
      -- "formatter.filetypes.css" defines default configurations for the "lua" filetype
      require("formatter.filetypes.css").prettier
    },
    eruby = {
      -- You can also define your own configuration
      function()
        return {
          exe = "erb-format",
          args = {
            util.escape_path(util.get_current_buffer_file_path()),
          },
          stdin = true,
        }
      end
    },
    html = {
      require("formatter.filetypes.html").prettier
    },
    javascript = {
      function()
        return {
          exe = "prettier",
          args = {
            "--stdin-filepath",
            util.escape_path(util.get_current_buffer_file_path()),
            "--no-semi",
          },
          stdin = true,
          try_node_modules = true
        }
      end
    },
    lua = {
      function()
        return {
          exe = "luafmt",
          args = {
            "--stdin",
            "--indent-count 2"
          },
          stdin = true
        }
      end
    },
    -- Use the special "*" filetype for defining formatter configurations on any filetype
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any filetype
      function()
        return {exe = "sed", args = {"-i", "''", "'s/[	 ]*$//'"}}
      end
    }
  }
}
