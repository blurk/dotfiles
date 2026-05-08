-- Configure diagnostic display
vim.diagnostic.config({
	float = {
		focusable = true,
		style = "minimal",
		border = "rounded",
		source = true, -- Show source in diagnostic popup window
		header = "",
		prefix = "",
	},
	virtual_text = true,-- inline messages
	virtual_lines = false, -- diagnostics as extra lines below the affected line
	signs = true, -- gutter icons
	underline = true,-- underline problematic code
	update_in_insert = false,
	severity_sort = true,
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("gopls", {
  cmd = { "gopls" },
  filetypes = { "go" },
  root_dir = vim.fs.root(0, { "go.mod", ".git" }),
  capabilities = capabilities,
})
vim.lsp.enable("gopls")
