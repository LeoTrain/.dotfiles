local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Harpoon mappings
map("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>", { desc = "Harpoon Add File" })
map("n", "<leader>hm", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "Harpoon Menu" })
map("n", "<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>", { desc = "Harpoon File 1" })
map("n", "<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>", { desc = "Harpoon File 2" })
map("n", "<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>", { desc = "Harpoon File 3" })
map("n", "<leader>4", ":lua require('harpoon.ui').nav_file(4)<CR>", { desc = "Harpoon File 4" })

