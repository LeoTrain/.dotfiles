local lspconfig = require("lspconfig")

-- Python: Pyright
lspconfig.pyright.setup({
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic", -- Set type checking mode (options: off, basic, strict)
      },
    },
  },
})

-- C: Clangd
lspconfig.clangd.setup({
  cmd = { "clangd", "--background-index" }, -- Ensure clangd is installed and available in your PATH
})
