return {
    "shortcuts/no-neck-pain.nvim",
    version = "*",
    config = function()
        -- local palette = require("catppuccin.palettes").get_palette("mocha")
        require("no-neck-pain").setup({
            width=100,
            autocmds = {
                enableOnVimEnter = true,
                enableOnTabEnter = true,
            },
            buffers = {
                scratchPad = {
                    enabled = true,
                    location = "~/lab/notes",
                },
                left = {
                    colors = {
                        background = "#414868",
                        blend = -0.63
                    },
                },
                bo = {
                    filetype = "md",
                },
                enable_in_split = true,
            },
        })
    end,
}
