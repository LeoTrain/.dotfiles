local config_path = vim.fn.stdpath("config")
package.path = config_path .. "/?.lua;" .. config_path .. "/?/init.lua;" .. package.path

require("core.settings")
require("core.mappings")
require("core.plugins")

require("config.mason")
require("config.lsp")
require("config.telescope")
require("config.nvimtree")
require("config.lualine")
require("config.autopairs")
require("config.formatter")
require("config.harpoon")
require("config.treesitter")
require("config.cmp")
require("config.obsidian")
