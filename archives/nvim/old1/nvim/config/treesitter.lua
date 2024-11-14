require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "python", "c_sharp" },
    highlight = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
})

