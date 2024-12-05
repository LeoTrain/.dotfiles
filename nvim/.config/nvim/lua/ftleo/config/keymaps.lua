local keymap = vim.keymap.set
vim.g.mapleader = " "

keymap('i', 'df', '<ESC>', {})
keymap('n', '<leader>e', ':Ex<CR>', {})

keymap('n', '<leader>n', ':bn<CR>', { noremap = true, desc = "Buffer next"})
keymap('n', '<leader>p', ':bp<CR>', { noremap = true, desc = "Buffer previous"})
keymap('n', '<leader>x', ':bd<CR>', { noremap = true, desc = "Buffer delete"})
keymap('n', '<leader>q', ':q<CR>', { noremap = true, desc = "Close window"})
keymap('n', '<leader>w', ':w<CR>', { noremap = true, desc = "Buffer save"})
