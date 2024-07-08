local data = assert(vim.fn.stdpath("data")) --[[@as string]]

-- Prefer git instead of curl in order to improve connectivity in some environments
require("nvim-treesitter.install").prefer_git = true
local configs = require("nvim-treesitter.configs")

configs.setup({
	-- Add languages for always available syntax highlighting
	ensure_installed = {
		"bash",
		"css",
		"csv",
		"cue",
		"dockerfile",
		"go",
		"html",
		"json",
		"lua",
		"luadoc",
		"make",
		"markdown",
		"markdown_inline",
		"python",
		"toml",
		"vim",
		"vimdoc",
		"xml",
		"yaml",
	},
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
})
