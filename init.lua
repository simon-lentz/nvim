-- [[
-- Setup initial configuration stuff,
-- download and execute lazy.nvim
-- ]]

-- Map leader prior to lazy
vim.g.mapleader = ' '

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
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Show which line your cursor is on.
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Bootstrap lazy.nvim and load plugins.
-- https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
	vim.fn.system({
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable',
		lazypath,
	})
end

-- Add lazy to "runtimepath", allows us to "require" it.
vim.opt.rtp:prepend(lazypath)

-- Set up lazy and load "lua/custom/plugins/" folder.
require('lazy').setup(
	{
		import = 'custom/plugins'
	},
	{
		change_detection = {
			notify = false,
		},
	})
