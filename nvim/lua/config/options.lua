opt = vim.opt

opt.expandtab = true -- Convert tabs to spaces
opt.shiftwidth = 4 -- Amount to indent when >> or <<
opt.tabstop = 4 -- How many spaces are shown per Tab
opt.softtabstop = 4 -- How many spaces are applied when pressing Tab

opt.smarttab = true
opt.smartindent = true
opt.autoindent = true -- Keep indentation from previous line

-- Enable break indent
opt.breakindent = true

-- Always show relative numbers
opt.number = true
opt.relativenumber = true

-- Show line under cursor
opt.cursorline = true

-- Stores undos between sessions
opt.undofile = true

opt.mouse = "a"
opt.showmode = false

-- Case sensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by defaut
opt.signcolumn = "yes"

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Minimal number of screen lines to keep above and below the cursor
opt.scrolloff = 20
