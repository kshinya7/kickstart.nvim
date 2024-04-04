local opt = vim.opt

-- set termguicolors
opt.termguicolors = true

-- [[ Setting options ]]
opt.number = true
-- opt.relativenumber = true

-- Enable mouse mode
opt.mouse = 'a'

-- Remove ~ from blank lines
opt.fillchars = { eob = ' ' }

-- Don't show the mode, since it's already in status line
opt.showmode = false

-- Sync clipboard between OS and Neovim.
opt.clipboard = 'unnamedplus'

-- Enable break indent
opt.breakindent = true

-- Indent line colors
vim.api.nvim_set_hl(0, 'IblIndent', { fg = '#3d3e4c' })

-- Save undo history
opt.undofile = true

-- Indentation
opt.autoindent = true
opt.smartindent = true

-- cmd over statusline
-- opt.cmdheight = 0
-- opt.laststatus = 0

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
opt.signcolumn = 'yes'

-- Decrease update time
opt.updatetime = 250
opt.timeoutlen = 300

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
opt.inccommand = 'split'

-- Show which line your cursor is on
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10
