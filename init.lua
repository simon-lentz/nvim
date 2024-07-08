
-- [[
-- Setup initial configuration stuff,
-- download and execute lazy.nvim
-- ]]

-- Map leader prior to lazy
vim.g.mapleader = ' '


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
