return {
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
	config = function()
		local cmp = require('cmp')
		vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
		cmp.setup(
			{
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end,
				},
				mapping = {
					['<C-p>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
					['<C-n>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
					['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
					['<C-e>'] = cmp.mapping({
						i = cmp.mapping.abort(),
						c = cmp.mapping.close(),
					}),
				},
				sources = {
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' },
					{ name = 'buffer' },
				},
			})
	end,
}
