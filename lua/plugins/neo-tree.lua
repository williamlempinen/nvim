return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			--			vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {}),
			--			enable_git_status = true,
			window = {
				width = 30,
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_by_name = {
						".git",
					},
				},
			},
			default_component_configs = {
				indent = {
					indent_size = 1,
					padding = 1,
				},
			},
			git_status = {
				symbols = {
					added = "+",
					modified = "󰁕",
					deleted = "x",
					renamed = "",
					untracked = "",
					ignored = "",
					unstaged = "",
					staged = "",
					conflict = "",
				},
			},
		})
	end,
}
