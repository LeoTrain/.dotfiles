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
map("i", "jk", "<ESC>", "Return to normal mode")

map("n", "<leader>a", function() require("harpoon.mark").add_file() end, "Mark file")
map("n", "L", function() require("harpoon.ui").toggle_quick_menu() end, "Toggle harpoons quick menu")
map("n", "<leader>1", function() require("harpoon.ui").nav_file(1) end, "Navigate file 1")
map("n", "<leader>2", function() require("harpoon.ui").nav_file(2) end, "Navigate file 2")
map("n", "<leader>3", function() require("harpoon.ui").nav_file(3) end, "Navigate file 3")
map("n", "<leader>4", function() require("harpoon.ui").nav_file(4) end, "Navigate file 4")
map("n", "<leader>5", function() require("harpoon.ui").nav_file(5) end, "Navigate file 5")
map("n", "<leader>h", "<cmd>Stdheader<CR>", "Insert 42 header")
--
