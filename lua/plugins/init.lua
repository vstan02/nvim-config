return {
  'nvim-lua/plenary.nvim',
  {
    'nvchad/base46',
    build = function()
      require('base46').load_all_highlights()
    end,
  },
  {
    'nvchad/ui',
    lazy = false,
    config = function()
      require('nvchad')
    end,
  },
  'nvchad/volt',
  'nvzone/menu',
  { 'nvzone/minty', cmd = { 'Huefy', 'Shades' } },
  {
    'nvim-tree/nvim-web-devicons',
    opts = function()
      dofile(vim.g.base46_cache .. 'devicons')
      return { override = require('nvchad.icons.devicons') }
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    event = 'User FilePost',
    opts = {
      indent = { char = '│', highlight = 'IblChar' },
      scope = { char = '│', highlight = 'IblScopeChar' },
    },
    config = function(_, opts)
      dofile(vim.g.base46_cache .. 'blankline')

      local hooks = require('ibl.hooks')
      hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
      require('ibl').setup(opts)

      dofile(vim.g.base46_cache .. 'blankline')
    end,
  },
  {
    'folke/which-key.nvim',
    keys = { '<leader>', '<c-w>', '"', '\'', '`', 'c', 'v', 'g' },
    cmd = 'WhichKey',
    opts = function()
      dofile(vim.g.base46_cache .. 'whichkey')
      return {}
    end,
  },
  {
    'nvim-tree/nvim-tree.lua',
    cmd = { 'NvimTreeToggle', 'NvimTreeFocus' },
    opts = function()
      return require('configs.nvimtree')
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPost', 'BufNewFile' },
    cmd = { 'TSInstall', 'TSBufEnable', 'TSBufDisable', 'TSModuleInfo' },
    build = ':TSUpdate',
    opts = function()
      return require('configs.treesitter')
    end,
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
  {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    opts = function()
      return require('configs.conform')
    end,
  },
  {
    'lewis6991/gitsigns.nvim',
    event = 'User FilePost',
    opts = function()
      return require('configs.gitsigns')
    end,
  },
  {
    'mason-org/mason.nvim',
    cmd = { 'Mason', 'MasonInstall', 'MasonUpdate' },
    opts = function()
      return require('configs.mason')
    end,
  },
  {
    'neovim/nvim-lspconfig',
    event = 'User FilePost',
    config = function()
      require('configs.lspconfig').defaults()
    end,
  },
  -- load luasnips + cmp related in insert mode only
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      {
        -- snippet plugin
        'L3MON4D3/LuaSnip',
        dependencies = 'rafamadriz/friendly-snippets',
        opts = { history = true, updateevents = 'TextChanged,TextChangedI' },
        config = function(_, opts)
          require('luasnip').config.set_config(opts)
          require('configs.luasnip')
        end,
      },
      -- autopairing of (){}[] etc
      {
        'windwp/nvim-autopairs',
        opts = {
          fast_wrap = {},
          disable_filetype = { 'TelescopePrompt', 'vim' },
        },
        config = function(_, opts)
          require('nvim-autopairs').setup(opts)
          -- setup cmp for autopairs
          local cmp_autopairs = require('nvim-autopairs.completion.cmp')
          require('cmp').event:on('confirm_done', cmp_autopairs.on_confirm_done())
        end,
      },
      -- cmp sources plugins
      {
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'https://codeberg.org/FelipeLema/cmp-async-path.git',
      },
    },
    opts = function()
      return require('configs.cmp')
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    cmd = 'Telescope',
    opts = function()
      return require('configs.telescope')
    end,
  },
}
