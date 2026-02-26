return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      ocamllsp = {
        filetypes = {
          'ocaml',
          'ocaml.menhir',
          'ocaml.interface',
          'ocaml.ocamllex',
          'reason',
          'dune',
        },
        root_markers = {
          function(name)
            return name:match('.*%.opam$')
          end,
          '.git',
          'dune-project',
          'dune-workspace',
          function(name)
            return name:match('.*%.ml$')
          end,
        },
      },
    },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'ocaml',
      },
    },
  },
  {
    'mason-org/mason.nvim',
    opts = {
      ensure_installed = {
        'ocaml-lsp',
        'ocamlformat',
      },
    },
  },
}
