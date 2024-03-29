local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  vim.notify("alpha.lua failed to load", "error")
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

  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^:^^::::::::::::::::::::::::::::::::::::::::::::::::::::::::::...:...................................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::......................................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^:^::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::.......................................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^:::^::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::.......................................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::..........................................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^:^^:^:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::..........................................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^:^^:::::::::::::::::::::::::::::::::::::::::::::::::::.........................................................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^:::::::::::::::::::::::::::::::::::::::::::::..................          ......................................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^:^^^^:::::::::::::::::::::::::::::::::::::::......        ............             ................................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^:::^::::::::::::::::::::::::::::::::::::......... .......    .......               ...............................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^::^^:^::::::::::::::::::::::::::::::::::::..............................  ......             ..........................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^::::::::::::::::::::::::::::::::::::::::::............................ ...  ........               ......................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^^::^:::::::::::::::::::::::::::::::::::::::::............    .....  ......           .                     ....................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^^::::::::::::::::::::::::::::::::::::::::::...... .....  ...  ..   ..............     ....                  ...................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^^^::::::::::::::::::::::::::::::::::::::::::......  ........            ...:::::::::::.:^~~~::...               .................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^^^^::::::::::::::::::::::::::::::::::::::::::.    ..  ...  .   .....    .:^~~~!77777777!!7?JJJ?7!~:.....            ................................................................]],
  -- [[^^^^^^^^^^^^^^^^^^^^::::::::::::::::::::::::::::::::::::::::::::.        ......   ..........~?JYYYYYYYYYYYY5YYYYJJJJJ?7!^^:...      .    ...............................................................]],
  -- [[^^^^^^^^^^^^^^^^:^:::::::::::::::::::::::::::::::::::::::::::::.                   ..:::::^:?JYYYYY5YYY55555YYYYYYYJJJJJ?7!~^:.      .    ..............................................................]],
  -- [[^^^^^^^^^^^^^^^^::::::::::::::::::::::::::::::::::::::::::::::.                    ..:^^^7^~YYYYYY5555555555555555YYYJJYYYYJ?7^.      .    .............................................................]],
  -- [[^^^^^^^^^^^^^^::::::::::::::::::::::::::::::::::::::::::::::::                    .::::~J7~JYYYY555555PPPPP5555555YYYYYYYYYYJ?!:.....  .   .............................................................]],
  -- [[^^^^^^^^^^^::::::::::::::::::::::::::::::::::::::::::::::::::.    ..            .::::^7J!!J555555PPPPGGGPPPPPPP555YYYYYYYYYYJJ7^........   .............................................................]],
  -- [[^^^^^^^:^::::::::::::::::::::::::::::::::::::::::::::::::::::.               ...::^~777^!YY555555PPPPPPPPGGPPPP5555YYYYYYYYYJJ?~:..:. ..    ............................................................]],
  -- [[^^^^^^:::::::::::::::::::::::::::::::::::::::::::::::::::::::.           ...^~~~!!7?7~^7YYY555Y5555PPPPPPPPPPPPP555555YYYYYJJJ?!^. .        ............................................................]],
  -- [[^^::^::::::::::::::::::::::::::::::::::::::::::::::::::::::::.       . ..::^~!!777!^^!?YYYYY555555PPPPPPPPPPP55P5555555YYYYJJ?7!:.         .............................................................]],
  -- [[::::::::::::::::::::::::::::::::::::::::::::::::::::::::::.::.       .....:^!!!!~^^!?JJJYYYY555555P555PPPPPPPPPPP55555555YYJJ??~.          .............................................................]],
  -- [[:::::::::::::::::::::::::::::::::::::::::::::::::::::::::.:....       .....^~!!!777???JJJYYY5555PPP555PPP55555PP55555555YYJJJ??~          ..............................................................]],
  -- [[::::::::::::::::::::::::::::::::::::::::::::::::::::::::::.....         ...:^~^^^^:^^^~~!7?J5PPPPPPP55PPPPPP555YYJYYYYYYYYJJ?77~          ..............................................................]],
  -- [[:::::::::::::::::::::::::::::::::::::::::::::::::::::::::......         ....... ....... ...:^!J55PPPPPP55?~^^^:::::::^^~!?JJ?77!.        ...............................................................]],
  -- [[:::::::::::::::::::::::::::::::::::::::::::::::::::::::.........        ......:^^^~!!!!!~:...:~JY555555Y?^:...::^^~~!!~~^^^7??7!.        ...............................................................]],
  -- [[:::::::::::::::::::::::::::::::::::::::::::::::::::::::.........        ....::::::::::^^^~~^^^^~7JJYYYJ?7!!~~~!!7777777??7~~7?7!:        ...............................................................]],
  -- [[:::::::::::::::::::::::::::::::::::::::::::::::::::.:............       ...:^^^:...:.  . ~!^^~^::!J55Y?77!^:^. ...::^^~!77???77!..      ................................................................]],
  -- [[::::::::::::::::::::::::::::::::::::::::::::::::::::...............     ...:~~^:...^^^~!!7?77??~:~J555JJY?!~7~:.::~^:^~7??JJ?7?!..  .~..................................................................]],
  -- [[:::::::::::::::::::::::::::::::::::::::::::::::....................     ...:~!~!~~^^^~!7777?J7~^^7JY55YJJ??!!!!77!7!!7?JJYJJ?77^.  .7!..................................................................]],
  -- [[::::::::::::::::::::::::::::::::::::::::::::...:...................     ...:~~!!7??????JJYYJ?~^^^!JJYYYJJYYYJJ????JJYYYYYYJJ?77^.:7J?...................................................................]],
  -- [[:::::::::::::::::::::::::::::::::::::::...::........................     .:^~!!!7?JJYY5555Y?!^^:^!JYYYJJJJY55555555555YYYYJJ?77:.7Y5?...................................................................]],
  -- [[:::::::::::::::::::::::::::::::::::::::::.::.........................    ..^~!!7?JYYYY55YYJ?~:::~7JYYJJJJJY5555555555555YYYJ?7!.^JY?^.................................................................. ]],
  -- [[:::::::::::::::::::::::::::::::::::::.:::.............................  ...:^~!7?JYYY5YYYYJ!^::^!?JYYYYJ??Y5555555555555YYYJ?7~^J5J:..................................................................  ]],
  -- [[:::::::::::::::::::::::::::::::::::...:......................................^~7?JYYYYYYJ?~::^^~7JY555YYJJJY555555555555YYJ??7~7J7:...................................................................  ]],
  -- [[:::::::::::::::::::::::::::::::..:::.........................................:^7?JJJJJJ??! .....:!?JY7~~!7?YYJJJY555555YJJJJ?7~~:....................................................................   ]],
  -- [[:::::::::::::::::::::::::::::.................................................:!??J???7!~^:...   .:^~!~::~?YYYJJ?JYY55YYJJJJ?7^....................................................................     ]],
  -- [[::::::::::::::::::::::::::::................................................:::!?Y?!~^::......::^^^^^~^~!~~!7!!!???Y55YYJJJ??7^...................................................................  .   ]],
  -- [[::::::::::::::::::::::::.:.:................................................:::~?5?~^^:.....::::::^..^~~~~~~~^^:^!7J55YJ?J???7:.................................................................    .   ]],
  -- [[:::::::::::::::::::::::::....................................................:::!YY7JYJ~....:^~!!!!77??7777!!~~77??Y5YJ??J??7!:............................................................. .. . .     ]],
  -- [[:::::::::::::::::::::.:.................................................... ..::^7JJJYYJ!^::::^~!!!777!!!~~~!?YYYYYYY??????77!.................................................................         ]],
  -- [[:::::::::::::::::::::.....................................................  ..:^^~7?J?J?7!~~!!!7777??J?????JYYY55Y5YJ????7??!:............................................................ ...          ]],
  -- [[:::::::::::::::::::........................................................   ..:^~!777777!!!77!!!!!77J5555YYYYYYYYYYYJ77777:.............................................................  .  .        ]],
  -- [[::::::::::::::::.:.:........................................................   ..:^^~!!!7777777!^^~~~!?JYYYYYYYYJJYYJJ?77!~:............................................................... ...         ]],
  -- [[:::::::::::::::::::..........................................................    ...:^~!!77?JJYYYYYYY555555YYJJ???JJ77~~^^.....................................................................  . .    ]],
  -- [[:::::::::::::::::::..........................................................       ..:^~!7?JYYYY555555555YYJ????77!~^:^~..........................................................................     ]],
  -- [[::::::::::::::::::...........................................................         ..:^~!7??JYYYYYYJJJJ?7??77^:..:~?J!...................................................................... .       ]],
  -- [[::::::::::.:..:..............................................................     ..     .:^~~77?JJ??7!7!7!!!^:...^7JYJ?J!....................................................................          ]],
  -- [[::::::.:................................................................. :.       ....     .::^~!!!~~^:::.....^!?YYYJJ7PP~........................................................... ......           ]],
  -- [[:::....................................................................  .~~...   .....       .......   ..:^!7?JJYYYYJ?JGP5~....................................................  .. ...   .            ]],
  -- [[:::...................................................................   :!5Y^..  ......            .:^!7JYJJJJYYYYYYJJPGPP5~......................................................                     ]],
  -- [[.................................................................. .  :~!?PP7^^:..........::~~~!7?J5555YYYJJJYYYYYJYGBGPPP5^......................................................                    ]],
  -- [[................................................................   . .~777JPG57777!~~^^~~!!7JY5555555YYYJJJJJYYYYYJPBGPPPPPY:... ............................................  .                      ]],
  -- [[:.:...........................................................    . .^!??7?Y5GGJ???77!~~^~~!!?Y5YYYYJJJJJJJJYYYYYJPBBGGPPPPP~...       ...................................... ..                      ]],
  -- [[............................................................      ..^~!?JJJY55GBPJ????7~~~!!!!7JJJJJJJJJJJJJJYYJ7PBBGGGPPPPP?.....      .......................................                       ]],
  -- [[.........................................................        ..:!~!?JYJY55PGBBPJJJ?7~~!!777?JJJJJJJJJJJYYY77GBBBGGGGPPPP5:...   .   ....    ...............................                       ]],
  -- [[......................................................           ..^?7~7JYYY555PGBBB5JJ?7!!!77???JJJJJJJJYYYJ!JB#BBBGGGGP5PP5:...       .....   .  .......................... .                       ]],
  -- [[...................................................              ..^J?!!?JYY555PPGBBBG5J7777??JJJJJYYYYJJYJ!!P##BBBGGGGGGP5P5:...   .    .....    . .      ................    ..                     ]],
  -- [[...................................................              ..^YJ7!7JYY5555PGGBBBBGJ777?JJJJJYJJJJJJ7~JB##BBBBGGGGGGP5PJ.....  ..   . .....  ...           .......... .                          ]],
  -- [[............................................  ..              .....:JJ?7!?Y55555PPGGBBB#BPJ777?JJJJJJJ?7!JG###BBBBGGGGGGGGPP~.... ......  ......  ...  ..           ........                          ]],
  -- [[......................................... ....  .               ....^JJ77?YYYY55PPPGGBBB##BPYJ???????JJ5PPPPGBBBBBGGGGGGGGGY....  ... ...       . ...  ..                ......                       ]],
  -- [[....................................      ...                   .... !Y77JYYYY55PPPGGGPP5YJYY55PP5Y5PGGBBBG5J77J5GBBBGGGGGG?.... ......  ...   ..  .    ...   ...... . .    ...                       ]],
  -- [[.................................        .. ......                ...^5??YYYYYY55PPGGGGGGP5YYY5PPPGGGGBBGGGGGG5?!~7YPGBBGGG~...  ....... .  ....            .   .  .  ...           .                 ]],
  -- [[............................            ..............             ..:5YJYYYJJJ5GBBGGGGGGGGGPYJYPGPPPGGGGGGGBBBBGP5?77JPGBY......  ....  . ..  ....              .   ..  ...        ...               ]],
  -- [[.......................             ..   ............               ..JP5YYJJ5GGGBBBGPPPPPPPY!JPGGGGGBBBBBBBBBBBBBBGBG5YY5~......     ..  ..... ...            . . . ..     .         ...             ]],
  -- [[...................                 ...  ............               ..^5555PGBBBGGBB#BBGPPP57!GBBBBBBB####BBBBBBBBBGBBBBBJ.......... .    .......              .......          ..      .             ]],
  -- [[................       .            .......... ......               ...?GBBBGGBBGGGGBB##BBB5~7B###########BBBGBBBBBGBBBBB!....  ......    ...  .               ...        ...      .. .               ]],
  -- [[..............      ....         ............. .......               ..~BBBGGGGGBBGGGGBBBB#P~7############BGGBBBBBBBBBBBG:.............  .... ..    .          ....     .....          .              ]],
  -- [[.............     ...           ............... .. ...               ...5BGGGGGGGBBBBGGGBBBG7?###########BGBBBBBBBGGBBBBJ.... ..........  .. ..    .. ..       ... .   .  .            .              ]],
  -- [[............      ..         .. ............... .....     .          ...~BGGGGGGGGBBBBBBGGBBJ?B########BBBBBBBBBBBGGBBBG^...............  .  ..     ...       ... ..  .                               ]],
  -- [[............     .              ................ ..      .  ..        ...5GGGGGPGGGGBBBBBBGB??B##BBBBBBBBBBBBBGBBBGGGGBJ....  ..... ....... ....     ..       .. ...  ..    .                         ]],
  -- [[...........      .                .............. ...  ...  ....       ...~GGGGGGGGBGGGBBBBBBJJ#BBBBBBB###BBBBBGBBGGBGGP^.... ...... ............      .       .   .....    .                          ]],
  -- [[...........              ....      .............  ..    .   ....       ...YGGGGGGGGGGGGGGBBBJ5###########BBBBGGBBGGBBG?....  ....... ...........      .       .  ....      .                          ]],
  -- [[...........       ..     ....       ............. .... ... .......     ...~GGGGGGGGBGBGGGGGG7P####BBB####BBBGGGBGGBBBP^.... ........  ...... ....            ..........                               ]],
  -- [[...........        ..   ......       ............  ......   ......     ....JGGPPGGGBBBBGGGPP~G###BBBB####BBBGGBBGGBBBY..... ......... ..  .. .....     .     ........ ..                             ]],
}
dashboard.section.buttons.val = {
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("w", "  Vimwiki", ":VimwikiIndex<CR>"),
  dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
  dashboard.button("F", "  Find text", ":Telescope live_grep <CR>"),
  dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
  dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
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
