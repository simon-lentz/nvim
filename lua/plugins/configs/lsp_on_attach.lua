-- Autogroup for lsp-based formatting.
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_attach = function(client, bufnr)
	if client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format()
			end,
		})
	end

	vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
	vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, { buffer = 0 })
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = 0 })

	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = 0 })
	vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, { buffer = 0 })
	vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { buffer = 0 })

	vim.keymap.set('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', { buffer = 0 })
end

return lsp_attach
