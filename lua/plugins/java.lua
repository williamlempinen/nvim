return {
	"nvim-java/nvim-java",
	config = function()
		require("java").setup({
			jdtls = {
				cmd = {
					"/home/wlemp/.local/share/nvim/mason/bin/jdtls",
				},
				settings = {
					java = {
						home = "/usr/lib/jvm/default-java",
					},
				},
			},
		})
	end,
}
