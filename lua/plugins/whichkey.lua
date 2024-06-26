return { 
    -- https://github.com/folke/which-key.nvim
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
      require('which-key').setup()

      -- Keybindings used with stevearc/oil.nvim (oil.lua) plugin.
      require('which-key').register({
        ['<leader>otb'] = { '<cmd>Oil<cr>', 'Open directory tree as editable buffer.' },
      })

      -- Keybindings used with nvim-tree/nvim-tree.lua (filetree.lua) plugin.
      require('which-key').register({
        ['<leader>ot'] = { '<cmd>NvimTreeOpen<cr>', 'Open directory tree.' },
      })

      -- Keybindings used with voldikss/vim-floaterm (term.lua) plugin.
      require('which-key').register({
        ['<leader>nt'] = { '<cmd>FloatermNew<cr>', 'Open a new floating terminal' },
      })

    end,
}