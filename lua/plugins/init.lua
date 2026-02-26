return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'bash',
        'lua',
        'markdown',
        'markdown_inline',
      },
    },
  },
  {
    'mason-org/mason.nvim',
    opts = {
      ensure_installed = {
        'stylua',
      },
    },
  },
  {
    'folke/snacks.nvim',
    opts = {
      picker = {
        hidden = true,
        ignored = true,
        follow = true,
      },
    },
  },
}
