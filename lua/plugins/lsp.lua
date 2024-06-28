return {
	'neovim/nvim-lspconfig',
	dependencies = { 'hrsh7th/nvim-cmp' },
	lazy = false,
	config = function()
	  local lspconfig = require('lspconfig')

          local lsp_attach = require('plugins.configs.lsp_on_attach')

	  local caps = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

	  local settings = require('plugins.configs.lsp_settings')

	  lspconfig.lua_ls.setup({
	    on_attach = lsp_attach,
	    settings = settings.lua,
	    capabilities = caps,
	    })

  	  lspconfig.pyright.setup({
	    on_attach = lsp_attach,
	    capabilities = caps,
	    })

	  lspconfig.gopls.setup({
	    on_attach = lsp_attach,
	    capabilities = caps,
	    })
	  end,
}
