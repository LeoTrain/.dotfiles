return {
    "stevearc/dressing.nvim",
    config = function()
        require("dressing").setup({
            input = {
                border = "rounded",
            },
            select = {
                backend = { "telescope", "fzf" },
            },
        })
    end,
}
