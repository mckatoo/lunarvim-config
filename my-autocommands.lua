---@diagnostic disable: undefined-global

function xmake_config_generate()
  vim.cmd "silent !xmake project --kind=compile_commands --lsp=clang -y"
  vim.cmd "silent !xmake project --kind=cmakelists -y"
  print("xmake config files created!")
end

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
      -- command = "!xmake project --kind=compile_commands --lsp=clang"
    }
  }
}
