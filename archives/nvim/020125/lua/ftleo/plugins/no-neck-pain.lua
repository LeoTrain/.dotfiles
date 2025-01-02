return {
    "shortcuts/no-neck-pain.nvim",
    config = function()
        require("no-neck-pain").setup({
            buffers = {
                scratchPad = {
                    enabled = true, -- Active le scratchpad
                    location = "Users/ftl/lab/", -- Répertoire de sauvegarde
                },
                bo = {
                    filetype = "md", -- Définit le type de fichier à Markdown
                },
            },
        })
    end,
}

