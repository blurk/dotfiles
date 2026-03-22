return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',

  config = function()
    require('nvim-treesitter').install({
      'javascript',
      'typescript',
      'jsx',
      'tsx',
      'json',
      'jsdoc',
      'html',
      'css',
      'regex',
      'python',
      'lua',
      'c',
      'query',
    })

    vim.api.nvim_create_autocmd('FileType', {
      pattern = {
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
      },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}