return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use("kyazdani42/nvim-tree.lua")
	use("nvim-lualine/lualine.nvim")
	use("windwp/nvim-autopairs")
	use("mhartington/formatter.nvim")
	use("neovim/nvim-lspconfig")
    use("ThePrimeagen/harpoon")
    use("nvim-treesitter/nvim-treesitter") 
    use("hrsh7th/nvim-cmp")          -- Plugin principal d'autocomplétion
    use("hrsh7th/cmp-nvim-lsp")      -- Source LSP pour nvim-cmp
    use("hrsh7th/cmp-buffer")        -- Source de buffer pour nvim-cmp
    use("hrsh7th/cmp-path")          -- Source pour compléter les chemins de fichiers
    use("hrsh7th/cmp-cmdline")       -- Source pour la ligne de commande de Neovim
    use("L3MON4D3/LuaSnip")          -- Snippets) engine
    use("saadparwaiz1/cmp_luasnip")  -- Source) pour utiliser LuaSnip avec nvim-cmp
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use({
        "epwalsh/obsidian.nvim",
        tag = "*",  -- recommended, use latest release instead of latest commit
        requires = {"nvim-lua/plenary.nvim"}})
    use({
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {}
        end})
    use({
        'kyazdani42/nvim-web-devicons',
        config = function()
            require'nvim-web-devicons'.setup()
        end })
    use("goolord/alpha-nvim")
end)
