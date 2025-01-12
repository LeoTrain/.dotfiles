return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    config = function()
        require("telescope").setup({
            defaults = {
                previewer = true,
                layout_config = {
                    horizontal = {
                        preview_cutoff = 0,
                    },
                },
                file_previewer = require("telescope.previewers").vim_buffer_cat.new,
                qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
                grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
                mappings = {
                    i = {
                        ["<C-j>"] = require("telescope.actions").move_selection_next,
                        ["<C-k>"] = require("telescope.actions").move_selection_previous,
                    },
                },
            },
        })
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { silent = true, desc = "telescope find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { silent = true, desc = "telescope live grep" })
        vim.keymap.set("n", "<leader>f?", ":Telescope keymaps<CR>", { desc = "Show all Keymaps" })
    end,
}
