return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<c-t>]],
			hide_numbers = true,
			close_on_exit = true,
		})
	end,
}
