return {
  load = function()
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
  end
}
