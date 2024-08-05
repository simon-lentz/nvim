return {
	{
		-- https://github.com/windwp/nvim-autopairs
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		-- https://github.com/catppuccin/nvim
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup()
			vim.cmd.colorscheme("catppuccin-macchiato")
		end,
	},
	{
		-- https://github.com/nvim-lualine/lualine.nvim
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({})
		end,
	},
	{
		-- https://github.com/nvim-tree/nvim-tree.lua
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
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
	{ -- https://github.com/voldikss/vim-floaterm
		"voldikss/vim-floaterm",
	},
	{ -- https://github.com/echasnovski/mini.icons
		"echasnovski/mini.icons",
		config = function()
			require("mini.icons").setup()
		end,
	},
}
