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

-- Bootstrap packer.nvim
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Packer configuration
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Plugin manager

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end

  use 'morhetz/gruvbox'
	vim.cmd('colorscheme gruvbox')
end)



