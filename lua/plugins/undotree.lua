return {
	"mbbill/undotree",
	config = function()
		-- Set the keymap after the plugin is loaded
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
	end,
}
