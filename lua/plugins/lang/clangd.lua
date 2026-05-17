return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'c',
        'cpp',
      },
    },
  },
  {
    'mason-org/mason.nvim',
    opts = {
      ensure_installed = {
        'clangd',
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      clangd = {},
    },
  },
}
