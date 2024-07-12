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
		--		opts = {},
		--		lazy = true,
		--		specs = {
		--			{ "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
		--		},
		--		init = function()
		--			package.preload["nvim-web-devicons"] = function()
		--				require("mini.icons").mock_nvim_web_devicons()
		--				return package.loaded["nvim-web-devicons"]
		--			end
		--		end,
		config = function()
			require("mini.icons").setup()
		end,
	},
}
