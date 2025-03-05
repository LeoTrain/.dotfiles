local cmp = require("cmp")

cmp.setup({
  sources = {
    { name = "nvim_lsp" }, -- Enable LSP completion
    { name = "buffer" }, -- Enable buffer completion (for text already in the buffer)
    { name = "path" }, -- Enable path completion
  },
  -- Other settings like snippet support, key mappings, etc.
})
