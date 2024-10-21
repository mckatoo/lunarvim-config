---@diagnostic disable: undefined-global

local async = require('plenary.async')
xmake_config_generate = async.void(function()
  print("creating...")
  async.void(function()
    vim.cmd "silent !xmake project --kind=compile_commands --lsp=clang -y"
  end)()
  async.void(function()
    vim.cmd "silent !xmake project --kind=cmakelists -y"
  end)()
  print("xmake config files created!")
end)

lvim.autocommands = {
  {
    "BufEnter",
    {
      pattern = { "*.sh" },
      command = "setlocal ft=shellscript",
    }
  },
  {
    { "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" },
    {
      command = "if mode() != 'c' | checktime | endif",
      pattern = { "*" },
    },
  },
  {
    "BufWritePost",
    {
      pattern = { "xmake.lua" },
      command = "lua xmake_config_generate()"
    }
  }
}
