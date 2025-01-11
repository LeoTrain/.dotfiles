return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
		{
            "<C>",
			name = "Windows",
			h = { "<C-w>h", "Move to left window" },
			j = { "<C-w>j", "Move to bottom window" },
			k = { "<C-w>k", "Move to top window" },
			l = { "<C-w>l", "Move to right window" },
			["<C-Up>"] = { ":resize +2<CR>", "Increase height" },
			["<C-Down>"] = { ":resize -2<CR>", "Decrease height" },
			["<C-Left>"] = { ":vertical resize -2<CR>", "Decrease width" },
			["<C-Right>"] = { ":vertical resize +2<CR>", "Increase width" },
		},
		-- Buffer navigation
		{
            "<S>",
			name = "Buffers",
			["<S-l>"] = { ":bnext<CR>", "Next buffer" },
			["<S-h>"] = { ":bprevious<CR>", "Previous buffer" },
		},
		-- Tabs management
		{
            '<leader>t',
			name = "Tabs",
			to = { ":tabnew<CR>", "Open new tab" },
			tn = { ":tabnext<CR>", "Next tab" },
			tp = { ":tabprevious<CR>", "Previous tab" },
		},
		-- Text movement
		{
            '<C>',
			name = "Text",
			["<A-j>"] = { ":m .+1<CR>==", "Move text down" },
			["<A-k>"] = { ":m .-2<CR>==", "Move text up" },
		},
		-- LSP
		{
			"<leader>l",
			name = "LSP",
			["h"] = { vim.lsp.buf.hover, "Hover" },
			["d"] = { vim.lsp.buf.definition, "Go to Definition" },
			["r"] = { vim.lsp.buf.references, "Find References" },
			["rr"] = { vim.lsp.buf.rename, "Rename" },
			["dd"] = { vim.lsp.buf.declaration, "Go to Declaration" },
			["c"] = { vim.lsp.buf.code_action, "Code Action" },
		},
		-- Format and Neotree
		-- {
		-- 	["<C-p>"] = { vim.lsp.buf.format, "Format File" },
		-- 	["<C-n>"] = { ":Neotree toggle<CR>", "Toggle Neotree" },
		-- },
		-- Debugging Group
		{
			"<leader>d",
			name = "Debug",
			["t"] = { require("dapui").toggle, "Toggle DAP UI" },
			["b"] = { require("dap").toggle_breakpoint, "Toggle Breakpoint" },
			["c"] = { require("dap").continue, "Continue" },
			["so"] = { require("dap").step_over, "Step Over" },
			["si"] = { require("dap").step_into, "Step Into" },
			["sa"] = { require("dap").step_out, "Step Out" },
		},
		-- Telescope Group
		{
			"<leader>f",
			name = "Find",
			["f"] = { require("telescope.builtin").find_files, "Find Files" },
			["g"] = { require("telescope.builtin").live_grep, "Live Grep" },
            ["?"] = { require("telescope.builtin").keymaps, "Show all Keymaps"}
		},
	},
}
