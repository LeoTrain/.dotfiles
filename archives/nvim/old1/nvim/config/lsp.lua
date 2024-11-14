local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

-- Assure que les serveurs sont disponibles via Mason
mason_lspconfig.setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({
            on_attach = function(client, bufnr)
                -- Configurations supplémentaires pour les LSP si besoin
            end,
            capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
        })
    end,
})

-- Installer automatiquement OmniSharp avec Mason
require("mason-lspconfig").setup({
    ensure_installed = { "omnisharp" }
})
