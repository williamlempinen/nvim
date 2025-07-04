vim.opt.termguicolors = true

-- set leader to space
vim.g.mapleader = " "

vim.lsp.set_log_level("error")

vim.opt.clipboard = "unnamedplus"
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
vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.opt.history = 1000
vim.opt.ignorecase = true

vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true

vim.opt.colorcolumn = "100"

-- fold
vim.opt.foldmethod = "indent"
vim.opt.foldlevelstart = 99

-- terminal
vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "*",
	callback = function()
		vim.wo.number = false
		vim.wo.relativenumber = false
		vim.cmd("startinsert")
	end,
})

-- java
vim.api.nvim_create_autocmd("FileType", {
	pattern = "java",
	callback = function()
		vim.opt.tabstop = 4
		vim.opt.shiftwidth = 4
		vim.opt.expandtab = true
	end,
})

-- diagnostic float
vim.diagnostic.config({
	virtual_text = {
		source = "always",
		severity = { min = vim.diagnostic.severity.WARN },
	},
	signs = true,
	underline = true,
	float = {
		source = "always",
		border = "rounded",
		focusable = true,
	},
})

-- float border
vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#ffffff", bg = "" })
	end,
})
