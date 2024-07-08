return { -- Autoformat
	"stevearc/conform.nvim",
	lazy = false,
	keys = {
		{
			"<leader>fb",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "Format current buffer",
		},
	},
	opts = {
		notify_on_error = false,
		format_on_save = function(bufnr)
			return {
				timeout_ms = 500,
				lsp_fallback = vim.bo[bufnr].filetype,
			}
		end,
		formatters_by_ft = {
			lua = { "stylua" },
		},
	},
}
