---@diagnostic disable: undefined-global

lvim.autocommands = {
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
