local set = vim.keymap.set

-- Keybinds to make split navigation easier.
set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Keybinds to resize splits
set("n", "<C-,>", "<C-w>5<", { desc = "Expand split left" })
set("n", "<C-.>", "<C-w>5>", { desc = "Expand split right" })
set("n", "<C-u>", "<C-W>+", { desc = "Expand split up" })
set("n", "<C-d>", "<C-W>-", { desc = "Expand split down" })

-- Keybinds for diagnostics navigation
set("n", "]d", vim.diagnostic.goto_next, { desc = "Move to next diagnostic message" })
set("n", "[d", vim.diagnostic.goto_prev, { desc = "Move to previous diagnostic message" })

-- Keybinds for nvim file tree.
set("n", "<leader>nt", "<cmd>NvimTreeOpen<cr>", { desc = "Open directory tree." })

-- Keybind for cancel highlight.
set("n", "<Esc>", "<cmd>nohlsearch<CR>")
