vim.g.mapleader = " "

vim.api.nvim_set_keymap("i", "df", "<ESC>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>qq", ":q!<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bd", ":bd<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>re', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })

-- Démarrer le débogueur
vim.api.nvim_set_keymap("n", "<leader>dd", ':lua require"dap".continue()<CR>', { noremap = true, silent = true })
-- Ajouter un point d'arrêt
vim.api.nvim_set_keymap(
	"n",
	"<leader>db",
	':lua require"dap".toggle_breakpoint()<CR>',
	{ noremap = true, silent = true }
)
-- Step over (passer à la ligne suivante)
vim.api.nvim_set_keymap("n", "<leader>dn", ':lua require"dap".step_over()<CR>', { noremap = true, silent = true })
-- Step into (entrer dans la fonction)
vim.api.nvim_set_keymap("n", "<leader>di", ':lua require"dap".step_into()<CR>', { noremap = true, silent = true })
-- Terminer le débogage
vim.api.nvim_set_keymap("n", "<leader>dq", ':lua require"dap".terminate()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap(
	"n",
	"<leader>gf",
	"<cmd>lua vim.lsp.buf.format({ async = true })<CR>",
	{ noremap = true, silent = true }
)


vim.api.nvim_set_keymap('n', '<leader>r', ':!dotnet run<CR>', { noremap = true, silent = true })
