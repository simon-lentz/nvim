return {
  {
    "benlubas/molten-nvim",
    dependencies = {
      require('plugins.configs.notebook_image'),
    },
    build = ":UpdateRemotePlugins",
    init = function()
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_use_border_highlights = true

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
}
