local data = assert(vim.fn.stdpath 'data') --[[@as string]]

-- Setup with defaults
require('telescope').setup()

local builtin = require('telescope.builtin')

-- Create keybindings for plugin.
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files.' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Find using grep.' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers.' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Find help tags.' })
vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, { desc = 'Fuzzy find in current buffer.' })
