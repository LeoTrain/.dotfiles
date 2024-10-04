-- lua/formatters.lua

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- C/C++
		null_ls.builtins.formatting.clang_format,

		-- Python
		null_ls.builtins.formatting.black,

		-- JavaScript, TypeScript, HTML, CSS
		null_ls.builtins.formatting.prettier,

		-- Lua
		null_ls.builtins.formatting.stylua,

		-- Markdown
		null_ls.builtins.formatting.prettier,
	},

	-- Formater automatiquement à chaque sauvegarde
	-- on_attach = function(client, bufnr)
	--   if client.server_capabilities.documentFormattingProvider then
	--     vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
	--   end
	-- end,
})
