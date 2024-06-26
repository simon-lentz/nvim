return {
    -- https://github.com/stevearc/oil.nvim
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        -- Setup plugin.
        require('oil').setup({
            view_options = {
                show_hidden = true,
            }
        })

        -- Create keybindings for plugin.
        vim.keymap.set('n', '<leader>od', '<cmd>Oil<cr>', { desc = 'Open directory list.' })
    end,
}