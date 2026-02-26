return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        jdtls = {},
      },
      setup = {
        jdtls = function()
          return true -- avoid duplicate servers
        end,
      },
    },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'java',
      },
    },
  },
  {
    'mason-org/mason.nvim',
    opts = {
      ensure_installed = {
        'jdtls',
        'java-debug-adapter',
        'java-test',
      },
    },
  },
}
