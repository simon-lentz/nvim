local data = assert(vim.fn.stdpath("data")) --[[@as string]]

-- Prefer git instead of curl in order to improve connectivity in some environments
require("nvim-treesitter.install").prefer_git = true
local configs = require("nvim-treesitter.configs")

configs.setup({
	-- Add languages for always available syntax highlighting
	ensure_installed = {
		"json",
		"lua",
		"luadoc",
		"python",
		"vim",
		"vimdoc",
		"yaml",
	},
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
	modules = {},
	sync_install = true,
	ignore_install = {},
})
