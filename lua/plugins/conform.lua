return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				html = { "prettierd", "prettier", "eslint_d", "html", stop_after_first = true },
				css = { "prettierd", "prettier", "eslint_d", "cssls", stop_after_first = true },
				scss = { "prettierd", "prettier", "eslint_d", "cssls", stop_after_first = true },
				javascript = { "prettierd", "prettier", "eslint_d", stop_after_first = true },
				typescript = { "prettierd", "prettier", "eslint_d", stop_after_first = true },
				javascriptreact = { "prettierd", "prettier", "eslint_d", stop_after_first = true },
				typescriptreact = { "prettierd", "prettier", "eslint_d", stop_after_first = true },
			},
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
				end,
			}),
		})
	end,
}
