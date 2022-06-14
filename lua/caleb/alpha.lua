local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {


-- 	[[                               __                ]],
-- 	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
-- 	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
-- 	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
-- 	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
-- 	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],


[[.!~:.                                        .:~!.]],
[[?GGGP5J~.                                .~J5PGGG7]],
[[7PP7~7YPG5?^.                        .^?5GPY7~7PP7]],
[[^PP!..::~?5GPY~.                  .~YPG5?~::..!PP^]],
[[ 5PY::::..:^7YPP?:..::^^^^^^::..:?PPY7^:..::::YP5 ]],
[[ !GP~.::::..:~YPPPPPPGGGGGGGGPPPPPPY~:..::::.!PG! ]],
[[ .PP5:.::.^75PPPPPPPPPPPPPPPPPPPPPPPP57^.::.:5PP  ]],
[[  ~GPY:.:?PPPPPPPPPPPPPPPPPPPPPPPPPPPPPP?:.:YPG~  ]],
[[   7GPJ!5PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP5!YPG7   ]],
[[    ~5PPPPPPPPPY~~!5PPPPPPPPPP5!~~YPPPPPPPPP5~    ]],
[[     5PPPPPPPPP^...7PPPPPPPPPP7...^PPPPPPPPP5.    ]],
[[    7?5PPPPPPPP~...?PPPPPPPPPP?...~PPPPPPPP5?7    ]],
[[     ~5PPPPPPPPPJ?YPPPPPPPPPPPPY?JPPPPPPPPP5~     ]],
[[   .YGGB###&&&#PPPPPPPPPPPPPPPPPPG&&&&###BGGGY.   ]],
[[  .G##&&&&&&&&&#PPPPPPPPPPPPPPPPP&&&&&&&&&&&##G.  ]],
[[  5GYP&&&&&&&&&&#PPPPPPPPPPPPPPP#&&&&&&&&&&&PYG5  ]],
[[  .  P#BP555PGB&&#GPPPPPPPPPPPP#&&&BG5YY5PB#P  .  ]],
[[     ~:.    .:5G&&&#5!!!!!!!!5&&&&GY.     .:~     ]],
[[              .5G#&&#!......!#&&#GY               ]],
[[                7PB&&&G~..~G&&&BP!                ]],
[[                 .!YGB##GG##BGY~.                 ]],
[[                    .:~!77!~:.                    ]],


-- [[^^^^^^^^^^^^:::::::::::::::::.....................]],
-- [[^^^^^^^^^^^:::::::::::............................]],
-- [[^^^^^^^^:::::::::::.......     ...................]],
-- [[^^^^^^::::::::::.... . ::^:^^.   .................]],
-- [[^^^^:::::::::::.    .:~J5555YJ?^   ...............]],
-- [[^::::::::::::::.  .^~7Y5PPPP55Y?.  ...............]],
-- [[:::::::::::::::.  .^^~!J55J????7  ................]],
-- [[:::::::::::::...  .^:^~~?Y!^^!?7..................]],
-- [[:::::::::::...... .!?YJ^7YYYYYY!!:................]],
-- [[::::::::...........^J7^.~!7JY5J!:................ ]],
-- [[::::::.............:77^^~!77JJ?^................  ]],
-- [[:::::.............. .~7??YYJ?7^.................  ]],
-- [[::..................  .^~~~~!J!................   ]],
-- [[................!J!^:^7?JJYPG~ ............     ]],
-- [[............   ^?5GP?7JJJYGBGJ.  .........      ]],
-- [[..........     ^?Y5GGYYY5PGGB! ..      ...      ]],
-- [[.....    ...   .J5GBGYPBBBGPP. ....   .. .      ]],
-- [[..     .....    !BGBB5B##BBB? ....    .         ]],
-- [[.    . ........ .5GGGPBB#BBG: .....   ..        ]],

}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("w", "  Vimwiki", ":VimwikiIndex<CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "caleb-mitchell"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
