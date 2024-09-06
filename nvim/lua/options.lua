-- Options locales de fenetre
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set cursorline")

-- Options globales
vim.cmd("set number")
vim.cmd("set relativenumber")

-- Configuration d'affichage
vim.cmd("set nowrap")
vim.cmd("set termguicolors")

vim.g.mapleader = " "

-- Configurations Keymaps
local keymap = vim.keymap
keymap.set("i", "df", "<Esc>", { desc = "Exit to normal mode" })
keymap.set("n", "nh", ":nohl<CR>", { desc = "Remove highlighting" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- window navigation
keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Move to the left window" })
keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Move to the bottom window" })
keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Move to the top window" })
keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Move to the right window" })

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

