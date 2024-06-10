-- neotree
-- ctrl + n to toggle neotree, use arrow keys to switch between editor and neotree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Left>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<Right>", "<C-w>l", { noremap = true, silent = true })


-- terminal
-- ctrl + t to open terminal below the editor
-- ctrl + w + UP/DOWN to switch between editor and terminal
vim.keymap.set("n", "<C-t>", ":belowright split | resize 10 | terminal<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })


-- move lines up and down with K and J
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")















