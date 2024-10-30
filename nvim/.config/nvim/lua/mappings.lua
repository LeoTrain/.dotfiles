require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "df", "<ESC>")
map("n", "<leader>e", ":NvimTreeToggle<CR>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
