local opts = { noremap = true, silent = true }
local u = require("utils")

vim.keymap.set("n", "<leader>cd", u.CopyDiagnosticsToClipboard, opts)

-- nvim-tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<C-Right>", "<C-w>l", opts)
vim.keymap.set("n", "<C-Left>", "<C-w>h", opts)
vim.keymap.set("n", "<C-Up>", "<C-w>k", opts)
vim.keymap.set("n", "<C-Down>", "<C-w>j", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)

-- Override delete operations
vim.keymap.set("n", "dd", '"_dd', opts) -- delete a line without adding to clipboard
vim.keymap.set("n", "D", '"_D', opts)   -- delete from cursor to end of line without adding to clipboard
vim.keymap.set("v", "d", '"_d', opts)   -- delete in visual mode without adding to clipboard
vim.keymap.set("n", "x", '"_x', opts)   -- delete chracter without adding it to the register

-- save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)

-- quit file
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

-- select all
vim.keymap.set("n", "<leader>a", "ggVG", opts)

-- find matches
vim.keymap.set("n", "<C-f>", "/", opts)

-- move lines up and down with K and J
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- yank
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]])

-- paste
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])

-- no-op for Q
vim.keymap.set("n", "Q", "<nop>", opts)

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
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

-- telescope
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", function()
  telescope.find_files({ hidden = true, no_ignore = true, file_ignore_patterns = { ".git/", "node_modules/" } })
end, opts)
vim.keymap.set("n", "<leader>fg", telescope.live_grep, opts)
vim.keymap.set("n", "<leader>fo", telescope.oldfiles, opts)
vim.keymap.set("n", "<leader>fh", telescope.help_tags, opts)
vim.keymap.set("n", "<leader>ch", telescope.command_history, opts)

-- toggleterm
vim.keymap.set("n", "<c-t>", "<cmd>1ToggleTerm<CR>", opts) -- one term
vim.keymap.set("n", "<c-y>", "<cmd>2ToggleTerm<CR>", opts) -- second term

-- window management
vim.keymap.set("n", "<leader>v", "<C-w>v", opts)      -- split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", opts)      -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", opts)     -- make split windows equal width & height
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts) -- close current split window

-- Press qq fast to exit insert mode
vim.keymap.set("i", "qq", "<ESC>", opts)

-- gitsigns
local gitsigns = require("gitsigns")

vim.keymap.set("n", "<leader>B", gitsigns.blame_line, opts)   -- blame line
vim.keymap.set("n", "<leader>R", gitsigns.reset_hunk, opts)   -- reset hunk
vim.keymap.set("n", "<leader>P", gitsigns.preview_hunk, opts) -- preview hunk
vim.keymap.set("n", "<leader>D", function()
  gitsigns.diffthis("~1")
end, opts) -- diff this

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

vim.keymap.set("n", "<leader>HR", kulala.run, opts)   -- run the current request
vim.keymap.set("n", "<leader>HC", kulala.close, opts) -- close current .http buffer

-- fast scrolling
vim.keymap.set("n", "J", "9j", opts)
vim.keymap.set("n", "K", "9k", opts)
