return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        lspconfig.lua_ls.setup({
            capabilities = capabilities
        })
        lspconfig.pylsp.setup({
            capabilities = capabilities
        })

        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end,
}
