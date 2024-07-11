--[[
-- after/ftplugin/markdown.lua
require("otter").activate({ "python" }, true, true, nil)
vim.keymap.set("n", "K", ":lua require'otter'.ask_hover()<CR>", { silent = true }) -- Hover for function definition on otter cells
vim.keymap.set("n", "gd", ":lua require'otter'.ask_definition()<CR>", { silent = true }) -- Go to definition
vim.keymap.set("n", "<leader>D", ":lua require'otter'.ask_type_definition()<CR>", { silent = true }) -- Go to type definition
vim.keymap.set("n", "<leader>rn", ":lua require'otter'.ask_rename()<CR>", { silent = true }) -- Rename
vim.keymap.set("n", "<leader>gr", ":lua require'otter'.ask_references()<CR>", { silent = true }) -- Go to references in a quickfix list
vim.keymap.set("n", "<leader>sb", ":lua require'otter'.ask_document_symbols()<CR>", { silent = true }) -- Ask for doc symbols
vim.keymap.set("n", "<leader>gf", ":lua require'otter'.ask_format()<CR>", { silent = true }) -- Format cell
--]]

return {
	{
		-- https://github.com/3rd/image.nvim
		"3rd/image.nvim",
		opts = {
			backend = "kitty", -- whatever backend you would like to use
			max_width = 100,
			max_height = 12,
			max_height_window_percentage = math.huge,
			max_width_window_percentage = math.huge,
			window_overlap_clear_enabled = true, -- toggles images when windows are overlapped
			window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
		},
	},
	{
		-- https://github.com/GCBallesteros/jupytext.nvim
		"GCBallesteros/jupytext.nvim",
		lazy = false,
		config = function()
			require("jupytext").setup({
				style = "markdown",
				output_extension = "md",
				force_ft = "markdown",
			})
		end,
	},
	{
		-- https://github.com/benlubas/molten-nvim
		"benlubas/molten-nvim",
		version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
		lazy = false,
		build = ":UpdateRemotePlugins",
		init = function()
			vim.g.molten_image_provider = "image.nvim"
			vim.g.molten_output_win_max_height = 12
			vim.g.molten_virt_text_output = true
			vim.g.molten_virt_lines_off_by_1 = true
			vim.g.molten_virt_text_max_lines = 1
			vim.keymap.set("n", "<leader>mi", ":MoltenInit<CR>", { silent = true, desc = "Molten Init Kernel" })
			vim.keymap.set(
				"n",
				"<leader>ml",
				":MoltenEvaluateLine<CR>",
				{ silent = true, desc = "Molten Evaluate Line" }
			)
			vim.keymap.set(
				"v",
				"<leader>mv",
				":<C-u>MoltenEvaluateVisual<CR>gv<ESC>",
				{ silent = true, desc = "Molten Evaluate Visual" }
			)
			vim.keymap.set("n", "<leader>mh", ":MoltenHideOutput<CR>", { silent = true, desc = "Molten Hide Output" })
			vim.keymap.set(
				"n",
				"<leader>mo",
				":noautocmd MoltenEnterOutput<CR>",
				{ silent = true, desc = "Molten Enter Output" }
			)
		end,
	},
	{
		-- https://github.com/quarto-dev/quarto-nvim
		"quarto-dev/quarto-nvim",
		lazy = false,
		ft = { "quarto", "markdown" },
		dev = false,
		config = function()
			require("quarto").setup({
				lspFeatures = {
					languages = { "python" },
					chunks = "all",
					diagnostics = {
						enabled = true,
						triggers = { "BufWritePost" },
					},
					completion = {
						enabled = true,
					},
				},
				keymap = {
					hover = "H",
					definition = "gd",
					rename = "<leader>rn",
					references = "gr",
					format = "<leader>gf",
				},
				codeRunner = {
					enabled = true,
					default_method = "molten",
				},
			})
		end,
		dependencies = {
			-- https://github.com/jmbuhr/otter.nvim
			"jmbuhr/otter.nvim",
			opts = {},
		},
	},
}
