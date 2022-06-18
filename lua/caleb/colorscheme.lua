vim.cmd [[
try
  " let g:gruvbox_baby_background_color = 'dark'
  let g:gruvbox_baby_transparent_mode = 1
  colorscheme gruvbox-baby
  " highlight ColorColumn guibg=#32302F
  highlight ColorColumn guibg=#d3d3d3
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
