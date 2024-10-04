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
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Plugin manager

  -- Plugins
  use 'morhetz/gruvbox'
  use 'windwp/nvim-autopairs'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    }
  }
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }  -- Pour les icônes
  }
  use 'neovim/nvim-lspconfig'
  use {
    'williamboman/mason.nvim',  -- Gestionnaire d'installation de LSP
    requires = { 'williamboman/mason-lspconfig.nvim' }
  }
  use {
  'hrsh7th/nvim-cmp', -- Plugin principal pour l'autocomplétion
  requires = {
    'hrsh7th/cmp-nvim-lsp', -- Source pour LSP
    'hrsh7th/cmp-buffer',   -- Source pour les buffers ouverts
    'hrsh7th/cmp-path',     -- Source pour les chemins de fichiers
    'hrsh7th/cmp-cmdline',  -- Source pour la ligne de commande
    'saadparwaiz1/cmp_luasnip', -- Snippet completions
    'L3MON4D3/LuaSnip'      -- Gestion des snippets
    }
  }

  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use 'mfussenegger/nvim-dap'

  use 'rafamadriz/friendly-snippets'
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- Appliquer le thème Gruvbox après que Packer ait installé les plugins
vim.cmd('colorscheme gruvbox')

