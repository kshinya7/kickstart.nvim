return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
  vim.keymap.set('n', '<leader>ee', '<cmd>Neotree toggle<CR>', { desc = 'Toggle file explorer' }), -- toggle file explorer
  vim.keymap.set('n', '<leader>ef', '<cmd>Neotree toggle reveal<CR>', { desc = 'Toggle file explorer on current file' }), -- toggle file explorer on current file
}
