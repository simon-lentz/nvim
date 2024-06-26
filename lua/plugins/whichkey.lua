return { 
    -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
      require('which-key').setup()

      require('which-key').register({
        ['<leader>od'] = { '<cmd>Oil<cr>', 'Open directory list.' },
      })
    end,
}