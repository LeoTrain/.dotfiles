require("obsidian").setup({
  workspaces = {
    {
      name = "personal",
      path = "~/lab/vaults/first",
    },
    {
        name = "wifi",
        path = "~/lab/vaults/wifi",
    }
  },
  templates = {
  subdir = "00_Templates",
  date_format = "%Y-%m-%d",
  time_format = "%H:%M",
  },
  completion = {
      nvim_cmp = true,
  }
})
