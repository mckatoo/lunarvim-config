-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
--
-- Add $HOME/.config/lvim/ to require path
package.path = package.path .. ";" .. os.getenv('HOME') .. "/.config/lvim/?.lua"
vim.diagnostic.config({ virtual_text = false })

lvim.reload_config_on_save = true

-- auto-reload files when modified externally
-- https://unix.stackexchange.com/a/383044
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})
--
--
-- Remapeamento de atalhos
local custom_keys = require("custom-keys")
custom_keys.load()
--
-- Plugins
local my_plugins = require("my-plugins")
my_plugins.load()
--
--
-- Temas
local my_themes = require("my-themes")
my_themes.load()

--
-- Begin Lsp Config's
local lsp_configs = require("lsp-configs")
lsp_configs.load()
-- End Lsp Config's

-- Begin Codeium config
local codeium_config = require('codeium-config')
codeium_config.load()
-- End Codeium config
--
-- Begin ToggleTerm config
local terminal_config = require("terminal-config")
terminal_config.load()
-- End ToggleTerm config

-- Begin lualine config
local lualine_config = require("lualine-config")
lualine_config.load()
-- End lualine config
--
-- Begin swenv config
--
-- local swenv_config = require("swenv-config")
-- swenv_config.load()
--
-- End swenv config
-- Begin autocommands
-- local my_autocommands = require('my-autocommands')
-- my_autocommands.load()
-- End autocommands
--
-- Begin nvim-tree config
-- local nvim_tree_config = require("nvim-tree-config")
-- nvim_tree_config.load()
-- End nvim-tree config
