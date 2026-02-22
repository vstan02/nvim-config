return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      opts = {
        kotlin_language_server = {},
      },
    },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'kotlin',
      },
    },
  },
  {
    'mason-org/mason.nvim',
    opts = {
      ensure_installed = {
        'ktlint',
        'kotlin-language-server',
      },
    },
  },
}
