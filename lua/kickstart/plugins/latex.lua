return {
  {
    'lervag/vimtex',
    lazy = false, -- VimTeX recommends not lazy-loading for full feature support
    config = function()
      -- Check the operating system
      local is_windows = vim.loop.os_uname().sysname == 'Windows_NT'

      if is_windows then
        vim.g.vimtex_view_method = 'general'
      else
        -- Default for Linux/BSD
        vim.g.vimtex_view_method = 'zathura'
      end

      vim.g.vimtex_compiler_method = 'latexmk'

      -- Optional: Ensure synctex is enabled for forward/backward search
      vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'
    end,
  },
}
