return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			separator_style = "slant",
		},
		highlights = {
			buffer_selected = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
				bold = true,
				underline = true, -- This will add an underline under the active buffer
			},
		},
	},
	config = function(_, opts)
		require("bufferline").setup(opts)
	end,
}
