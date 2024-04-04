return {
  'nvim-lualine/lualine.nvim',
  -- event = 'VeryLazy',
  -- init = function()
  --   vim.g.lualine_laststatus = vim.o.laststatus
  --   if vim.fn.argc(-1) > 0 then
  --     -- set an empty statusline till lualine loads
  --     vim.o.statusline = ' '
  --   else
  --     -- hide the statusline on the starter page
  --     vim.o.laststatus = 0
  --   end
  -- end,
  opts = {
    options = {
      disabled_filetypes = { statusline = { 'dashboard', 'alpha', 'starter' } },
      icons_enabled = true,
      theme = 'horizon',
      component_separators = '',
      -- section_separators = '',
      always_divide_middle = true,
      globalstatus = true,
      refresh = {
        statusline = 1000,
        tabline = 1000,
      },
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = {
        {
          'filename',
          path = 1,
        },
      },
      lualine_c = { 'diff' },
      lualine_x = { 'filetype' },
      lualine_y = {},
      lualine_z = { 'location' },
    },
    extensions = { 'neo-tree' },
  },
}
