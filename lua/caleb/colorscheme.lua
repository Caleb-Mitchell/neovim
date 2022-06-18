vim.cmd [[
try
  " let g:gruvbox_baby_background_color = 'dark'
  " let g:gruvbox_baby_transparent_mode = 1
  colorscheme gruvbox
  highlight ColorColumn guibg=grey
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
