return {
--[[  {
    "bluz71/vim-moonfly-colors",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.syntax("enable")
      vim.cmd.colorscheme("moonfly")

      vim.api.nvim_set_hl(0, "MoltenOutputBorder", { link = "Normal" })
      vim.api.nvim_set_hl(0, "MoltenOutputBorderFail", { link = "MoonflyCrimson" })
      vim.api.nvim_set_hl(0, "MoltenOutputBorderSuccess", { link = "MoonflyBlue" })
    end,
  }, ]]--
  {
    "benlubas/molten-nvim",
    -- dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      -- vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_use_border_highlights = true
      -- add a few new things

      -- don't change the mappings (unless it's related to your bug)
      vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>")
      vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>")
      vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>")
      vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv")
      vim.keymap.set("n", "<localleader>os", ":noautocmd MoltenEnterOutput<CR>")
      vim.keymap.set("n", "<localleader>oh", ":MoltenHideOutput<CR>")
      vim.keymap.set("n", "<localleader>md", ":MoltenDelete<CR>")

      -- For use with jupyter kernel
      vim.keymap.set("n", "<leader>ip", function()
        local venv = os.getenv("VIRTUAL_ENV")
        if venv ~= nil then
          -- in the form of /home/benlubas/.virtualenvs/VENV_NAME
          venv = string.match(venv, "/.+/(.+)")
          vim.cmd(("MoltenInit %s"):format(venv))
        else
          vim.cmd("MoltenInit python3")
        end
      end, { desc = "Initialize Molten for python3", silent = true })
      end,
  },
--[[  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty",
      integrations = {},
      max_width = 100,
      max_height = 12,
      max_height_window_percentage = math.huge,
      max_width_window_percentage = math.huge,
      window_overlap_clear_enabled = true,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
    version = "1.1.0", -- or comment out for latest
		]]--
} 
