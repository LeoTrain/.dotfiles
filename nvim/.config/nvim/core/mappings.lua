local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<leader>w", ":w<CR>", { desc = "Save" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })
map("n", "<leader>gf", ":Format<CR>", { desc = "Format" })
map("i", "df", "<ESC>", { desc = "Go To Normal Mode" })

-- Tab Navigation
map("n", "<leader>to", ":tabnew | Telescope find_files<CR>", { desc = "Tab New" })
map("n", "<leader>tn", ":tabnext<CR>", { desc = "Onglet suivant" })
map("n", "<leader>tp", ":tabprevious<CR>", { desc = "Onglet précédent" })

-- Buffer navigation
map("n", "<leader>bn", ":bnext<CR>", { desc = "Buffer Next" })
map("n", "<leader>bp", ":bprevious<CR>", { desc = "Buffer Previous" })

-- Telescope mappings
map("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find Files" })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Find Grep" })
map("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find Buffers" })
