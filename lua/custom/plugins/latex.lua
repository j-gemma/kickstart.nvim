return {
  {
    "lervag/vimtex",
    lazy = false, -- Load immediately for LaTeX files
    config = function()
      vim.g.vimtex_view_method = "sumatrapdf" -- or "zathura" for Linux/WSL
      vim.g.vimtex_compiler_method = "latexmk"
    end,
  },
}
