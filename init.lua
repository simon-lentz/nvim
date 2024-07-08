print('config tracks git@github.com:simon-lentz/nvim.git')

-- Set python3 to dedicated venv host
vim.g.python3_host_prog = vim.fn.expand("~/dotfiles/.local/python/virtualenvs/neovim/bin/python3")

-- Set options.
require('options')

-- Bootstrap lazy.nvim and load plugins.
-- https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
	vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins')
