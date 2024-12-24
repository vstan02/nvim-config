local on_attach = require('nvchad.configs.lspconfig').on_attach
local on_init = require('nvchad.configs.lspconfig').on_init
local capabilities = require('nvchad.configs.lspconfig').capabilities

local lspconfig = require('lspconfig')
local servers = {
  'clangd',
  'cmake',
  'clojure_lsp',
  'bashls',
  'cssls',
  'somesass_ls',
  'html',
  'ts_ls',
  'jdtls',
  'ocamllsp',
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  })
end
