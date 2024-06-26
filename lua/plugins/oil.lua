return {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('oil').setup({
            view_options = {
                show_hidden = true,
            }
        })

        -- Use oil to open dir list as current window
        vim.keymap.set('n', '<leader>od', '<cmd>Oil<cr>', { desc = 'Open parent directory in current window.' })
    end,
}