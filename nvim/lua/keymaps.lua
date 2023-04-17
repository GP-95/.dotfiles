vim.g.mapleader = " "

vim.keymap.set("", "<up>", "<nop>")
vim.keymap.set("", "<down>", "<nop>")
vim.keymap.set("", "<left>", "<nop>")
vim.keymap.set("", "<right>", "<nop>")

-- Escape insert mode
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("i", "JK", "<ESC>")
vim.keymap.set("i", "jK", "<ESC>")

-- Telescope FZF
vim.keymap.set("n", "ff", ':lua require"telescope.builtin".find_files()<CR>')
vim.keymap.set("n", "fg", ':lua require"telescope.builtin".git_files()<CR>')
vim.keymap.set("n", "fl", ':lua require"telescope.builtin".live_grep()<CR>')
vim.keymap.set("n", "fh", ':lua require"telescope.builtin".help_tags()<CR>')
vim.keymap.set("n", "fb", ':lua require"telescope.builtin".buffers()<CR>')

-- Git fugitive
-- vim.keymap.set("n", "<leader>gs", ":0G<CR>")

-- Undotree
-- vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Close buffer
vim.keymap.set("n", "<C-c>", ":bd<CR>")

-- Copty to clipboard
-- vim.keymap.set("v", "<leader>y", '"+y')

-- Move selection
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Diagnostics
-- vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

-- Format buffer
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)
