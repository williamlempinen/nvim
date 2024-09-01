vim.opt.clipboard:append({ "unnamedplus" })

vim.filetype.add({
	extension = {
		["http"] = "http",
	},
})

vim.opt.termguicolors = true

-- set leader to space
vim.g.mapleader = " "

vim.lsp.set_log_level("error")

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.mouse = "a"
vim.opt.scrolloff = 12
vim.opt.ruler = true
vim.opt.wrap = true
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.swapfile = false
