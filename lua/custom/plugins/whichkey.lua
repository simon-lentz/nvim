return {
	-- https://github.com/folke/which-key.nvim
	'folke/which-key.nvim',
	event = 'VimEnter',
	config = function()
	  require('custom.whichkey')
	end,
}
