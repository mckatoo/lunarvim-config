---@diagnostic disable: undefined-global

local conform = require("conform")


conform.setup({
  formatters_by_ft = {
    javascript = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    sql = { "sqlfluff" },
    ["*"] = { "injected" },
  }
})
conform.formatters.sql_formatter = {
  prepend_args = { "-c", vim.fn.expand("~/.config/sql_formatter.json"),
  }
}

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
