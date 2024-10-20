require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "omnisharp" }, -- Ajouter d'autres serveurs si nécessaire
})

