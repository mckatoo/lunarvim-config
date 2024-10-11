---@diagnostic disable: undefined-global
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
--
-- Fix visual-mult
-- set nocompatible
vim.g.nocompatible = true
-- set nowrapscan
-- vim.g.nowrapscan = true

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

require("custom-keys")
require("my-plugins")
require("my-themes")
require("lsp-configs")
require("codeium-config")
require("terminal-config")
require("lualine-config")
