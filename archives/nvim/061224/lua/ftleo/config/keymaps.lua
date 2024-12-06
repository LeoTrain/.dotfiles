local keymap = vim.keymap.set
vim.g.mapleader = " "

keymap('i', 'df', '<ESC>', {})
keymap('n', '<leader>e', ':Ex<CR>', {})

keymap('n', '<leader>wn', ':bn<CR>', { noremap = true, desc = "Buffer next"})
keymap('n', '<leader>wp', ':bp<CR>', { noremap = true, desc = "Buffer previous"})
keymap('n', '<leader>wx', ':bd<CR>', { noremap = true, desc = "Buffer delete"})

keymap('n', '<leader>sp', ':sp<CR>', { noremap = true, desc = "Split horizontally"})
keymap('n', '<leader>sv', ':vs<CR>', { noremap = true, desc = "Split vertically"})
keymap('n', '<leader>sh', '<c-w>h', { noremap = true, desc = "Go to split left"})
keymap('n', '<leader>sj', '<c-w>j', { noremap = true, desc = "Go to split down"})
keymap('n', '<leader>sk', '<c-w>k', { noremap = true, desc = "Go to split up"})
keymap('n', '<leader>sl', '<c-w>l', { noremap = true, desc = "Go to split right"})

keymap('n', '<leader>q', ':q<CR>', { noremap = true, desc = "Close window"})
keymap('n', '<leader>w', ':w<CR>', { noremap = true, desc = "Buffer save"})

