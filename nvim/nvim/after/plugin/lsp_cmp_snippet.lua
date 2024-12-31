local lspconfig = require("lspconfig")
local cmp = require("cmp")
local luasnip = require("luasnip")

-- Ajouter les capacités de `nvim-cmp` à LSP
local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = { buffer = event.buf }

    -- LSP actions
    vim.keymap.set('n', '<leader>K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)     -- Show hover info
    vim.keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)        -- Go to definition
    vim.keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)       -- Go to declaration
    vim.keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)    -- Go to implementation
    vim.keymap.set('n', '<leader>go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)   -- Go to type definition
    vim.keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)        -- Go to references

  end,
})

-- Configurer Mason pour qu'il utilise les capacités LSP
require("mason-lspconfig").setup_handlers({
	function(server_name) -- Pour tous les serveurs installés
		lspconfig[server_name].setup({
			capabilities = capabilities,
		})
	end,
})

-- Chargement des snippets prédéfinis
require("luasnip.loaders.from_vscode").lazy_load()

-- Configuration minimale de `nvim-cmp`
cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-Space>"] = cmp.mapping.complete(), -- Ouvrir la complétion
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirmer la complétion
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
		{ name = "path" },
	}),

	window = {
		completion = cmp.config.window.bordered(), -- Boîte avec bordure pour la liste de complétion
		documentation = cmp.config.window.bordered(), -- Boîte avec bordure pour les détails
	},

	-- Formatage des éléments dans la boîte de complétion
	formatting = {
		fields = { "kind", "abbr", "menu" }, -- Ce qui est affiché dans chaque suggestion
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = "[LSP]",
				luasnip = "[Snip]",
				buffer = "[Buf]",
				path = "[Path]",
			}
			item.menu = menu_icon[entry.source.name]
			return item
		end,
	},
})
