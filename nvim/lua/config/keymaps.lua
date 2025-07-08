vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>e', ':Ex<cr>', { desc = 'Open [E]xplorer' })

vim.keymap.set('n', '<leader>ff', ':Telescope find_files<cr>', { desc = 'Open [F]uzzy [F]inder' })
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<cr>', { desc = 'Open [F]ind [G]rep' })

