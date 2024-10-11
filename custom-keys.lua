---@diagnostic disable: undefined-global
lvim.keys.normal_mode["<S-h>"] = false
lvim.keys.normal_mode["<S-h>"] = "<Cmd>BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<S-l>"] = false
lvim.keys.normal_mode["<S-l>"] = "<Cmd>BufferLineCycleNext<CR>"
lvim.keys.normal_mode[";"] = "A;<ESC>"
lvim.keys.normal_mode[","] = "A,<ESC>"
lvim.keys.normal_mode["<C-a>"] = ":wall<CR>"
lvim.keys.normal_mode["<leader>so"] = "<Cmd>SortImport<CR>"
lvim.keys.normal_mode["<leader>k"] = "<PageUp>"
lvim.keys.normal_mode["<leader>j"] = "<PageDown>"
lvim.keys.normal_mode["<M-Up>"] = "<Cmd>horizontal resize +2<CR>"
lvim.keys.normal_mode["<M-Down>"] = "<Cmd>horizontal resize -2<CR>"
lvim.keys.normal_mode["C"] = "<Cmd>lua require('swenv.api').pick_venv()<CR>"
lvim.keys.normal_mode["<C-t>"] = "<Cmd>ToggleTerm direction=horizontal size=5<CR>"
lvim.keys.normal_mode["<Leader>q"] = false
lvim.keys.normal_mode["<Leader>q"] = ":qa<CR>"
lvim.keys.normal_mode["<leader>e"] = false
lvim.keys.normal_mode["<leader>e"] = ":NeoTreeShowToggle"
-- lvim.keys.normal_mode["s"] = require('substitute').operator
-- lvim.keys.normal_mode["ss"] = require('substitute').line
-- lvim.keys.normal_mode["S"] = require('substitute').eol

lvim.keys.insert_mode["jk"] = "<esc>"
lvim.keys.insert_mode["<C-l>"] = "<Right>"
lvim.keys.insert_mode["<C-h>"] = "<Left>"
lvim.keys.insert_mode["<C-k>"] = "<Up>"
lvim.keys.insert_mode["<C-j>"] = "<Down>"
lvim.keys.insert_mode["<M-;>"] = "<Cmd>call codeium#CycleOrComplete()<CR>"
lvim.keys.insert_mode["<M-x>"] = "<Cmd>call codeium#Clear()<CR>"
lvim.keys.insert_mode["<Tab>"] = False
lvim.keys.insert_mode["<Tab>"] = "<Tab>"
lvim.keys.insert_mode["<S-Tab>"] = "<Cmd>call codeium#Accept()<CR>"
lvim.keys.insert_mode["<C-o>"] = "<ESC>o"
