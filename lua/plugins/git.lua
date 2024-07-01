return {
	{
		"sindrets/diffview.nvim",
		config = function()
			require("diffview").setup({})
		end,
	},
	{ "tpope/vim-fugitive" },
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})
		end,
	},
	{
		"akinsho/git-conflict.nvim",
		version = "*",
		config = true,
	},
}
