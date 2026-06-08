return { "catppuccin/nvim", name = "catppuccin", priority = 1000, config = function()

vim.cmd.colorscheme("catppuccin-mocha")
local cat = require("catppuccin")

cat.compile()
vim.cmd.colorscheme(vim.g.colors_name)
end }
