return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin") -- Manquait l'import !

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-j>"] = "move_selection_next",
                        ["<C-k>"] = "move_selection_previous",
                        ["<C-q>"] = "send_selected_to_qflist",
                        ["<Esc>"] = "close",
                    },
                },
            },
        })

        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope: Find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope: Live grep" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope: List buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope: Help tags" })
    end
}

