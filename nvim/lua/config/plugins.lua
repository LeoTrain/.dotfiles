require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "clangd" }, -- Install pyright for Python and clangd for C
})

require("lazy").setup({
  { "neovim/nvim-lspconfig" }, -- LSP config
  { "williamboman/mason.nvim" }, -- Language Server Manager
  { "williamboman/mason-lspconfig.nvim" }, -- Integration between Mason and LSPconfig
})
