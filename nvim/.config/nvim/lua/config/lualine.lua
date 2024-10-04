require('lualine').setup {
  options = {
    theme = 'gruvbox',
    section_separators = '',
    component_separators = ''
  },
  sections = {
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
  }
}
