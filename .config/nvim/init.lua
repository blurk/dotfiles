-- Editor
vim.o.number = true
vim.o.relativenumber = true
vim.o.ruler = true
vim.o.hlsearch = true
vim.o.wrap = true
vim.o.clipboard = "unnamedplus"
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Keybindings
vim.g.mapleader = " "

-- Map
vim.keymap.set('n', '<leader>e', ':Ex<CR>', { silent = true })
