---@diagnostic disable: undefined-global
vim.list_extend(lvim.plugins, {
  {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    lazy = false,      -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,   -- make sure to load this before all the other start plugins
    config = function()
      require('github-theme').setup({
        -- ...
      })

      -- vim.cmd('colorscheme github_dark_tritanopia')
    end,
  }
  -- {
  --   "nyoom-engineering/oxocarbon.nvim",
  --   lazy = false,
  -- },
})

lvim.colorscheme = 'github_dark_tritanopia'
-- vim.g.neon_style = 'dark'
