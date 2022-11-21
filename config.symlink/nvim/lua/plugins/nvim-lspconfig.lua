require("mason").setup()
require("mason-lspconfig").setup(
  {
    ensure_installed = {"eslint", "ruby_ls"}
  }
)

-- :h mason-lspconfig-automatic-server-setup
require("mason-lspconfig").setup_handlers {
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  function(server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {}
  end
}

vim.lsp.handlers["textDocument/publishDiagnostics"] =
  vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    underline = true,
    virtual_text = false,
    signs = true,
    update_in_insert = false
  }
)
vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float({focusable = false})]]
vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]
