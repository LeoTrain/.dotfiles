return {
	"shortcuts/no-neck-pain.nvim",
	version = "*",
	config = function()
		require("no-neck-pain").setup({
            autocmds = {
                enableOnVimEnter = true,
            },
			buffers = {
				scratchPad = {
					enabled = true,
					location = "~/lab/notes",
				},
				bo = {
					filetype = "md",
				},
			},
		})
	end,
}
