return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				{
					name = "catppuccin moccha",
					colorscheme = "catppuccin-mocha",
				},
				{
					name = "catppuccin latte",
					colorscheme = "catppuccin-latte",
				},
				{
					name = "catppuccin macchiato",
					colorscheme = "catppuccin-macchiato",
				},
				{
					name = "catppuccin frappe",
					colorscheme = "catppuccin-frappe",
				},
				{
					name = "night-owl",
					colorscheme = "night-owl",
				},
				{
					name = "tokyodark",
					colorscheme = "tokyodark",
				},
				{
					name = "rose",
					colorscheme = "rose-pine",
				},
				{
					name = "evergarden",
					colorscheme = "evergarden",
				},
			},
			livePreview = true,
		})

		vim.keymap.set("n", "<leader>th", ":Themery<CR>", { desc = "Switch Theme" })
	end,
}
