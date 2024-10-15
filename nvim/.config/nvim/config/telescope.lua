-- config/telescope.lua
-- Basic Telescope setup

require("telescope").setup({
    defaults = {
        prompt_prefix = "> ",
        sorting_strategy = "ascending",
        layout_strategy = "vertical",
        layout_config = { height = 0.5 }
    },
})

-- Telescope keybindings already configured in mappings.lua

