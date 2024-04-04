return {
  'tpope/vim-fugitive',
  vim.keymap.set('n', '<leader>gb', '<cmd>Git blame<CR>', { desc = 'Show Git blame for current file' }), -- show git blame
}
