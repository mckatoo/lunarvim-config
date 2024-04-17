return {
  load = function()
    local formatters = require "lvim.lsp.null-ls.formatters"
    local linters = require "lvim.lsp.null-ls.linters"

    linters.setup {
      {
        command = "flake8",
        filetypes = {
          "python"
        }
      },
      {
        command = "eslint",
        filetypes = {
          "javascriptreact",
          "javascript",
          "typescriptreact",
          "typescript",
          "vue"
        },
      },
    }
    formatters.setup {
      {
        command = "black",
        args = { "--line-length=80" },
        filetypes = {
          "python"
        }
      },
      {
        command = "eslint",
        filetypes = {
          "javascriptreact",
          "javascript",
          "typescriptreact",
          "typescript",
          "vue"
        },
      },

    }
  end
}
