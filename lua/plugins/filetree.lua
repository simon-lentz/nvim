return {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        -- Setup plugin.
        require('nvim-tree').setup()
    
        -- Create keybindings for plugin.
        vim.keymap.set('n', '<leader>ot', '<cmd>NvimTreeOpen<cr>', { desc = 'Open directory tree.' })
    end,
}