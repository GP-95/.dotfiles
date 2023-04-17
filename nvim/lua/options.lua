vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.smartcase = true
vim.opt.autoindent = true

vim.opt.titlestring = '%t'
vim.opt.encoding = 'utf-8'
vim.opt.linebreak = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 20
vim.opt.ruler = true
vim.opt.mouse = 'a'
vim.opt.wrap = false

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

--vim.opt.cursorline = true
vim.opt.colorcolumn = "80"
vim.wo.signcolumn = "yes"
vim.opt.swapfile = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true
vim.opt.termguicolors = true
vim.opt.pumheight=12
