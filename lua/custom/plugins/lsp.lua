return { -- LSP Configuration & Plugins
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "williamboman/mason.nvim", config = true },
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		{ -- https://github.com/j-hui/fidget.nvim
			"j-hui/fidget.nvim",
			opts = {},
		},
		{
			"folke/lazydev.nvim",
			ft = "lua", -- only load on lua files
			opts = {},
		},
	},
	config = function()
		require("custom.lsp")
	end,
}
