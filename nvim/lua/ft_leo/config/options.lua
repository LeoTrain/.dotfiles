-- Options générales
local opt = vim.opt

opt.number = true                -- Numérotation des lignes
opt.relativenumber = true        -- Numérotation relative
opt.mouse = "a"                  -- Activer la souris partout
opt.clipboard = "unnamedplus"     -- Copier/coller avec le système
opt.swapfile = false             -- Désactiver les fichiers d'échange
opt.backup = false               -- Désactiver les backups
opt.undofile = true              -- Activer undo persistant
opt.updatetime = 250             -- Réduire le délai de mise à jour
opt.timeoutlen = 400             -- Temps d’attente pour les keymaps

-- Apparence
opt.termguicolors = true         -- Couleurs 24 bits
opt.signcolumn = "yes"           -- Toujours afficher la colonne des signes
opt.cursorline = true            -- Surligner la ligne actuelle
opt.scrolloff = 8                -- Garder un espace en haut/bas lors du scroll

-- Indentation
opt.expandtab = false             -- Utiliser des espaces au lieu des tabulations
opt.shiftwidth = 4               -- Taille du retrait (indentation)
opt.tabstop = 4                  -- Largeur des tabulations
opt.smartindent = true           -- Indentation intelligente

-- Recherche
opt.ignorecase = true            -- Ignorer la casse lors de la recherche
opt.smartcase = true             -- Mais respecter la casse si majuscules présentes
opt.incsearch = true             -- Recherche interactive
opt.hlsearch = false             -- Ne pas surligner les résultats après recherche

-- Splits et fenêtres
opt.splitbelow = true            -- Ouvrir les splits horizontaux en bas
opt.splitright = true            -- Ouvrir les splits verticaux à droite

-- Completion
opt.completeopt = { "menuone", "noselect" } -- Meilleur menu de complétion

vim.opt.background = "dark"  -- Assure-toi que la couleur de fond est définie
vim.cmd("hi Normal guibg=NONE") -- Enlève le fond du "Normal" (zone d'édition)
vim.cmd("hi NonText guibg=NONE") -- Enlève le fond des caractères non visibles
