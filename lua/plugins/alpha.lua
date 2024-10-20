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

    local sonogong = {
      [[    ___  _____  _  _  _____   ___  _____  _  _   ___    ]],
      [[   / __)(  _  )( \( )(  _  ) / __)(  _  )( \( ) / __)   ]],
      [[   \__ \ )(_)(  )  (  )(_)( ( (_-. )(_)(  )  ( ( (_-.   ]],
      [[   (___/(_____)(_)\_)(_____) \___/(_____)(_)\_) \___/   ]],
    }

    local name = {

      [[.------..------..------..------..------..------..------.]],
      [[|W.--. ||I.--. ||L.--. ||L.--. ||I.--. ||A.--. ||M.--. |]],
      [[| :/\: || (\/) || :/\: || :/\: || (\/) || (\/) || (\/) |]],
      [[| :\/: || :\/: || (__) || (__) || :\/: || :\/: || :\/: |]],
      [[| '--'W|| '--'I|| '--'L|| '--'L|| '--'I|| '--'A|| '--'M|]],
      [[`------'`------'`------'`------'`------'`------'`------']],
    }

    local name_2 = {

      [[                                                                                                ]],
      [[  ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓██████▓▒░░▒▓██████████████▓▒░   ]],
      [[  ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░  ]],
      [[  ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░  ]],
      [[  ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░  ]],
      [[  ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░  ]],
      [[  ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░  ]],
      [[  ░▒▓█████████████▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓████████▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░   ]],
      [[                                                                                                ]],
    }

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

    local neovim_2 = {
      [[                                                    [[                                               ’                                                                                                                                                                    ' ]],
      [[                                                      (`·.                    )`·._.·´(        )`·.                               )`·.                                                                                                                                 ']],
      [[                   )\       )\                          \::`·._)`·.     )\.·´::...  .::)   .·´   ./                   /(      .·´    (                                                                 (`·.              )\             (`·.              ')\           ]],
      [[                .·´  /  .·´.:/           .·´(      .·´(   )::. ..:::).·´;· --  ´ ´\::.`·.(::...:(’            )\      )  `·._):::.    )        '’                .·´(                                    )  `·.   .·´( .·´  (             )  `·.   .·´( .·´  ('          ]],
      [[       .·´(     ):.::`·.)::::)    )\     )   `·.   ):..\(;;::--  ´ ´               ’\:::::::...::)      )\ .·´ .:`·.(:;;  --  ' '\:. :(.·´)    )\    /(.·´(      )::..:`·.( `·.                   .·´( .·´:..::(,(::--  ' '\:·´     .·´( .·´:..::(,(::--  ' '\:·.·´('       ]],
      [[     (  .:::`·./::;,  --  ' '\/(.·´.::).·´:   .::)(::...:/\                          ’¯¯¯¯¯¯/'   .·´  (,): --  ' '              \....:::`·.(  (   )::..::`·._/;;  --  ' '\.::)   '’)\            \:::....::::·´         _\’'     );; :--   ’             _\::.. `·.)`·.]],
      [[ .·´.;);;--  ' '               '\:::::.    .:::·´'   `·:/::::\...:´/        ___________'/     ):.::/\                        ¯¯¯` · ::·´’.·´;; --  ' '              \:/  .·´ .:(.·´(         )..:::·´      ,..:´:::'/'  .·´/\                ,..:´:::'/)::::..::::(]],
      [[(::::/\                         `` ··:::::(           \::::/::::/        /:::::::::;; --  ´ ´\     ’`·:/::::\...:´/       ____          \     ):/\                 ,..::´/   ):::..::::·´        `·::/       /::::::::/    )/:::'\...:´/         `·;:;;:/·· ´´ ¯¯¯/’]],
      [[  )/:::'\...:´/       /`::-..,         `./    '          \/;::-'/        /;;::·-  ´ ´         _\    '   \::::/::::/      /::::::::/I        /    ’'I/::::\...:´/\       \::::'/    /¯¯¯¯’/             /       /;;::· ´        \:::/::::/                            '/  ]],
      [[  '\:::'/::::/       /:::::::::/       /                      /                      .,.,·:::::'/   ’'     \/;::-'/      /::::::::/:/       /'       \::::/:::'/:::\       \-´    '/        /             /       /                 '\/;::-'/       /:·,       .·´/      /'   ]],
      [[    \/;::-'/       /``·-:::;;/       /           '  )`·.    '/         _ ,.,.,·:::::::::::::::/     '          /      /¯¯¯¯¯'I/       /''          \/;::-' \::::'\       \    /        /      (`·.)':/       /             '    (`·.)':/       /:::/      /::/      /     ]],
      [[         /       /         /       /             (::..:(.·/         /:::::::::::::::::::--  ´      ’        '/      /          /       /         '            \:::::\       \/         /         ):./       /                     ):./       /`·;/      /:·/      /'      ]],
      [[       '/       /         /       '/               `·::..'/          `·__:::::· ’\:   .·´                  /I      'I         /       /'      '                 '\:::::\              '/          '\:/       /                  '   '\:/       /   /      /  /      /        ]],
      [[      /____/         /       '/           '         )/`·.                        \(              ’     /::/`· ,    ` ·,_'/       /’                           \:::::\           ’/'       ’    /       /                        /____/   /      '/  /      /         ]],
      [[    /::::::::/.. --  ´´      .·´/                    /::::::`·._____ ...·::::::/                    I:/::::::::` · , ___,.·:/'             '                '\::::/:·.__.·:/            '/,..::·´/                     '   /:::::-  ´´  ,  - ´´´     .·´'/          ]],
      [[  /::::::::/':-.., .,..-:::'/:::/                     `·:::::::/::::::::/:::::::::/                 ’     `·:;::::::::::/:::::/:::/'      '                          '\/::::/:::/:/'            '/:::::::/                      ' /::`*..¸..-:/:`*..¸..-::::::::/]],
      [[   ¯¯¯¯/::::::/:::::::/:::·´                          `·::/::::::::/::::: ·´´                   ’          ` ·:;:::/:::::/;·´'             '                      `·::/:::/·´'          '  /:;:: · ´                        /:::::::/::/:::::::/::::::::- ´´           ']],
      [[         '` ·::;/::;::-·· ´´                '                 ¯¯¯¯¯                                               ¯¯¯ ’                                            ¯¯ '               ¯                              ’'`*-::;/::::`*-::;/::::-·· ´´               ]],
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
