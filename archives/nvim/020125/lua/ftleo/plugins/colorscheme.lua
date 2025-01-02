return {
	"catppuccin/nvim",
	name = "catppuccin",
    priority=1000,
	config = function()
        require("catppuccin").setup({
            flavour="mocha",
            integrations = {
                treesitter = true,
                mason = true,
                cmp = true,
                gitsigns = true,
                telescope = true,
            },
        })
		vim.cmd("colorscheme catppuccin")
	end
}
