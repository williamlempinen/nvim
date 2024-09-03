return {
	"rcarriga/nvim-notify",
	config = function()
		vim.notify = require("notify")
		require("notify").setup({
			stages = "fade_in_slide_out",
			timeout = 2500,
			render = "compact",
			level = "warn",
		})
	end,
	lazy = false,
}
