return {
  'echasnovski/mini.hipatterns',
  event = { 'BufReadPost', 'BufNewFile', 'BufWritePre' },
  opts = function()
    local hi = require 'mini.hipatterns'
    return {
      highlighters = {
        -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
        fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
        hack = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
        todo = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
        note = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },
        -- Highlight hex color strings (`#rrggbb`) using that color
        hex_color = hi.gen_highlighter.hex_color { priority = 2000 },
      },
    }
  end,
}
