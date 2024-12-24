return {
  {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    config = function()
      require('configs.conform')
    end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('nvchad.configs.lspconfig').defaults()
      require('configs.lspconfig')
    end,
  },
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'lua-language-server',
        'stylua',
        'clangd',
        'cmake-language-server',
        'clojure-lsp',
        'bash-language-server',
        'css-lsp',
        'some-sass-language-server',
        'html-lsp',
        'typescript-language-server',
        'jdtls',
      },
    },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'vim',
        'lua',
        'cpp',
        'c',
        'clojure',
        'markdown',
        'scala',
        'java',
        'css',
        'scss',
        'html',
        'javascript',
        'typescript',
        'tsx',
      },
      indent = {
        enable = false,
      },
    },
  },
}
