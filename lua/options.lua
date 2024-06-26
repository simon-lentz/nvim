local options = function()
    -- Set <space> as the leader key.
    vim.g.mapleader = ' '
    vim.g.maplocalleader = ' '
    
    -- Enable nerd font support.
    vim.g.have_nerd_font = true

    -- Make line numbers default.
    vim.opt.number = true

    -- Sync clipboard between OS and Neovim.
    vim.opt.clipboard = 'unnamedplus'

    -- Enable break indent.
    vim.opt.breakindent = true

    -- Case-insensitive searching UNLESS \C or one or more capital letters in the search term.
    vim.opt.ignorecase = true
    vim.opt.smartcase = true

    -- Keep signcolumn on by default.
    vim.opt.signcolumn = 'yes'

    -- Decrease update time.
    vim.opt.updatetime = 250

    -- Decrease mapped sequence wait time
    -- Displays which-key popup sooner.
    vim.opt.timeoutlen = 300

    -- Configure how new splits should be opened.
    vim.opt.splitright = true
    vim.opt.splitbelow = true

    -- Show which line your cursor is on.
    vim.opt.cursorline = true

    -- Minimal number of screen lines to keep above and below the cursor.
    vim.opt.scrolloff = 10
end

return options()