return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	-- dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	dependencies = { "echasnovski/mini.icons" },
	opts = {},
	keys = {
		{
			"<leader>ff",
			function() require('fzf-lua').files() end,
			desc="[F]ind [F]iles"
		},
		{
			"<leader>fg",
			function() require('fzf-lua').live_grep() end,
		},
		{
			"<leader>fb",
			function() require('fzf-lua').buffers() end,
			desc="[F]ind [B]uffers"
		},
		{
			"<leader>f.",
			function() require('fzf-lua').builtin() end,
			desc="[F]ind [.]Idon'tknow"
		},
	}
}
