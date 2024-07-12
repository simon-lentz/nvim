return {
	{
		-- https://github.com/windwp/nvim-autopairs
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	{
		-- https://github.com/catppuccin/nvim
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		-- https://github.com/nvim-lualine/lualine.nvim
		"nvim-lualine/lualine.nvim",
		dependencies = { require("custom.icons") },
		config = function()
			require("lualine").setup({})
		end,
	},
	{
		-- https://github.com/nvim-tree/nvim-tree.lua
		"nvim-tree/nvim-tree.lua",
		dependencies = { require("custom.icons") },
		config = function()
			require("nvim-tree").setup()
		end,
	},
	{
		-- https://github.com/folke/which-key.nvim
		"folke/which-key.nvim",
		event = "VimEnter",
		config = function()
			require("which-key").setup()
		end,
	},
	--[[
-- Indent blankline needs to be configured so that the blocks are not so ugly.
-- vim-floaterm needs to be fixed.
--
--]]
	--	{ -- https://github.com/lukas-reineke/indent-blankline.nvim
	--		"lukas-reineke/indent-blankline.nvim",
	--		main = "ibl",
	--		config = function()
	--			require("ibl").setup()
	--		end,
	--	},
	{ -- https://github.com/voldikss/vim-floaterm
		"voldikss/vim-floaterm",
	},
}
