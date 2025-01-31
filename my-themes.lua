---@diagnostic disable: undefined-global
vim.list_extend(lvim.plugins, {
  {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    lazy = false,
    priority = 1000,
    config = function()
      require('github-theme').setup({
      })
    end,
  },
  {
    "rebelot/kanagawa.nvim"
  },
  {
    "jackplus-xyz/binary.nvim"
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },
  {
    "NLKNguyen/papercolor-theme",
  }
})

-- lvim.colorscheme = 'github_dark_tritanopia'
lvim.background = "dark"
lvim.colorscheme = "PaperColor"
