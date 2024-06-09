-- Function to move a line or selected block of text up
function MoveLineUp()
  local _, start_row, _, _ = unpack(vim.fn.getpos("'<"))
  local _, end_row, _, _ = unpack(vim.fn.getpos("'>"))
  local current_row = vim.fn.getpos(".")[2]

  if start_row == 0 then start_row = current_row end
  if end_row == 0 then end_row = current_row end

  -- Move the block of text up
  vim.cmd(start_row .. "," .. end_row .. "move" .. (start_row - 2))
end

-- Function to move a line or selected block of text down
function MoveLineDown()
  local _, start_row, _, _ = unpack(vim.fn.getpos("'<"))
  local _, end_row, _, _ = unpack(vim.fn.getpos("'>"))
  local current_row = vim.fn.getpos(".")[2]

  if start_row == 0 then start_row = current_row end
  if end_row == 0 then end_row = current_row end

  -- Move the block of text down
  vim.cmd(start_row .. "," .. end_row .. "move" .. (end_row + 1))
end

-- Map the functions to Alt+Arrow keys in normal and visual mode
vim.api.nvim_set_keymap('n', '<A-Up>', ':lua MoveLineUp()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-Down>', ':lua MoveLineDown()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-Up>', ':lua MoveLineUp()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-Down>', ':lua MoveLineDown()<CR>', { noremap = true, silent = true })




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

























