-- neotree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Left>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<Right>", "<C-w>l", { noremap = true, silent = true })


-- terminal
vim.keymap.set("n", "<C-t>", ":belowright split | resize 10 | terminal<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

























