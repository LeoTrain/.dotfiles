-- config/formatter.lua
-- Configure Formatter to run only on <leader>gf

local util = require("formatter.util")

require("formatter").setup({
    logging = false,
    filetype = {
        lua = {
            function()
                return {
                    exe = "stylua",
                    args = {"--stdin-filepath", util.escape_path(util.get_current_buffer_file_path()), "--"},
                    stdin = true,
                }
            end,
        },
        -- Additional filetypes
    }
})

-- Map <leader>gf to format
vim.api.nvim_set_keymap("n", "<leader>gf", ":Format<CR>", { noremap = true, silent = true })

