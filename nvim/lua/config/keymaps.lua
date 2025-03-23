local function map(mode, keys, cmd, desc)
	vim.keymap.set(mode, keys, cmd, { desc = desc })
end

map("n", "-", "<cmd>Oil --float<CR>", "Open parent directory")
map("n", "gl", function()
	vim.diagnostic.open_float()
end, "Open diagnostic in float")
map("n", "<leader>cf", function()
	require("conform").format({ lsp_format = "fallback" })
end, "[C]ode [F]ormat")
