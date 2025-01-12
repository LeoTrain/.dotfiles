return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "python" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            additionial_vim_regex_highlighting = false,
        })
    end,
}
