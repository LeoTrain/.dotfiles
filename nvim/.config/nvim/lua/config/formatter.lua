-- lua/formatters.lua

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- C/C++
		null_ls.builtins.formatting.clang_format.with({
			extra_args = { "--style=file" }, -- Utilise les configurations de style à partir d'un fichier (par exemple .editorconfig ou .clang-format)
		}),

		-- Python
		null_ls.builtins.formatting.black,

		-- JavaScript, TypeScript, HTML, CSS
		null_ls.builtins.formatting.prettier.with({
			extra_args = { "--plugin=prettier-plugin-editorconfig" }, -- Assure que Prettier respecte .editorconfig
		}),

		-- Lua
		null_ls.builtins.formatting.stylua,

		-- Markdown
		null_ls.builtins.formatting.prettier,
	},

	-- Formater automatiquement à chaque sauvegarde
	on_attach = function(client, bufnr)
		-- Vérifie si le serveur supporte le formatage
		if client.server_capabilities.documentFormattingProvider then
			-- Autoformat avant chaque sauvegarde
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format({ async = true })")
		end
	end,
})
