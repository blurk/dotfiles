-- Editor
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase =true

vim.opt.wrap = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.cursorline = true

vim.opt.termguicolors = true

vim.opt.mouse = ''

vim.schedule(function() vim.opt.clipboard = 'unnamedplus' end)
