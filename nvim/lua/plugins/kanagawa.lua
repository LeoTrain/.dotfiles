return { 
	"rebelot/kanagawa.nvim",
	config=function()
		require("kanagawa").setup({
			compile=true,
			background={
				dark="dragon",
				light="lotus"
			},
			transparent=true
		});
		vim.cmd("colorscheme kanagawa");
	end,
	build=function()
		vim.cmd("KanagawaCompile");
	end
}
