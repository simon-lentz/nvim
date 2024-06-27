local lsp_attach = function()
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = 0 })

    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = 0 })
    vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { buffer = 0 })

    vim.keymap.set('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', { buffer = 0 })
    end

local lua_opts = {
	Lua = {
		diagnostics = {
			globals = { 'vim' }
		}
	}
}

return {
    {
	'hrsh7th/nvim-cmp',
 	dependencies = {
	  'hrsh7th/cmp-nvim-lsp',
	  'hrsh7th/cmp-buffer',
          'hrsh7th/cmp-path',
	  {
	    'L3MON4D3/LuaSnip',
	    tag = 'v2.3.0',
	  },
	  'saadparwaiz1/cmp_luasnip',
        },
    },
    {
	'neovim/nvim-lspconfig',
	lazy = false,
	config = function()
	  local lspconfig = require('lspconfig')
	  vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
	  local cmp = require('cmp')
	  cmp.setup({
	    snippet = {
	      expand = function(args)
	        require('luasnip').lsp_expand(args.body)
		end,
	      }
	    })
	  local caps = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

	  lspconfig.lua_ls.setup({
	    on_attach = lsp_attach,
	    settings = lua_opts,
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
    },
}
