return {
  'stevearc/oil.nvim',
  opts = {
    view_options = {
      show_hidden = true,
    },
  },
  vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' }),
}
