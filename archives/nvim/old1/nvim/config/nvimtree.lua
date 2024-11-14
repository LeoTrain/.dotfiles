require("nvim-tree").setup({
    view = { width = 30, side = "left" },
    renderer = { indent_markers = { enable = true } },
})

-- Keybinding for NvimTreeToggle
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true, desc = "Togge Tree" })

