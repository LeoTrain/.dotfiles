local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Charger les plugins
require("lazy").setup("ftleo.plugins")

-- After Lazy
vim.cmd.colorscheme("kanagawa")
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#00ff00", bg = "none" })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#ffff00", bg = "none" })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#ff0000", bg = "none" })

