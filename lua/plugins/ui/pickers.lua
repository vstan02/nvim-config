return {
  {
    'folke/snacks.nvim',
    opts = {
      explorer = { enabled = true },
      picker = { enabled = true }
    },
    keys = {
      { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
    }
  }
}

