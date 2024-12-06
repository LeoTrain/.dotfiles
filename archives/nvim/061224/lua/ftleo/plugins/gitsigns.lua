return {
    'lewis6991/gitsigns.nvim',
    config = function()
        vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#00ff00", bg = "none" }) -- Vert pour les ajouts
        vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#ffff00", bg = "none" }) -- Jaune pour les modifications
        vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#ff0000", bg = "none" }) -- Rouge pour les suppressions
        vim.api.nvim_set_hl(0, "GitSignsChangedelete", { fg = "#ff8800", bg = "none" }) -- Orange pour les changements/suppressions
        vim.api.nvim_set_hl(0, "GitSignsTopdelete", { fg = "#ff0000", bg = "none" }) -- Rouge pour les suppressions hautes

        require("gitsigns").setup({
        signs = {
          add          = { text = "▎" },
          change       = { text = "▎" },
          delete       = { text = "_" },
          topdelete    = { text = "‾" },
          changedelete = { text = "~" },
        },
        on_attach = function(bufnr)
          -- Raccourcis clavier ici
        end,
        })
    end
}
