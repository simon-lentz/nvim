local data = assert(vim.fn.stdpath 'data') --[[@as string]]

local configs = require('nvim-treesitter.configs')

		configs.setup({
			-- Add languages for always available syntax highlighting
			ensure_installed = {
				'bash',
				'css',
				'csv',
				'cue',
				'dockerfile',
				'go',
				'html',
				'json',
				'lua',
				'luadoc',
				'make',
				'markdown',
				'markdown_inline',
				'python',
				'toml',
				'vim',
				'vimdoc',
				'xml',
				'yaml',
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
