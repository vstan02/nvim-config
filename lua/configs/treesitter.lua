pcall(function()
  dofile(vim.g.base46_cache .. 'syntax')
  dofile(vim.g.base46_cache .. 'treesitter')
end)

return {
  ensure_installed = {
    'cpp',
    'c',
    'clojure',
    'markdown',
    'java',
    'css',
    'scss',
    'html',
    'javascript',
    'typescript',
    'tsx',
    'lua',
    'luadoc',
    'printf',
    'vim',
    'vimdoc',
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = { enable = false },
}
