vim.cmd [[
try
  let g:gruvbox_baby_background_color = 'dark'
  let g:gruvbox_baby_transparent_mode = 0
  colorscheme gruvbox-baby
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
