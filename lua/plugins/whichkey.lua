return { 
    -- https://github.com/folke/which-key.nvim
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
      -- Set up plugin.
      require('which-key').setup()
      require('which-key').register({
        ['wk'] = { '<cmd>WhichKey<cr>', 'Open keymaps menu.' },
      })
    end,
}
