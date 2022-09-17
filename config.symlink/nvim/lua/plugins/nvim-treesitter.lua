require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "javascript", "css", "html", "json", "latex", "lua", "markdown", "ruby", "scss", "typescript"  },
  highlight = {
    enable = true,              -- false will disable the whole extension
    --disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
