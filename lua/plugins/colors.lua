return {
	{
		"vague2k/vague.nvim",
		config = function()
			require("vague").setup({})
		end,
	},
	{
		"projekt0n/github-nvim-theme",
		lazy = false,
		priority = 1000,
		config = function()
			require("github-theme").setup({})
		end,
	},
}
