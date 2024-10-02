---@diagnostic disable: undefined-global
local lspconfig = require('lspconfig')

lvim.builtin.which_key.mappings["l"]["f"] = {
  function()
    require("lvim.lsp.utils").format { timeout_ms = 5000 }
  end,
  "Format",
}

require("lvim.lsp.manager").setup("ruff_lsp")
local on_attach = function(client, bufnr)
  client.server_capabilities.hoverProvider = false
end

lspconfig.ruff_lsp.setup {
  on_attach = on_attach,
}

return {
  load = function()
    local formatters = require "lvim.lsp.null-ls.formatters"
    local linters = require "lvim.lsp.null-ls.linters"

    linters.setup {
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

    lspconfig.jsonls.setup {
      filetypes = { 'json', 'jsonc' }
    }

    lspconfig.bashls.setup {
      filetypes = { 'sh', 'zsh', },
    }

    lspconfig.clangd.setup({
      cmd = { 'clangd', '--background-index', '--clang-tidy', '--log=verbose' },
      init_options = {
        fallbackFlags = { '-std=c++20' },
      },
    })

    lspconfig.lua_ls.setup({
      filetypes = { 'lua' }
    })

    lspconfig.pyright.setup {
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
