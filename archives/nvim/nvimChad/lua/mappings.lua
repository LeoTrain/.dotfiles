require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("i", "df", "<ESC>")
map("n", "<leader>e", ":NvimTreeToggle<CR>")


-- Ajouter un fichier aux marqueurs Harpoon
map("n", "<leader>m", ":lua require('harpoon.mark').add_file()<CR>", opts)

-- Ouvrir le menu Harpoon
map("n", "<leader>h", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)

-- Naviguer vers les fichiers marqués
map("n", "<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>", opts)
map("n", "<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>", opts)
map("n", "<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>", opts)
map("n", "<leader>4", ":lua require('harpoon.ui').nav_file(4)<CR>", opts)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- window management
map("n", "<leader>w", ":w<CR>", { desc = "Save Buffer"})
map("n", "<leader>q", ":q<CR>", { desc = "Quit Buffer"})
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) 
