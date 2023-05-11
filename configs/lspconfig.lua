local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- python lsp
lspconfig["jedi_language_server"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig["bashls"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
