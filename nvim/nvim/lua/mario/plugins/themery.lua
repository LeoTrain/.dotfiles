return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
        require("themery").setup({
            themes = {
                {
                    name = "catppuccin moccha",
                    colorscheme = "catppuccin-mocha",
                },
                {
                    name = "catppuccin latte",
                    colorscheme = "catppuccin-latte",
                },
                {
                    name = "catppuccin macchiato",
                    colorscheme = "catppuccin-macchiato",
                },
                {
                    name = "catppuccin frappe",
                    colorscheme = "catppuccin-frappe",
                },
                {
                    name = "tokyodark",
                    colorscheme = "tokyodark",
                },
                {
                    name = "evergarden",
                    colorscheme = "evergarden",
                },
            },
            livePreview = true,
        })
    end,
}
