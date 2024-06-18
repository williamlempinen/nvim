return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = false,
			hide_numbers = true,
			shade_filetypes = {},
			direction = "horizontal",
			close_on_exit = true,
			shade_terminals = true,
			shading_factor = 1,
			shell = "zsh",
			persist_size = true,
			start_in_insert = false,
		})

		local map = vim.api.nvim_set_keymap
		local opts = { noremap = true, silent = true }

		map("n", "<c-t>", "<cmd>1ToggleTerm<CR>", opts)
		map("n", "<c-y>", "<cmd>2ToggleTerm<CR>", opts)

		function _G.set_terminal_keymaps()
			local term_opts = { noremap = true, silent = true }
			vim.api.nvim_buf_set_keymap(0, "t", "<Esc>", [[<C-\><C-n>]], term_opts)
		end

		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
	end,
}
