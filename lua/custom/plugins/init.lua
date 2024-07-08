return {
{
	-- https://github.com/windwp/nvim-autopairs
	'windwp/nvim-autopairs',
	event = 'InsertEnter',
	config = true
	-- use opts = {} for passing setup options
	-- this is equivalent to setup({}) function
},
{
	-- https://github.com/folke/tokyonight.nvim
	'folke/tokyonight.nvim',
	lazy = false,                     -- make sure we load this during startup if it is your main colorscheme
	priority = 1000,                  -- make sure to load this before all the other start plugins
	config = function()
		vim.cmd([[colorscheme tokyonight]]) -- load the colorscheme
	end,
},
{
	-- https://github.com/windwp/nvim-autopairs
	'windwp/nvim-autopairs',
	event = 'InsertEnter',
	config = true
	-- use opts = {} for passing setup options
	-- this is equivalent to setup({}) function
},
{
	-- https://github.com/nvim-lualine/lualine.nvim
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup({})
	end,
},
{
	-- https://github.com/nvim-tree/nvim-tree.lua
	'nvim-tree/nvim-tree.lua',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		-- Setup for plugin.
		require('nvim-tree').setup()

		-- Create keybindings for plugin.
		vim.keymap.set('n', '<leader>nt', '<cmd>NvimTreeOpen<cr>', { desc = 'Open directory tree.' })
	end,
},
{
	-- https://github.com/folke/which-key.nvim
	'folke/which-key.nvim',
	event = 'VimEnter',
	config = function()
		-- Set up plugin.
		require('which-key').setup()
	end,
},
}