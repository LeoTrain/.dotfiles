local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  [[          ▀████▀▄▄              ▄█ ]],
  [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
  [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
  [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
  [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
  [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
  [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
  [[     █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀ ]],
  [[    █   █  █      ▄▄           ▄▀  ]],
  [[                                  ]],
  [[       Bienvenue dans Neovim, FTL! ]],
  [[                                  ]],
  [[      Que ton code soit créatif et ]],
  [[             sans bug!             ]]
}


dashboard.section.buttons.val = {
    dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
    dashboard.button("r", "  Recently used files", ":Telescope oldfiles<CR>"),
    dashboard.button("q", "  Quit Neovim", ":qa<CR>")
}

alpha.setup(dashboard.config)

