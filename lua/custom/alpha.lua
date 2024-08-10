local data = assert(vim.fn.stdpath("data")) --[[@as string]]

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[                               __                ]],
	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}
dashboard.section.buttons.val = {
	dashboard.button("e", "📝 New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("q", "❌ Quit NVIM", ":qa<CR>"),
	dashboard.button("t", "🔭 Telescope", "<cmd>Telescope<cr>"),
	dashboard.button("l", "📦 Lazy", "<cmd>Lazy<cr>"),
	dashboard.button("m", "💬 Mason", "<cmd>Mason<cr>"),
	dashboard.button("c", "🛠️ Config", "<cmd>new ~/.config/nvim<cr>"),
}

dashboard.config.opts.noautocmd = true

alpha.setup(dashboard.config)
