return {
  {'akinsho/toggleterm.nvim', version = "*", opts = {
          -- Configuration de base
          size = 10,
          open_mapping = [[<C-\>]], -- Raccourci pour ouvrir/fermer le terminal
          hide_numbers = true,
          shade_filetypes = {},
          shade_terminals = true,
          shading_factor = 2,
          start_in_insert = true,
          persist_size = true,
          direction = 'horizontal', -- 'vertical', 'horizontal', 'tab', 'float'
          close_on_exit = true,
          shell = vim.o.shell,
          -- Keymaps pour ToggleTerm
          on_open = function(term)
            local map = vim.api.nvim_buf_set_keymap
            local opts = { noremap = true, silent = true }
            -- Keymaps spécifiques au terminal ouvert
            map(term.bufnr, "t", "<Esc>", [[<C-\><C-n>]], opts) -- Sortir du mode terminal
          end,
        },
    }
}
