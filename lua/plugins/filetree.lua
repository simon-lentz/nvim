return {
	-- https://github.com/nvim-tree/nvim-tree.lua
	'nvim-tree/nvim-tree.lua',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		-- Setup for plugin.
		require('nvim-tree').setup()

		-- Create keybindings for plugin.
		vim.keymap.set('n', '<leader>ot', '<cmd>NvimTreeOpen<cr>', { desc = 'Open directory tree.' })
	end,
}
