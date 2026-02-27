vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.autowrite = true
vim.opt.laststatus = 3
vim.opt.showmode = false
vim.opt.splitkeep = "screen"
vim.opt.confirm = true
vim.opt.clipboard = vim.env.SSH_CONNECTION and "" or "unnamedplus"
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- Indenting
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = "a"
vim.opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}

-- Numbers
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.ruler = false

vim.opt.signcolumn = "yes"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.timeoutlen = 400
vim.opt.undofile = true

vim.opt.updatetime = 250

local is_windows = vim.fn.has "win32" ~= 0
local sep = is_windows and "\\" or "/"
local delim = is_windows and ";" or ":"
vim.env.PATH = table.concat({ vim.fn.stdpath "data", "mason", "bin" }, sep) .. delim .. vim.env.PATH
