return {
	"mfussenegger/nvim-jdtls",
	ft = "java",
	config = function()
		require("jdtls_config").setup_jdtls()
	end,
}
