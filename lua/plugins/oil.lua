return {
	-- https://github.com/stevearc/oil.nvim
	'stevearc/oil.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		-- Setup for plugin.
		require('oil').setup({
			view_options = {
				show_hidden = true,
			}
		})

		-- Create keybindings for plugin.
		vim.keymap.set('n', '<leader>otb', '<cmd>Oil<cr>', { desc = 'Open directory tree as editable buffer.' })
	end,
}

