return {
  'junegunn/gv.vim',
  vim.keymap.set('n', '<leader>gl', '<cmd>GV<CR>', { desc = 'Browse Git commits' }), -- show git blame
}
