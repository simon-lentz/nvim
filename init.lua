print('config tracks git@github.com:simon-lentz/nvim.git')

-- Set python3 to dedicated venv host
vim.g.python3_host_prog=vim.fn.expand("~/.virtualenvs/neovim/bin/python3")

-- Set options.
require('options')

-- Bootstrap lazy.nvim and load plugins.
-- https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins')

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
