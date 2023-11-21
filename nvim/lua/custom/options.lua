vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.smartcase = true
vim.opt.autoindent = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.titlestring = "%t"
vim.opt.encoding = "utf-8"
vim.opt.linebreak = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 20
vim.opt.ruler = true
vim.opt.mouse = "a"
vim.opt.wrap = false

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

--vim.opt.cursorline = true
vim.o.clipboard = 'unnamedplus' -- Yank to clipboard
vim.opt.colorcolumn = "80"
vim.wo.signcolumn = "yes"
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.termguicolors = true
vim.opt.pumheight = 12
vim.diagnostic.config({
    signs = true,
    underline = true,
    float = { border = false },
    virtual_text = true,
})

-- Make line numbers default
vim.wo.number = true
-- Enable break indent
vim.o.breakindent = true
-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'
-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300
-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
