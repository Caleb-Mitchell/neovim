vim.cmd [[
try
  " let g:gruvbox_baby_background_color = 'dark'
  let g:gruvbox_baby_transparent_mode = 1
  colorscheme gruvbox-baby
  highlight Tabline guibg=#fff guifg=white
  highlight ColorColumn guibg=grey
  highlight QuickFixLine guibg=black
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
