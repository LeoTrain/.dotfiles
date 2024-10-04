local cmp = require'cmp'
local luasnip = require'luasnip'

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)  -- Permet d'utiliser LuaSnip pour les snippets
    end,
  },
  mapping = {
    ['<C-n>'] = cmp.mapping.select_next_item(), -- Aller à l'élément suivant dans le menu
    ['<C-p>'] = cmp.mapping.select_prev_item(), -- Aller à l'élément précédent dans le menu
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirmer la sélection avec Entrée
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' }, -- Complétion depuis le LSP
    { name = 'luasnip' },  -- Complétion avec snippets
  }, {
    { name = 'buffer' },   -- Complétion basée sur le buffer actuel
    { name = 'path' },     -- Complétion pour les chemins de fichiers
  })
})

-- Configuration spécifique pour la ligne de commande
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

