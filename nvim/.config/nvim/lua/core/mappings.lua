local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "df", "<ESC>")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<leader>h", "<C-w>h")
map("n", "<leader>l", "<C-w>l")
map("n", "<leader>k", "<C-w>k")
map("n", "<leader>j", "<C-w>j")

-- Debugger
vim.keymap.set('n', '<leader>db', function() require'dap'.toggle_breakpoint() end)  -- Ajouter/enlever un breakpoint
vim.keymap.set('n', '<leader>dc', function() require'dap'.continue() end)           -- Continuer l'exécution
vim.keymap.set('n', '<leader>do', function() require'dap'.step_over() end)          -- Step over
vim.keymap.set('n', '<leader>di', function() require'dap'.step_into() end)          -- Step into
vim.keymap.set('n', '<leader>du', function() require'dap'.step_out() end)           -- Step out

