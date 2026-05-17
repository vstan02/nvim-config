return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'rust',
      },
    },
  },
  {
    'mason-org/mason.nvim',
    opts = {
      ensure_installed = {
        'bacon-ls',
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      bacon_ls = {},
    },
  },
}
