return {
    -- https://github.com/voldikss/vim-floaterm
	'voldikss/vim-floaterm',
	config = function()
        -- Create keymappings for plugin.
		vim.keymap.set('n', '<leader>nt', '<cmd>FloatermNew<CR>', { desc = 'Open a new floating terminal.' })
	end,

}