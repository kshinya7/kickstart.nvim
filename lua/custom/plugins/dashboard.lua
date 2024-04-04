return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  opts = function()
    local sleepy_cat = {
      '                                     ',
      '      |\\      _,,,---,,_            ',
      "ZZZzz /,`.-'`'    -.  ;-;;,_         ",
      "     |,4-  ) )-,_. ,\\ (  `'-'       ",
      "    '---''(_/--'  `-'\\_)            ",
      '                                     ',
    }

    local opts = {
      theme = 'hyper',
      shortcut_type = 'number',
      config = {
        -- header = sleepy_cat,
        week_header = {
          enable = true,
        },
        shortcut = {},
        packages = { enable = false },
        project = { enable = false },
        footer = {},
      },
    }

    return opts
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
