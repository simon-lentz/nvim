local M = {}

M.lua = {
	Lua = {
		completion = {
			callSnippet = "Both",
			keywordSnippet = "Both",
		},
		diagnostics = {
			globals = { 'vim' }
		},
		format = {
			enable = true
		},
		hint = {
			enable = true
		},
	}
}

M.python = {
	Python = {}
}

M.go = {
	Go = {}
}

return M
