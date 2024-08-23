return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("barbar").setup({
			gitsigns = {
				added = { enabled = true, icon = "+" },
				changed = { enabled = true, icon = "~" },
				deleted = { enabled = true, icon = "-" },
			},
			sidebar_filetypes = {
				NvimTree = true,
				undotree = {
					text = "undotree",
					align = "center",
				},
				Outline = { event = "BufWinLeave", text = "symbols-outline", align = "right" },
			},
		})
	end,
}
