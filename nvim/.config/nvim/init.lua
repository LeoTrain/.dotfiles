local config_path = vim.fn.stdpath("config")
package.path = config_path .. "/?.lua;" .. config_path .. "/?/init.lua;" .. package.path

require("core.settings")
require("core.mappings")
require("core.plugins")
require("core.configs")
