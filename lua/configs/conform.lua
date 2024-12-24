local options = {
  formatters_by_ft = {
    lua = { 'stylua' },
    ocaml = { 'ocamlformat', lsp_fallback = true },
    clojure = { 'cljfmt', lsp_fallback = true },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = false,
  },
}

require('conform').setup(options)
