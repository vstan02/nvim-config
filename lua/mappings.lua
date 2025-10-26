vim.keymap.set('i', '<C-b>', '<ESC>^i', { desc = 'move beginning of line' })
vim.keymap.set('i', '<C-e>', '<End>', { desc = 'move end of line' })
vim.keymap.set('i', '<C-h>', '<Left>', { desc = 'move left' })
vim.keymap.set('i', '<C-l>', '<Right>', { desc = 'move right' })
vim.keymap.set('i', '<C-j>', '<Down>', { desc = 'move down' })
vim.keymap.set('i', '<C-k>', '<Up>', { desc = 'move up' })

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'switch window left' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'switch window right' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'switch window down' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'switch window up' })

vim.keymap.set('n', '<Esc>', '<cmd>noh<CR>', { desc = 'general clear highlights' })

vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', { desc = 'general save file' })
vim.keymap.set('n', '<C-c>', '<cmd>%y+<CR>', { desc = 'general copy whole file' })

vim.keymap.set('n', '<leader>n', '<cmd>set nu!<CR>', { desc = 'toggle line number' })
vim.keymap.set('n', '<leader>rn', '<cmd>set rnu!<CR>', { desc = 'toggle relative number' })
vim.keymap.set('n', '<leader>ch', '<cmd>NvCheatsheet<CR>', { desc = 'toggle nvcheatsheet' })

vim.keymap.set({ 'n', 'x' }, '<leader>fm', function()
  require('conform').format({ lsp_fallback = true })
end, { desc = 'general format file' })

-- global lsp mappings
vim.keymap.set('n', '<leader>ds', vim.diagnostic.setloclist, { desc = 'LSP diagnostic loclist' })

-- tabufline
if require('nvconfig').ui.tabufline.enabled then
  vim.keymap.set('n', '<leader>b', '<cmd>enew<CR>', { desc = 'buffer new' })

  vim.keymap.set('n', '<tab>', function()
    require('nvchad.tabufline').next()
  end, { desc = 'buffer goto next' })

  vim.keymap.set('n', '<S-tab>', function()
    require('nvchad.tabufline').prev()
  end, { desc = 'buffer goto prev' })

  vim.keymap.set('n', '<leader>x', function()
    require('nvchad.tabufline').close_buffer()
  end, { desc = 'buffer close' })
end

-- nvimtree
vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', { desc = 'nvimtree toggle window' })
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeFocus<CR>', { desc = 'nvimtree focus window' })

-- whichkey
vim.keymap.set('n', '<leader>wK', '<cmd>WhichKey <CR>', { desc = 'whichkey all keymaps' })

vim.keymap.set('n', '<leader>wk', function()
  vim.cmd('WhichKey ' .. vim.fn.input('WhichKey: '))
end, { desc = 'whichkey query lookup' })

-- Comment
vim.keymap.set('n', '<leader>/', 'gcc', { desc = 'toggle comment', remap = true })
vim.keymap.set('v', '<leader>/', 'gc', { desc = 'toggle comment', remap = true })

-- telescope
vim.keymap.set('n', '<leader>fw', '<cmd>Telescope live_grep<CR>', { desc = 'telescope live grep' })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { desc = 'telescope find buffers' })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { desc = 'telescope help page' })
vim.keymap.set('n', '<leader>ma', '<cmd>Telescope marks<CR>', { desc = 'telescope find marks' })
vim.keymap.set('n', '<leader>fo', '<cmd>Telescope oldfiles<CR>', { desc = 'telescope find oldfiles' })
vim.keymap.set(
  'n',
  '<leader>fz',
  '<cmd>Telescope current_buffer_fuzzy_find<CR>',
  { desc = 'telescope find in current buffer' }
)
vim.keymap.set('n', '<leader>cm', '<cmd>Telescope git_commits<CR>', { desc = 'telescope git commits' })
vim.keymap.set('n', '<leader>gt', '<cmd>Telescope git_status<CR>', { desc = 'telescope git status' })
vim.keymap.set('n', '<leader>pt', '<cmd>Telescope terms<CR>', { desc = 'telescope pick hidden term' })

vim.keymap.set('n', '<leader>th', function()
  require('nvchad.themes').open()
end, { desc = 'telescope nvchad themes' })

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'telescope find files' })
vim.keymap.set(
  'n',
  '<leader>fa',
  '<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>',
  { desc = 'telescope find all files' }
)

-- terminal
vim.keymap.set('t', '<C-x>', '<C-\\><C-N>', { desc = 'terminal escape terminal mode' })

-- new terminals
vim.keymap.set('n', '<leader>h', function()
  require('nvchad.term').new({ pos = 'sp' })
end, { desc = 'terminal new horizontal term' })

vim.keymap.set('n', '<leader>v', function()
  require('nvchad.term').new({ pos = 'vsp' })
end, { desc = 'terminal new vertical term' })

-- toggleable
vim.keymap.set({ 'n', 't' }, '<A-v>', function()
  require('nvchad.term').toggle({ pos = 'vsp', id = 'vtoggleTerm' })
end, { desc = 'terminal toggleable vertical term' })

vim.keymap.set({ 'n', 't' }, '<A-h>', function()
  require('nvchad.term').toggle({ pos = 'sp', id = 'htoggleTerm' })
end, { desc = 'terminal toggleable horizontal term' })

vim.keymap.set({ 'n', 't' }, '<A-i>', function()
  require('nvchad.term').toggle({ pos = 'float', id = 'floatTerm' })
end, { desc = 'terminal toggle floating term' })
