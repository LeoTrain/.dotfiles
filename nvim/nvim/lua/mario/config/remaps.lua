vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Tabs
keymap("n", "<leader>to", ":tabnew<CR>", opts)
keymap("n", "<leader>tn", ":tabnext<CR>", opts)
keymap("n", "<leader>tp", ":tabprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Split window creation
keymap("n", "<Leader>v", ":vsplit<CR>", { noremap = true, silent = true, desc = "Open a vertical split" })
keymap("n", "<Leader>h", ":split<CR>", { noremap = true, silent = true, desc = "Open a horizontal split" })

-- Navigate between windows
keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "Move to the window on the left" })
keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "Move to the window on the right" })
keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true, desc = "Move to the window below" })
keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true, desc = "Move to the window above" })

-- Resize windows
keymap("n", "<Leader>+", ":resize +2<CR>", { noremap = true, silent = true, desc = "Increase window height" })
keymap("n", "<Leader>-", ":resize -2<CR>", { noremap = true, silent = true, desc = "Decrease window height" })
keymap("n", "<Leader><", ":vertical resize -2<CR>", { noremap = true, silent = true, desc = "Decrease window width" })
keymap("n", "<Leader>>", ":vertical resize +2<CR>", { noremap = true, silent = true, desc = "Increase window width" })

-- Close the current window
keymap("n", "<Leader>c", ":close<CR>", { noremap = true, silent = true, desc = "Close the active window" })

