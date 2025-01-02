return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "frappe",                          -- latte, frappe, macchiato, mocha
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                notify = true,
            }
        })

        vim.cmd.colorscheme "catppuccin"
    end
}
