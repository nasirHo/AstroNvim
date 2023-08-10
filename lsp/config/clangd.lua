local clangd_capabilities = vim.lsp.protocol.make_client_capabilities()
clangd_capabilities.textDocument.completion.completionItem.snippetSupport = true
clangd_capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = { "documentation", "detail", "additionalTextEdits" },
}
clangd_capabilities.offsetEncoding = "utf-8"
return {
  capabilities = clangd_capabilities,
  on_attach = function(client, bufnr)
    require("astronvim.utils.lsp").on_attach(client, bufnr)
    require("clangd_extensions.inlay_hints").setup_autocmd()
    require("clangd_extensions.inlay_hints").setup_inlay_hints()
  end,
  -- cmd = {
  --   "clangd",
  --   "--function-arg-placeholders=0",
  --   "--background-index",
  --   "-j=8",
  --   "--query-driver=/usr/bin/**/clang-*,/bin/clang,/bin/clang++,/usr/bin/gcc,/usr/bin/g++",
  --   "--clang-tidy",
  --   "--clang-tidy-checks=*",
  --   "--all-scopes-completion",
  --   "--cross-file-rename",
  --   "--completion-style=detailed",
  --   "--header-insertion-decorators",
  --   "--header-insertion=iwyu",
  --   "--pch-storage=memory",
  -- },
}
