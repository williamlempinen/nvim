return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		-- local startify = require("aplha.themes.startify")
		-- generate alphas: https://patorjk.com/software/taag/

		local neovim = {
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
		}

		local neovim_3 = {

			[[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
			[[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
			[[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
			[[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
			[[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
			[[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
		}

		local tux = {
			[[         _nnnn_        ]],
			[[        dGGGGMMb       ]],
			[[       @p~qp~~qMb      ]],
			[[       M|@||@) M|      ]],
			[[       @,----.JM|      ]],
			[[      JS^\__/  qKL     ]],
			[[     dZP        qKRb   ]],
			[[    dZP          qKKb  ]],
			[[   fZP            SMMb ]],
			[[   HZM            MMMM ]],
			[[   FqM            MMMM ]],
			[[ __| ".        |\dS"qML]],
			[[ |    `.       | `' \Zq]],
			[[_)      \.___.,|     .']],
			[[\____   )MMMMMP|   .'  ]],
			[[     `-'       `--' hjm]],
		}

		-- use either startify or dashboard

		-- startify.section.header.val = neovim_3
		dashboard.section.header.val = tux

		alpha.setup(dashboard.opts)
	end,
}
