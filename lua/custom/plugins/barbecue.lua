return {
  {
    'utilyre/barbecue.nvim',
    name = 'barbecue',
    version = '*',
    dependencies = {
      'SmiteshP/nvim-navic',
      'nvim-tree/nvim-web-devicons', -- optional dependency
    },
    opts = {
      theme = {
        basename = { bold = false },
      },
      -- configurations go here
      -- symbols = {
      -- separator = '/',
      -- },
    },
  },
}
