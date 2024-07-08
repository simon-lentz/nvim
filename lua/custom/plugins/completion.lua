return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		{
			"L3MON4D3/LuaSnip",
			tag = "v2.3.0",
		},
		"saadparwaiz1/cmp_luasnip",
	},
	config = function()
		require("custom.completion")
	end,
}
