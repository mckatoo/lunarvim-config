---@diagnostic disable: undefined-global
lvim.autocommands = {
  {
    -- "BufEnter, BufNewFile, BufRead",
    "BufEnter",
    {
      pattern = { "*.sh" },
      command = "setlocal ft=shellscript",
    }
  }
}
