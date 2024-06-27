return {
	'neovim/nvim-lspconfig',
	lazy = false,
	config = function()
	  local lspconfig = require('lspconfig')
	  local lsp_settings = require('plugins.configs.lsp_settings')
	  lspconfig.lua_ls.setup(lsp_settings)
	  lspconfig.pyright.setup(lsp_settings)
	  lspconfig.gopls.setup(lsp_settings)
	  end,
}
