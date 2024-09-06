return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			preset = "helix",
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
					require("mini.icons").setup()
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},

	{
		"echasnovski/mini.nvim",
		version = false, -- stable version
		config = function()
			require("mini.icons").setup() -- Configuration par défaut de mini.icons
		end,
	},
}
