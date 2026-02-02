local M = {}

M.plugins = {
  {
    'lervag/vimtex',
    ft = 'tex',
    init = function()
      vim.g.vimtex_view_method = 'general'
      vim.g.vimtex_view_general_viewer = 'SumatraPDF'
      vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_view_automatic = 1
    end,
  },

  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        texlab = {},
      },
    },
  },
}

return M
