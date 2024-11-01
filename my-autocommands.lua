---@diagnostic disable: undefined-global

function xmake_config_generate()
  vim.cmd "silent !nohup xmake project --kind=compile_commands --lsp=clang -y &"
  vim.cmd "silent !nohup xmake project --kind=compile_flags --lsp=clang -y &"
  vim.cmd "silent !nohup xmake project --kind=cmakelists -y &"
  print("xmake config files created!")
end

local show_diagnostics = function()
  local opts = {
    focusable = false,
    close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
    border = "rounded",
    source = "always",
    prefix = " ",
    scope = "cursor",
    float = { border = 'rounded' },
  }
  if not vim.diagnostic.open_float(nil, opts) then
    vim.lsp.buf.hover()
  end
end

lvim.autocommands = {
  {
    "CursorHold",
    {
      callback = show_diagnostics
    }
  },
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
