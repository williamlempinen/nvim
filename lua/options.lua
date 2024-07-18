vim.opt.clipboard:append({ "unnamedplus" })

vim.g.mapleader = " "

vim.lsp.set_log_level("debug")

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.mouse = "a"
vim.opt.scrolloff = 8
vim.opt.ruler = true
vim.opt.wrap = true
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd([[ set noswapfile ]])
vim.cmd([[ set termguicolors ]])
