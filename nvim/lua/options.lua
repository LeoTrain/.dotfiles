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

-- Configurations Keymaps
local keymap = vim.keymap
keymap.set("i", "df", "<Esc>", {})
keymap.set("n", "wq", ":wq<CR>", {})
keymap.set("n", "qq", ":q!<CR>", {})
keymap.set('n', "nh", ":nohl<CR>", {})

vim.g.mapleader = " "
