---@diagnostic disable: undefined-global

function xmake_config_generate()
  vim.cmd "silent !nohup xmake project --kind=compile_commands --lsp=clang -y &"
  vim.cmd "silent !nohup xmake project --kind=compile_flags --lsp=clang -y &"
  vim.cmd "silent !nohup xmake project --kind=cmakelists -y &"
  print("xmake config files created!")
end

function show_diagnostics_info()
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

local Symbol = {
  comma = ',',
  semmicolon = ';'
}

local function toggle(comma_or_semmicolon)
  local line = vim.api.nvim_get_current_line()
  local cmd = comma_or_semmicolon .. "$"
  if line:match(cmd) then
    print('tem virgula')
    line = line:gsub(cmd, "")
  else
    print('NÃO tem virgula')
    line = line .. comma_or_semmicolon
  end
  vim.api.nvim_set_current_line(line)
end

function Toggle_comma()
  toggle(Symbol.comma)
end

function Toggle_semicolon()
  toggle(Symbol.semmicolon)
end
