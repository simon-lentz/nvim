return {
	-- https://github.com/nvim-telescope/telescope.nvim
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = {
		'nvim-lua/popup.nvim',
		'nvim-lua/plenary.nvim',
	},
	config = function()
		require("custom.telescope")
	end,
}
