local options = function()
    -- Disable netrw for use of nvim-tree plugin.
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    
    -- Set <space> as the leader key.
    vim.g.mapleader = ' '
    vim.g.maplocalleader = ' '
    
    -- Enable 24-bit colour
    vim.opt.termguicolors = true
    
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
    -- :vsp
    vim.opt.splitright = true
    -- :sp
    vim.opt.splitbelow = true

    -- Keybinds to make split navigation easier.
    --  Use CTRL+<hjkl> to switch between windows
    --  See `:help wincmd` for a list of all window commands
    vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
    vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
    vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
    vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

    -- Show which line your cursor is on.
    vim.opt.cursorline = true

    -- Minimal number of screen lines to keep above and below the cursor.
    vim.opt.scrolloff = 10
end

return options()