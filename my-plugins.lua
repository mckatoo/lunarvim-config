---@diagnostic disable: undefined-global
lvim.plugins = {
  -- {
  --   "mg979/vim-visual-multi",
  --   version = "*",
  --   event = "VeryLazy",
  -- },
  -- {
  --   "terryma/vim-multiple-cursors",
  --   version = "*",
  --   event = "VeryLazy",
  --   config = function()
  --     vim.g.multi_cursor_use_default_mapping = 0
  --     vim.g.multi_cursor_start_word_key      = '<C-n>'
  --     vim.g.multi_cursor_select_all_word_key = '<A-n>'
  --     vim.g.multi_cursor_start_key           = 'g<C-n>'
  --     vim.g.multi_cursor_select_all_key      = 'g<A-n>'
  --     vim.g.multi_cursor_next_key            = '<C-n>'
  --     vim.g.multi_cursor_prev_key            = '<C-p>'
  --     vim.g.multi_cursor_skip_key            = '<C-x>'
  --     vim.g.multi_cursor_quit_key            = '<Esc>'
  --   end
  -- },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function() require("nvim-surround").setup() end,
  },
  {
    "ruanyl/vim-sort-imports",
    version = "*",
    event = "VeryLazy",
  },
  {
    "luochen1990/rainbow",
    version = "*",
    event = "VeryLazy",
  },
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require("luasnip.loaders.from_vscode").lazy_load {
        paths = { "~/.config/lvim/snippets" },
      }
    end,
  },
  {
    "sontungexpt/witch",
    lazy = false,
    config = function(_, opts)
      require("witch").setup(opts)
    end,
  },
  {
    "Abstract-IDE/Abstract-cs",
    lazy = false,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
  },
  {
    "rafamadriz/neon",
    lazy = false
  },
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000
  },
  {
    "comfysage/evergarden",
    opts = {
      transparent_background = true,
      contrast_dark = "medium", -- 'hard'|'medium'|'soft'
      overrides = {},           -- add custom overrides
    }
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false
  },
  -- Markdown Preview
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  -- {
  --   'Exafunction/codeium.vim',
  --   event = 'BufEnter',
  -- },
  {
    'kabbamine/vcoolor.vim',
  },
  {
    "AckslD/swenv.nvim",
  },
  {
    "stevearc/dressing.nvim",
  },
}
