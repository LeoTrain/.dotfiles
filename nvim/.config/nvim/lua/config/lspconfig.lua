require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"clangd", -- C
		"omnisharp", -- C#
		"pyright", -- Python
		"ts_ls", -- JavaScript
		"jdtls", -- Java
		"lua_ls", -- Lua
		"vimls", -- Vim
	},
})

-- Configurer les serveurs LSP
local lspconfig = require("lspconfig")

lspconfig.clangd.setup({})
lspconfig.omnisharp.setup({
	cmd = { "omnisharp" }, -- Assure-toi d'avoir installé OmniSharp
	on_attach = function(client, bufnr)
		if client.server_capabilities.documentFormattingProvider then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format({ async = true })")
		end
	end,
})
lspconfig.pyright.setup({})
lspconfig.ts_ls.setup({})
lspconfig.jdtls.setup({})
lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" }, -- Pour ne pas avoir de fausses alertes sur 'vim'
			},
		},
	},
})
lspconfig.vimls.setup({
	on_attach = function(client, bufnr)
		if client.server_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
		end
	end,
})
