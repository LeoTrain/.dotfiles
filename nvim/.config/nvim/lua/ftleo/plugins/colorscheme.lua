return {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000, -- Charge ce plugin avant les autres pour appliquer le thème immédiatement
    config = function()
        require("kanagawa").setup({
            compile = false, -- Ne compile pas le schéma de couleurs pour garder la flexibilité
            undercurl = true, -- Ajoute des soulignements stylés
            commentStyle = { italic = true },
            functionStyle = { bold = true },
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = { bold = true },
            transparent = false, -- Met à true pour une transparence de l'arrière-plan
            dimInactive = false, -- Diminue les fenêtres inactives
            terminalColors = true, -- Applique les couleurs au terminal intégré
            colors = {
                theme = {
                    all = {
                        ui = {
                            bg_gutter = "none", -- Enlève la couleur du gutter si nécessaire
                        },
                    },
                },
            },
            overrides = function(colors)
                return {
                    Normal = { bg = "none" }, -- Rendre l'arrière-plan transparent
                }
            end,
        })
    end,
}
