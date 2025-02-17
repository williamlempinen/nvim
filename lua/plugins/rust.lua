return {
	{
		"simrat39/rust-tools.nvim",
		config = function()
			local rt = require("rust-tools")
			rt.setup({
				tools = {
					inlay_hints = {
						only_current_line = true,
					},
				},
				server = {
					on_attach = function(_, bufnr)
						vim.keymap.set("n", "P", rt.hover_actions.hover_actions, { buffer = bufnr })
						vim.keymap.set("n", "<leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
					end,
				},
			})
		end,
	},
	{
		"rust-lang/rust.vim",
		ft = "rust",
		init = function()
			vim.g.rustfmt_autosave = 1
		end,
	},
}
