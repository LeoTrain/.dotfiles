return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "hrsh7th/nvim-cmp" }, -- Assure-toi que nvim-cmp est chargé
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

            local on_attach = function(client, bufnr)
                vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, { buffer = bufnr })
                vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { buffer = bufnr })
                vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr })
            end

            require('lspconfig').lua_ls.setup {
                capabilities = capabilities,
                on_attach = on_attach,
            }

            require('lspconfig').pyright.setup {
                capabilities = capabilities,
                on_attach = on_attach,
                filetypes = {"python"},
            }
        end,
    },
}
