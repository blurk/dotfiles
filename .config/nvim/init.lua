-- Editor
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.hlsearch = true
vim.opt.wrap = true
vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.cursorline = true

-- Keybindings
vim.g.mapleader = " "

-- Map
vim.keymap.set('n', '<leader>w', ':w<CR>', { silent = true })
vim.keymap.set('n', '<leader>q', ':q<CR>', { silent = true })
vim.keymap.set('n', '<leader>r', ':source $MYVIMRC<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>l', '$', { noremap = true })
vim.keymap.set('n', '<leader>h', '^', { noremap = true })

vim.keymap.set('n', '<leader>e', function() 
if vim.bo.filetype == "netrw" then
  vim.cmd("bd")
else
  vim.cmd("Explore")
end
end, { silent = true, noremap = true })
