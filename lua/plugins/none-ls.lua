local function find_local_binary(name)
	local local_bin = vim.fn.getcwd() .. "/node_modules/.bin/" .. name
	if vim.fn.executable(local_bin) == 1 then
		return local_bin
	else
		return name
	end
end

return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			debug = true,
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier.with({
					command = find_local_binary("prettier"),
				}),
				require("none-ls.diagnostics.eslint_d").with({
					command = find_local_binary("eslint_d"),
				}),
			},
		})

		vim.keymap.set("n", "<leader>f", function()
			vim.lsp.buf.format()
		end)
	end,
}
