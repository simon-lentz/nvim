return {
	-- https://github.com/nvim-telescope/telescope.nvim
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = {
		'nvim-lua/popup.nvim',
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope-ui-select.nvim',
		{
        		'nvim-telescope/telescope-fzf-native.nvim',
        		build = 'make',
        		cond = function()
          			return vim.fn.executable 'make' == 1
        		end,
      		},
	},
	config = function()
		require("custom.telescope")
	end,
}
