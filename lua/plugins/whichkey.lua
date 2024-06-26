return { 
    -- https://github.com/folke/which-key.nvim
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
      require('which-key').setup()

      -- Keybindings used with stevearc/oil.nvim (oil.lua) plugin.
      require('which-key').register({
        ['<leader>od'] = { '<cmd>Oil<cr>', 'Open directory list.' },
      })

      -- Keybindings used with voldikss/vim-floaterm (term.lua) plugin.
      require('which-key').register({
        ['<leader>nt'] = { '<cmd>FloatermNew<cr>', 'Open a new floating terminal' },
      })

    end,
}