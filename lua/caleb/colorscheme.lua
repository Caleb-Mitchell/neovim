vim.cmd [[
try
  " let g:gruvbox_baby_background_color = 'dark'
  let g:gruvbox_baby_transparent_mode = 1
  colorscheme gruvbox-baby
  highlight Tabline guibg=#fff guifg=#a99f83
  highlight ColorColumn guibg=grey
  highlight QuickFixLine guibg=black
  " highlight current line number in red
  hi CursorLineNr guifg=firebrick
  set cursorline
  set cursorlineopt=number
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
