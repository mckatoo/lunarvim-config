---@diagnostic disable: undefined-global

package.path = package.path .. ";" .. os.getenv('HOME') .. "/.config/lvim/?.lua"

vim.diagnostic.config({ virtual_text = false })
lvim.reload_config_on_save = true
vim.o.autoread = true
vim.o.relativenumber = true
vim.o.wrap = true
vim.o.timeoutlen = 200
vim.opt.laststatus = 3

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "1"
vim.opt.foldtext = ""
vim.opt.foldlevel = 99

require("utils")
require("my-autocommands")
require("custom-keys")
require("my-plugins")
require("my-themes")
require("lsp-configs")
require("codeium-config")
require("terminal-config")
require("lualine-config")
require("crlf-config")
require("template-string-config")
require("nvim-colorizer-config")
require("nvim-ts-autotag-config")
require("emmet-config")
require("telescope-config")
