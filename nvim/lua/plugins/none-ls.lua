return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.diagnostics.flake8,
            },
        })

        -- Configurer un raccourci pour le formatage
        vim.keymap.set("n", "<leader>gf", function()
            vim.lsp.buf.format()
        end, { desc = "Format buffer with LSP" })
    end,
}
