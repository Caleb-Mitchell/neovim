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

-- [[ .                          . ]],
-- [[J?!:                    :!?JPJ]],
-- [[?P^^!JY?^            ^?YJ!^^P?]],
-- [[:P!...:~YP77??????77PY~:...!P:]],
-- [[ ?P^.:7YPPGGPPPPPPGGPPY7:.^P? ]],
-- [[  Y575PPPP5PPPPPPPP5PPPP575Y  ]],
-- [[  .5PPPPP~.!PPPPPP!.~PPPPP5.  ]],
-- [[  .?PPPPP!:7PPPPPP7:!PPPPP?.  ]],
-- [[  7GB##&#GPPPPPPPPPP#&###BG7  ]],
-- [[ !P#&&&&&&PPPPPPPPPB&&&&&&#P! ]],
-- [[   ?7~~!5#&BYJJJJY#&#Y~^~7?   ]],
-- [[         J#&B^..^B&#?         ]],
-- [[          :?GB55BG?:          ]],
-- [[             ...              ]],

-- The below is the best size fox
[[~Y?!:.                            .:!?Y~]],
[[5?55Y7^                        ^7Y5Y?5GJ]],
[[!GJ.:^!J5PJ~                ~JP5?!^:.JG!]],
[[.PP^.:..:^75P7^^~!!!!!!~^^7P57^:..:.^PP.]],
[[ ?GJ.::.:^75PPGGGGGGGGGGGGPP57^:.:::JG? ]],
[[ .PP7.:~YPPPPPPPPPPPPPPPPPPPPPPY~:.7PP. ]],
[[  :PP7JPPPPPPPPPPPPPPPPPPPPPPPPPPJ7PP:  ]],
[[   .5PPPPPPP7:^JPPPPPPPPJ^:7PPPPPPP5.   ]],
[[   ^5PPPPPPP^..!PPPPPPPP!..^PPPPPPP5^   ]],
[[   .!PPPPPPPJ!!5PPPPPPPP5!!JPPPPPPP!.   ]],
[[   ?GBB##&&#PPPPPPPPPPPPPPG#&&###BBG?   ]],
[[  P##&&&&&&&#PPPPPPPPPPPPP#&&&&&&&&##P  ]],
[[ :!:P&##BB##&#GPPPPPPPPPPB&&##BBB#&G:!: ]],
[[    7~:...^YB&&#Y777777Y#&&BJ:. ..~!    ]],
[[           .YB&&#~....~#&&BJ            ]],
[[             ~5B&&P!!P&&B5^             ]],
[[               .!?5555?~.               ]],

-- [[~:.                                         .:~!.]],
-- [[GGP5J~.                                 .~J5PGGG7]],
-- [[P7~7YPG5?^.                         .^?5GPY7~7PP7]],
-- [[^PP!..::~?5GPY~.                 .~YPG5?~::..7PP^]],
-- [[ 5PY::::..:^7YPP?:..:^^^^^^^^:..:?PPY7^:..::::YP5]],
-- [[ 7GP~.::::..:~YPPPPPPGGGGGGGGPPPPPPY~:..::::.!PG!]],
-- [[ .PP5:.::.^75PPPPPPPPPPPPPPPPPPPPPPPP57^.::.:5P5.]],
-- [[  ~GPY:.:?PPPPPPPPPPPPPPPPPPPPPPPPPPPPPP?:.:YPG~ ]],
-- [[   7GPJ!5PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP5!YPG7  ]],
-- [[    ~5PPPPPPPPPY~~!5PPPPPPPPPP5!~~YPPPPPPPPP5~   ]],
-- [[    .5PPPPPPPPP^...7PPPPPPPPPP7...^PPPPPPPPP5.   ]],
-- [[    7?5PPPPPPPP~...?PPPPPPPPPP?...~PPPPPPPP5?7   ]],
-- [[     ~5PPPPPPPPPJ?YPPPPPPPPPPPPY?JPPPPPPPPP5~    ]],
-- [[   .YGGB###&&&#PPPPPPPPPPPPPPPPPPG#&&&###BGGGY.  ]],
-- [[  .G##&&&&&&&&&#PPPPPPPPPPPPPPPPP&&&&&&&&&&&##G. ]],
-- [[  5GYP&&&&&&&&&&#PPPPPPPPPPPPPPP#&&&&&&&&&&&PYG5 ]],
-- [[  .  P#BP55PPGB&&#GPPPPPPPPPPPP#&&&BG5YY5PB#P  . ]],
-- [[     ~:.    .:5G&&&#5!!!!!!!!5&&&&GY.     .:~    ]],
-- [[              .5G#&&#!......!#&&#GY.             ]],
-- [[                7PB&&&G~..~G&&&BP!               ]],
-- [[                 .!YGB##GG##BGY~.                ]],
-- [[                    .:~!77!~:.                   ]],

-- [[.!~:.                                        .:~!.]],
-- [[?GGGP5J~.                                .~J5PGGG7]],
-- [[7PP7~7YPG5?^.                        .^?5GPY7~7PP7]],
-- [[^PP!..::~?5GPY~.                  .~YPG5?~::..!PP^]],
-- [[ 5PY::::..:^7YPP?:..::^^^^^^::..:?PPY7^:..::::YP5 ]],
-- [[ !GP~.::::..:~YPPPPPPGGGGGGGGPPPPPPY~:..::::.!PG! ]],
-- [[ .PP5:.::.^75PPPPPPPPPPPPPPPPPPPPPPPP57^.::.:5PP  ]],
-- [[  ~GPY:.:?PPPPPPPPPPPPPPPPPPPPPPPPPPPPPP?:.:YPG~  ]],
-- [[   7GPJ!5PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP5!YPG7   ]],
-- [[    ~5PPPPPPPPPY~~!5PPPPPPPPPP5!~~YPPPPPPPPP5~    ]],
-- [[     5PPPPPPPPP^...7PPPPPPPPPP7...^PPPPPPPPP5.    ]],
-- [[    7?5PPPPPPPP~...?PPPPPPPPPP?...~PPPPPPPP5?7    ]],
-- [[     ~5PPPPPPPPPJ?YPPPPPPPPPPPPY?JPPPPPPPPP5~     ]],
-- [[   .YGGB###&&&#PPPPPPPPPPPPPPPPPPG&&&&###BGGGY.   ]],
-- [[  .G##&&&&&&&&&#PPPPPPPPPPPPPPPPP&&&&&&&&&&&##G.  ]],
-- [[  5GYP&&&&&&&&&&#PPPPPPPPPPPPPPP#&&&&&&&&&&&PYG5  ]],
-- [[  .  P#BP555PGB&&#GPPPPPPPPPPPP#&&&BG5YY5PB#P  .  ]],
-- [[     ~:.    .:5G&&&#5!!!!!!!!5&&&&GY.     .:~     ]],
-- [[              .5G#&&#!......!#&&#GY               ]],
-- [[                7PB&&&G~..~G&&&BP!                ]],
-- [[                 .!YGB##GG##BGY~.                 ]],
-- [[                    .:~!77!~:.                    ]],


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
