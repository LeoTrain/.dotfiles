return {
    "folke/noice.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
        require("noice").setup({
            presets = {
                command_palette = true,
                long_message_to_split = true,
            },
        })
    end,
}
