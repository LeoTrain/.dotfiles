
-- Affichage et Navigation
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 16
vim.opt.wrap = false

-- Indentation et formattage
vim.opt.expandtab = true
vim.opt.shiftwidth = 8
vim.opt.tabstop = 8
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Recherche
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Experience utilisateur
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.updatetime = 300

-- Performance
vim.opt.lazyredraw = true
vim.opt.synmaxcol = 240

-- Gestion des fichiers
vim.opt.undofile = true
vim.opt.backup = false
vim.opt.writebackup = false

-- Affichage de l'interface
vim.opt.showmode = false
vim.opt.signcolumn = 'yes'

vim.cmd('syntax on')


