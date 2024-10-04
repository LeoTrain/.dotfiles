require('nvim-tree').setup {
  view = {
    width = 30,
    side = 'left',
  },
  filters = {
    dotfiles = false,  -- Afficher les fichiers cachés (dotfiles)
  },
}
