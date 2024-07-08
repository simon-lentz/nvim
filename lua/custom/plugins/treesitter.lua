return {
	-- https://github.com/nvim-treesitter/nvim-treesitter
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
	  require('custom.treesitter')
	end,
}
