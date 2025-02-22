return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = true,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    notify = true,
                },
            })
        end,
    },
    {
        "oxfist/night-owl.nvim",
        lazy = true,
        config = function()
            require("night-owl").setup()
        end,
    },
    {
        "comfysage/evergarden",
        lazy = true,
        opts = {
            transparent_background = false,
            variant = "medium", -- 'hard'|'medium'|'soft'
            overrides = {}, -- add custom overrides
        },
        config = function()
            require("evergarden").setup({})
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({})
        end
    },
    {
        "tiagovla/tokyodark.nvim",
        priority = 10001,
        opts = {
            -- custom options here
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            notify = true,
        },
        config = function(_, opts)
            require("tokyodark").setup(opts) -- calling setup is optional
            vim.cmd([[colorscheme tokyodark]])
        end,
    },
}
