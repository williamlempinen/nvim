return {
	"nvim-pack/nvim-spectre",
	config = function()
		require("spectre").setup({
			result_padding = "",
		})
	end,
}
