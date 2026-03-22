return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      "*", -- enable for all filetypes
    }, {
      RGB      = true,  -- #RGB hex codes
      RRGGBB   = true,  -- #RRGGBB hex codes
      names    = true,  -- "Blue" or "red"
      RRGGBBAA = true,  -- #RRGGBBAA hex codes
      rgb_fn   = true,  -- CSS rgb() and rgba()
      hsl_fn   = true,  -- CSS hsl() and hsla()
      css      = true,  -- Enable all CSS features
      css_fn   = true,  -- Enable all CSS functions
    })
  end,
}
