-- Disable arrows
vim.keymap.set("", "<up>", "<nop>")
vim.keymap.set("", "<down>", "<nop>")
vim.keymap.set("", "<left>", "<nop>")
vim.keymap.set("", "<right>", "<nop>")

-- Escape insert mode
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("i", "JK", "<ESC>")
vim.keymap.set("i", "jK", "<ESC>")

-- Telescope FZF
vim.keymap.set("n", "<leader>ff", ':lua require"telescope.builtin".find_files()<CR>', { desc = "Find file" })
vim.keymap.set("n", "<leader>fg", ':lua require"telescope.builtin".git_files()<CR>', { desc = "Git files" })
vim.keymap.set("n", "<leader>fl", require('telescope.builtin').live_grep, { desc = "Grep" })
vim.keymap.set("n", "<leader>fh", ':lua require"telescope.builtin".help_tags()<CR>', { desc = "Find help" })
vim.keymap.set("n", "<leader>fb", ':lua require"telescope.builtin".buffers()<CR>', { desc = 'Find buffer' })
vim.keymap.set("n", "<leader>fr", ':lua require"telescope.builtin".references()<CR>', { desc = "Find references" })
vim.keymap.set('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = 'Find word' })
vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics, { desc = 'Find diagnostics' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = 'Search resume' })
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set("n", "<leader>aa", vim.lsp.buf.code_action, { desc = "Code actions" })

-- Git
vim.keymap.set('n', '<leader>gs', '<cmd>0G<cr>', { desc = "Git status" })
vim.keymap.set('n', '<leader>gb', '<cmd>GitBlameToggle<cr>', { desc = "Git blame" })
vim.keymap.set('n', '<leader>gd', '<cmd>Gvdiffsplit<cr>', { desc = "Diff" })

-- vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)

-- Neotree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle tree" })

-- name = "Go to",
-- d = { vim.lsp.buf.definition, "Definition" },
-- r = { vim.lsp.buf.references, "References" },

-- From kickstart
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Close buffer
vim.keymap.set("n", "<C-c>", ":bd<CR>")
