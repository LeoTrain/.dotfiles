local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Save with leader + w
map("n", "<leader>w", ":w<CR>", opts)

-- Quit with leader + q
map("n", "<leader>q", ":q<CR>", opts)

-- Quick format with leader + gf
map("n", "<leader>gf", ":Format<CR>", opts)

-- Buffer navigation
map("n", "<leader>bn", ":bnext<CR>", opts)
map("n", "<leader>bp", ":bprevious<CR>", opts)

-- Telescope mappings
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
