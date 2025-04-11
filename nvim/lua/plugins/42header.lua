return {
	"Diogo-ss/42-header.nvim",
	cmd = { "Stdheader" },
	keys = { "<F1>" },
	opts = {
		default_map = true,
		auto_update = true,
		user = "leberton", -- Your user.
		mail = "leberton@42vienna.com",
	},
	config = function(_, opts)
		require("42header").setup(opts)
	end,
}
