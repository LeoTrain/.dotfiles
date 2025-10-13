return {
	"norcalli/nvim-colorizer.lua",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("colorizer").setup({
			filetypes = {
				"*", -- Highlight all files, but customize some others.
				css = { rgb_fn = true }, -- Enable parsing rgb(...) functions in css.
				html = { names = false }, -- Disable parsing "names" like Blue or Gray
			},
			user_default_options = {
				RGB = true, -- #RGB hex codes
				RRGGBB = true, -- #RRGGBB hex codes
				names = true, -- "Name" codes like Blue or red
				RRGGBBAA = false, -- #RRGGBBAA hex codes
				AARRGGBB = false, -- 0xAARRGGBB hex codes
				rgb_fn = false, -- CSS rgb() and rgba() functions
				hsl_fn = false, -- CSS hsl() and hsla() functions
				css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
				css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
				mode = "background", -- Set the display mode: 'foreground', 'background',  'virtualtext'
				tailwind = false, -- Enable tailwind colors
				sass = { enable = false, parsers = { "css" } }, -- Enable sass colors
				virtualtext = "■",
				always_update = false
			},
			buftypes = {},
		})
	end,
}