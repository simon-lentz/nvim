local data = assert(vim.fn.stdpath("data")) --[[@as string]]

-- Setup with defaults
require("telescope").setup({})
require("telescope").load_extension("ui-select")
require("telescope").load_extension("fzf")

local builtin = require("telescope.builtin")
local set = vim.keymap.set
-- Create keybindings for plugin.
set("n", "<leader>ff", builtin.find_files, { desc = "Find files." })
set("n", "<leader>fg", builtin.live_grep, { desc = "Find using grep." })
set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers." })
set("n", "<leader>fh", builtin.help_tags, { desc = "Find help tags." })
set("n", "<leader>/", builtin.current_buffer_fuzzy_find, { desc = "Fuzzy find in current buffer." })
