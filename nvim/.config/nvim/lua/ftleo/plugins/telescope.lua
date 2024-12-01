return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("telescope").setup({
            defaults = {
                prompt_prefix = "> ",
                selection_caret = " ",
                sorting_strategy = "ascending",
                layout_config = {
                    horizontal = {
                        preview_width = 0.5,
                    },
                },
            },
        })
        local builtin = require('telescope.builtin')
        local keymap = vim.keymap.set
        keymap('n', '<leader>ff', builtin.find_files, { desc = "Telescope find files" })
        keymap('n', '<leader>fg', builtin.live_grep, { desc = "Telescope live grep" })
    end,
}
