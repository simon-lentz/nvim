return { 
    -- https://github.com/folke/which-key.nvim
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
      -- Set up plugin.
      require('which-key').setup()
    end,
}