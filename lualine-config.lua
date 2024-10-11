---@diagnostic disable: undefined-global
local function get_venv_status()
  local VIRTUAL_ENV = os.getenv("VIRTUAL_ENV")
  local venv_status = "venv  "

  if VIRTUAL_ENV ~= nil then
    venv_status = "venv  "
  end
  return venv_status
end

local function get_poetry_status()
  local POETRY_ACTIVE = os.getenv("POETRY_ACTIVE")
  local poetry_status = "poetry  "

  if POETRY_ACTIVE ~= nil then
    poetry_status = "poetry  "
  end
  return poetry_status
end

local function codeium_status()
  local str = vim.fn["codeium#GetStatusString"]()
  if str == " ON" then
    return " codeium  "
  elseif str == " OFF" then
    return " codeium  "
  elseif str == " * " then
    return " codeium "
  else
    return str
  end
end


lvim.builtin.lualine.sections.lualine_b = {
  get_poetry_status,
  get_venv_status,
  codeium_status
}
