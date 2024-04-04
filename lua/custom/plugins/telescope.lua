return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { -- If encountering errors, see telescope-fzf-native README for install instructions
      'nvim-telescope/telescope-fzf-native.nvim',

      -- `build` is used to run some command when the plugin is installed/updated.
      -- This is only run then, not every time Neovim starts up.
      build = 'make',

      -- `cond` is a condition used to determine whether this plugin should be
      -- installed and loaded.
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
  },
  config = function()
    local telescope = require 'telescope'
    local actions = require 'telescope.actions'
    telescope.setup {
      defaults = {
        layout_strategy = 'vertical',
        mirror = true,
        layout_config = {
          vertical = {
            prompt_position = 'top',
            mirror = true,
            width = 0.95,
            height = 0.95,
          },
        },
        file_ignore_patterns = {
          '.git/',
        },
        dynamic_preview_title = true,
        results_title = '',
        prompt_title = '',
        mappings = {
          i = {
            ['<C-k>'] = actions.move_selection_previous, -- move to prev result
            ['<C-j>'] = actions.move_selection_next, -- move to next result
          },
        },
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
      pickers = {
        find_files = {
          -- theme = 'dropdown',
          hidden = true,
        },
        grep_string = {
          additional_args = { '--hidden' },
        },
        live_grep = {
          additional_args = { '--hidden' },
        },
      },
    }

    -- Enable telescope extensions, if they are installed
    telescope.load_extension 'fzf'
    telescope.load_extension 'ui-select'
    telescope.load_extension 'neoclip'

    -- Keymaps
    local keymap = vim.keymap
    local builtin = require 'telescope.builtin'
    keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
    keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Find recent files' })
    keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Find string by grep' })
    keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Find current string' })
    keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Find diagnostics' })
    keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find existing buffers' })

    -- Shortcut for searching your neovim configuration files
    keymap.set('n', '<leader>fn', function()
      builtin.find_files { cwd = vim.fn.stdpath 'config' }
    end, { desc = 'Find Neovim files' })
  end,
}
