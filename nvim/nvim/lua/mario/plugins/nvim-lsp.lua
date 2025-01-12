return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})
		lspconfig.pylsp.setup({
			capabilities = capabilities,
		})
		lspconfig.bashls.setup({
			capabilities = capabilities,
		})

		vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "lsp hover" })
		vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "lsp definition" })
		vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, { desc = "lsp references" })
		vim.keymap.set("n", "<leader>lre", vim.lsp.buf.rename, { desc = "lsp rename" })
		vim.keymap.set("n", "<leader>lde", vim.lsp.buf.declaration, { desc = "lsp declaration" })
		vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, { desc = "lsp code action" })
	end,
}
