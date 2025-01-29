local opts = { noremap = true, silent = true }
local u = require("utils")

---------------------------------------------------------------------------
--- utils
---------------------------------------------------------------------------
-- copy diagnostics to clipboard
vim.keymap.set("n", "<leader>cd", u.CopyDiagnosticsToClipboard, opts)
---------------------------------------------------------------------------

---------------------------------------------------------------------------
--- basic editing and navigation
---------------------------------------------------------------------------
-- Override delete operations
vim.keymap.set("n", "dd", '"_dd', opts)
vim.keymap.set("n", "D", '"_D', opts)
vim.keymap.set("n", "di", '"_di', opts)
vim.keymap.set("n", "da", '"_da', opts)
vim.keymap.set("v", "d", '"_d', opts)
vim.keymap.set("n", "x", '"_x', opts)

-- nvim-tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<C-Right>", "<C-w>l", opts)
vim.keymap.set("n", "<C-Left>", "<C-w>h", opts)
vim.keymap.set("n", "<C-Up>", "<C-w>k", opts)
vim.keymap.set("n", "<C-Down>", "<C-w>j", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)

-- increment / decrement
vim.keymap.set("n", "<leader>-", "<C-x>", opts)
vim.keymap.set("n", "<leader>+", "<C-a>", opts)

-- change-in-word, not overriding the clipboard
vim.keymap.set("n", "<C-c>", '"_ciw', opts)

-- terminal
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", opts)
vim.keymap.set("n", "<leader>xt", "<C-\\><C-n>:bd!<CR>", opts)

-- save file
vim.keymap.set("n", "<C-s>", ":w<CR>", opts)

-- save with sudo
vim.cmd([[cmap w!! w !sudo tee % > /dev/null | q]])

-- quit file
vim.keymap.set("n", "<C-q>", ":q<CR>", opts)

-- select all
vim.keymap.set("n", "<leader>a", "ggVG", opts)

-- select word
vim.keymap.set("n", "<S-w>", "viw", opts)

-- move lines up and down with K and J
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")

-- yank
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]])

-- paste
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])

-- no-op for Q
vim.keymap.set("n", "Q", "<nop>", opts)

-- fast scrolling
vim.keymap.set({ "n", "v" }, "J", "9j", opts)
vim.keymap.set({ "n", "v" }, "K", "9k", opts)
vim.keymap.set({ "n", "v" }, "L", "16l", opts)
vim.keymap.set({ "n", "v" }, "H", "16h", opts)

-- float diagnostics
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)

-- tabs
vim.keymap.set("n", "<Tab>", ":BufferNext<CR>", opts)
vim.keymap.set("n", "<leader><Tab>", ":BufferPrevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":BufferClose<CR>", opts)

-- commentting: gcc

-- Resize windows with arrows
vim.keymap.set("n", "<S-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<S-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<S-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<S-Right>", ":vertical resize +2<CR>", opts)

-- lsp
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

-- window management
vim.keymap.set("n", "<leader>v", "<C-w>v", opts) -- split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", opts) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height

-- Press qq fast to exit insert mode
vim.keymap.set({ "v", "i" }, "qq", "<ESC>", opts)
---------------------------------------------------------------------------

---------------------------------------------------------------------------
--- plugins
---------------------------------------------------------------------------
-- telescope
local telescope = require("telescope.builtin")
local themes = require("telescope.themes")

vim.keymap.set("n", "<leader>ff", function()
	telescope.find_files({ hidden = true, no_ignore = true, file_ignore_patterns = { ".git/", "node_modules/" } })
end, opts)
vim.keymap.set("n", "<leader>fg", telescope.live_grep, opts)
vim.keymap.set("n", "<leader>fo", telescope.oldfiles, opts)
vim.keymap.set("n", "<leader>fh", telescope.help_tags, opts)
vim.keymap.set("n", "<leader>ch", telescope.command_history, opts)
vim.keymap.set("n", "<leader>cc", telescope.colorscheme, opts)
vim.keymap.set("n", "<leader>km", telescope.keymaps, opts)
vim.keymap.set("n", "<leader>sp", telescope.spell_suggest, opts)
vim.keymap.set("n", "<leader>gc", telescope.git_commits, opts)
vim.keymap.set("n", "<leader>tt", ":Telescope<CR>", opts)

-- toggleterm
vim.keymap.set("n", "<c-t>", ":1ToggleTerm<CR>", opts)
vim.keymap.set("n", "<c-y>", ":2ToggleTerm<CR>", opts)

-- gitsigns
local gitsigns = require("gitsigns")

vim.keymap.set("n", "<leader>B", gitsigns.blame_line, opts)
vim.keymap.set("n", "<leader>R", gitsigns.reset_hunk, opts)
vim.keymap.set("n", "<leader>P", gitsigns.preview_hunk, opts)
vim.keymap.set("n", "<leader>D", function()
	gitsigns.diffthis("~1")
end, opts)

-- spectre
local spectre = require("spectre")

vim.keymap.set("n", "<leader>S", spectre.toggle, opts)
vim.keymap.set("n", "<leader>sf", function()
	spectre.open_file_search({ select_word = true })
end, opts)
vim.keymap.set("n", "<leader>sw", function()
	spectre.open_visual({ select_word = true })
end, opts)
vim.keymap.set("v", "<ESC><leader>sw", function()
	spectre.open_visual({ select_word = true })
end, opts)

-- kulala
local kulala = require("kulala")

vim.keymap.set("n", "<leader>HR", kulala.run, opts) -- run the current request
vim.keymap.set("n", "<leader>HC", kulala.close, opts) -- close current .http buffer
---------------------------------------------------------------------------
