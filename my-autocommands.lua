---@diagnostic disable: undefined-global

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
  },
}
