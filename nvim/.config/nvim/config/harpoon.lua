local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Harpoon mappings
map("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>", opts) -- Ajouter un fichier à Harpoon
map("n", "<leader>hm", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", opts) -- Ouvrir le menu Harpoon
map("n", "<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>", opts) -- Aller au fichier 1
map("n", "<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>", opts) -- Aller au fichier 2
map("n", "<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>", opts) -- Aller au fichier 3
map("n", "<leader>4", ":lua require('harpoon.ui').nav_file(4)<CR>", opts) -- Aller au fichier 4

