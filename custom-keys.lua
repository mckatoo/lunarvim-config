return {
  load = function()
    lvim.builtin.which_key.mappings["l"]["f"] = {
      function()
        require("lvim.lsp.utils").format { timeout_ms = 2000 }
      end,
      "Format",
    }
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

    lvim.keys.insert_mode["jk"] = "<esc>"
    lvim.keys.insert_mode["<C-l>"] = "<Right>"
    lvim.keys.insert_mode["<C-h>"] = "<Left>"
    lvim.keys.insert_mode["<C-k>"] = "<Up>"
    lvim.keys.insert_mode["<C-j>"] = "<Down>"
    lvim.keys.insert_mode["<M-;>"] = "<Cmd>call codeium#CycleOrComplete()<CR>"
    lvim.keys.insert_mode["<M-x>"] = "<Cmd>call codeium#Clear()<CR>"
  end
}
