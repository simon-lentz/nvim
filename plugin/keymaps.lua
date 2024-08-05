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
set("n", "<leader>dt", "<cmd>NvimTreeOpen<cr>", { desc = "Open directory tree." })

-- Keybind for cancel highlight.
set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keybinds for floaterm
set("n", "<leader>tb", "<cmd>FloatermNew<cr>", { desc = "Open terminal buffer" })
set("n", "<esc><esc>", "<cmd>FloatermToggle><cr>", { desc = "Toggle terminal buffer in normal mode" })
set("t", "<esc><esc>", "<cmd>FloatermToggle<cr>", { desc = "Toggle terminal buffer in terminal mode" })

-- Keybinds for diagnostics (Trouble)
set("n", "<leader>dx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
set("n", "<leader>dX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })
set("n", "<leader>ds", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
set(
	"n",
	"<leader>dl",
	"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
	{ desc = "LSP Definitions / references / ... (Trouble)" }
)
set("n", "<leader>dL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
set("n", "<leader>dQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
