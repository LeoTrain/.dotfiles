return {
	{
		"tiagovla/tokyodark.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme tokyodark")
		end,
	},
	-- {
	-- 	"ellisonleao/gruvbox.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		-- Active le mode clair pour gruvbox
	-- 		vim.o.background = "light"
	-- 		vim.cmd("colorscheme gruvbox")
	-- 	end,
	-- },
}
