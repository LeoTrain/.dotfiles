local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    -- Ajoute ici les formatters/linters que tu souhaites utiliser
    null_ls.builtins.formatting.prettier, -- JavaScript, TypeScript, HTML, CSS, etc.
    null_ls.builtins.formatting.black,    -- Python
    null_ls.builtins.diagnostics.eslint,  -- Linter pour JavaScript
  },
  -- Autoformater lors de la sauvegarde
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
  end
})
