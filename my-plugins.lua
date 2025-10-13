---@diagnostic disable: undefined-global
vim.list_extend(lvim.plugins, {
  {
    'derektata/lorem.nvim',
    config = function()
      require('lorem').opts {
        sentenceLength = "medium",
        comma_chance = 0.2,
        max_commas_per_sentence = 2,
      }
    end
  },
  { "windwp/nvim-ts-autotag" },
  { "norcalli/nvim-colorizer.lua" },
  { "template-string.nvim" },
  { "prisma/vim-prisma" },
  {
    "mg979/vim-visual-multi",
    branch = "master"
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function() require("nvim-surround").setup() end,
  },
  {
    "luochen1990/rainbow",
    version = "*",
    event = "VeryLazy",
  },
  {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp",
    config = function(plugin, opts)
      require("luasnip.loaders.from_vscode").lazy_load {
        paths = { "~/.config/lvim/snippets" },
        fs_event_providers = { libuv = true, autocmd = true }
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
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  {
    'kabbamine/vcoolor.vim',
  },
  {
    "AckslD/swenv.nvim",
  },
  {
    "stevearc/dressing.nvim",
  },
  {
    'Exafunction/windsurf.vim',
    event = 'BufEnter',
    config = function()
      vim.g.codeium_disable_bindings = 1
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<C-i>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end,
        { expr = true, silent = true })
      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
        { expr = true, silent = true })
      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {
        update_cwd = false,
        update_focused_file = {
          enable = false,
        }
      }
    end,
  }
})
