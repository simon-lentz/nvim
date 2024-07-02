return {
	{
		'mfussenegger/nvim-dap',
		dependencies = {
			'rcarriga/nvim-dap-ui',
			'theHamsta/nvim-dap-virtual-text',
			'nvim-telescope/telescope-dap.nvim',
		},
		config = function()
			vim.keymap.set('n', '<leader>b', '<cmd>lua require("dap").toggle_breakpoint()<cr>',
				{ desc = 'Toggle DAP breakpoint.' })
			vim.keymap.set('n', '<leader>B',
				'<cmd>lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>',
				{ desc = 'Set DAP breakpoint.' })
		end,
	},
	{
		-- Go related DAP
		'leoluz/nvim-dap-go',
		config = function()
			require('dap-go').setup()
		end,
	},
	{
		-- Python related DAP
		'mfussenegger/nvim-dap-python',
		config = function()
			require('dap-python').setup('python')
		end,
	},
}
