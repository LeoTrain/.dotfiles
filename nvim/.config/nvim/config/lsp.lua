-- config/lsp.lua
-- Minimal LSP configuration

local lspconfig = require("lspconfig")
lspconfig.ts_ls.setup({})
lspconfig.pyright.setup({})
lspconfig.rust_analyzer.setup({})
-- Configure additional LSP servers as needed

