return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					notify = true,
				},
			})
		end,
	},
	-- {
	-- "comfysage/evergarden",
	-- priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
	-- opts = {
	--     transparent_background = false,
	--     variant = "medium", -- 'hard'|'medium'|'soft'
	--     overrides = {}, -- add custom overrides
	-- },
	-- config = function()
	--     require('evergarden').setup({})
	--     vim.cmd.colorscheme("evergarden")
	-- end,
	-- }
	{
		"tiagovla/tokyodark.nvim",
        priority = 10001,
		opts = {
			-- custom options here
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            notify = true,
		},
		config = function(_, opts)
			require("tokyodark").setup(opts) -- calling setup is optional
			vim.cmd([[colorscheme tokyodark]])
		end,
	},
}
