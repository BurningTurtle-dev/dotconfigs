-- Diagnostic / LSP helper functions
function _G.next_fix()
	vim.diagnostic.jump({ count = 1 })
end

function _G.suggest_fix()
	vim.lsp.buf.code_action()
end

function _G.next_problem()
	vim.diagnostic.open_float()
end

local map = vim.keymap.set

-- Diagnostics / LSP (global, not plugin-scoped)
map("n", "<leader>d", _G.next_problem, { desc = "Show diagnostic" })
map("n", "<leader>f", _G.next_fix, { desc = "Go to next problem" })
map("n", "<leader>g", _G.suggest_fix, { desc = "Suggest fix for selected problem" })

-- Buffer management
map("n", "<leader>w", "<cmd>bd<CR>", { desc = "Closes current buffer" })
map("n", "<leader>q", "<cmd>bd!<CR>", { desc = "Closes current buffer" })

-- Clipboard-safe delete (black hole register)
map({ "n", "v" }, "d", '""d', { desc = "Delete without touching system clipboard" })
map("n", "D", '""D', { desc = "Delete to end of line without touching system clipboard" })
map("n", "dd", '""dd', { desc = "Delete line without touching system clipboard" })

-- Terminal mode
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
