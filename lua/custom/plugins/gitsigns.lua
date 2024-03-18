return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    current_line_blame_opts = {
      delay = 200,
    },
  },
  vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', { desc = 'Preview hunk' }),
  vim.keymap.set('n', '<leader>gt', ':Gitsigns toggle_current_line_blame<CR>', { desc = 'Toggle current line blame' }),
}
