local opt = vim.opt

-- Enable 24-bit colour
opt.termguicolors = true

-- Preview changes live
opt.inccommand = 'split'

-- Make line numbers default.
opt.number = true

-- Sync clipboard between OS and Neovim.
opt.clipboard = 'unnamedplus'

-- Enable break indent.
opt.breakindent = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term.
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default.
opt.signcolumn = 'yes'

-- Decrease update time.
opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner.
opt.timeoutlen = 300

-- Configure how new splits should be opened.
opt.splitright = true
opt.splitbelow = true

-- Show which line your cursor is on.
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10
