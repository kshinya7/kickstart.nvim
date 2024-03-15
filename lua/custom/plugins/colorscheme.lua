return {
  {
    'loctvl842/monokai-pro.nvim',
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('monokai-pro').setup {
        transparent_background = true,
        filter = 'octagon',
        background_clear = {
          'nvim-tree',
          'telescope',
        },
      }
      vim.cmd [[colorscheme monokai-pro]]
    end,
  },
}
