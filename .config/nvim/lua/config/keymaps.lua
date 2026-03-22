-- Map
vim.keymap.set('n', '<leader>w', ':w<CR>', { silent = true })
vim.keymap.set('n', '<leader>q', ':q<CR>', { silent = true })
vim.keymap.set('n', '<leader>r', ':source $MYVIMRC<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>l', '$', { noremap = true })
vim.keymap.set('n', '<leader>h', '^', { noremap = true })

vim.keymap.set('n', '<leader>e', function()
  if vim.bo.filetype == "netrw" then
    vim.cmd("bd")
  else
    vim.cmd("Explore")
  end
end, { silent = true, noremap = true })