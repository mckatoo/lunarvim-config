local telescope = require('telescope')

telescope.setup {
  pickers = {
    colorscheme = {
      enable_preview = true,
    }
  },
  cwd = vim.fn.getcwd(), -- Usa o diretório atual em vez de seguir o arquivo
}

