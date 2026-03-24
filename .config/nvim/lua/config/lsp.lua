vim.lsp.enable({
	"css-lsp",
	"css-variables-language-server",
	"cssmodules-language-server",
	"docker-compose-language-service",
	"docker-language-server",
	"dockerfile-language-server",
	"eslint-lsp",
	"gopls",
	"html-lsp",
	"json-lsp",
	"jsonlint",
	"lua-language-server",
	"prettier",
	"shellcheck",
	"shfmt",
	"stylua",
	"tailwindcss-language-server",
	"typescript-language-server",
})

vim.diagnostic.config({
	float = {
		focusable = true,
		style = "minimal",
		border = "rounded",
		source = true, -- Show source in diagnostic popup window
		header = "",
		prefix = "",
	},
	virtual_text = false,
	virtual_lines = false,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.HINT] = " ",
			[vim.diagnostic.severity.INFO] = " ",
		},
	},
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

local lsp_capabilities = vim.lsp.protocol.make_client_capabilities()

vim.lsp.config("*", {
	capabilities = lsp_capabilities,
})
