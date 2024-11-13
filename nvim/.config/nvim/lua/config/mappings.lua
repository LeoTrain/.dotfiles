local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- return to normal mode
map("i", "df", "<ESC>", opts)

-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)

-- nvim-tree
map("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
