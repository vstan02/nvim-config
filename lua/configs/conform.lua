return {
  formatters_by_ft = {
    lua = { 'stylua', lsp_fallback = true },
    ocaml = { 'ocamlformat', lsp_fallback = true },
    clojure = { 'cljfmt', lsp_fallback = true },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = false,
  },
}
