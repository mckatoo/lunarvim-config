lvim.builtin.which_key.mappings["l"]["f"] = {
  function()
    require("lvim.lsp.utils").format { timeout_ms = 5000 }
  end,
  "Format",
}

-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright", "jedi-language-server" })
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "ruff-lsp"
-- end, lvim.lsp.automatic_configuration.skipped_servers)
require("lvim.lsp.manager").setup("ruff_lsp")
local on_attach = function(client, bufnr)
  client.server_capabilities.hoverProvider = false
end

require('lspconfig').ruff_lsp.setup {
  on_attach = on_attach,
}

return {
  load = function()
    local formatters = require "lvim.lsp.null-ls.formatters"
    local linters = require "lvim.lsp.null-ls.linters"

    linters.setup {
      -- {
      --   command = "flake8",
      --   filetypes = {
      --     "python"
      --   }
      -- },
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
      -- {
      --   command = "autoflake",
      --   args = {
      --     "--remove-unused-variables",
      --     "--remove-all-unused-imports",
      --   },
      --   filetypes = {
      --     "python"
      --   }
      -- },
      -- {
      --   command = "black",
      --   filetypes = {
      --     "python"
      --   }
      -- },
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
    require 'lspconfig'.bashls.setup {
      filetypes = { 'sh', 'zsh', },
    }
    require 'lspconfig'.pyright.setup {
      capabilities = {
        workspace = {
          applyEdit = true,
          configuration = true,
          didChangeConfiguration = {
            dynamicRegistration = true
          },
          didChangeWatchedFiles = {
            dynamicRegistration = true,
            relativePatternSupport = true
          },
          inlayHint = {
            refreshSupport = true
          },
          semanticTokens = vim.NIL,
          symbol = {
            dynamicRegistration = false,
            symbolKind = {
              valueSet = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 }
            }
          },
          workspaceEdit = {
            resourceOperations = { "rename", "create", "delete" }
          },
          workspaceFolders = true
        }
      }
    }
  end
}
