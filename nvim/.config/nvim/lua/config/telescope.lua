require('telescope').setup {
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "🔍 ",
    selection_caret = "➜ ",
    path_display = {"truncate"},
    file_ignore_patterns = { "node_modules", ".git/" },
    layout_config = {
      horizontal = {
        preview_width = 0.55,
      },
    },
    sorting_strategy = "ascending",
    color_devicons = true,
  },
  pickers = {
    find_files = {
      hidden = true
    }
  }
}

