vim.cmd [[

  " This function formats markdown files with gw, while ignoring
  " code fenced by triple backticks
  function! FormatMarkdown()
    " Save cursor position
    let save_cursor = getpos(".")
    " Ignore text inside fenced code blocks
    let code_block = 0
    " Loop through each line of the buffer
    for i in range(1, line("$"))
      let line = getline(i)
      " Check for code block
      if line =~ '^```'
        let code_block = !code_block
      endif
      " If not in code block, format line
      if code_block == 0
        execute "normal! 0"
        execute "normal! gw$"
      endif
    endfor
    " Restore cursor position
    call setpos(".", save_cursor)
  endfunction

  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
    autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200})
    autocmd BufWinEnter * :set formatoptions=qj
    autocmd FileType qf set nobuflisted
  augroup end

  augroup _nvim_treesitter
    autocmd!
    autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
  augroup end

  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd =
  augroup end

  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
    autocmd BufWritePost *.md call FormatMarkdown()
  augroup end

  augroup _alpha
    autocmd!
    autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
  augroup end

  augroup _vimwiki
    autocmd FileType vimwiki set filetype=markdown
  augroup end

  " augroup _indent
  "   autocmd!
  "   autocmd FileType go setlocal shiftwidth=4 tabstop=4
  " augroup end
]]

-- Autoformat
-- augroup _lsp
--   autocmd!
--   autocmd BufWritePre * lua vim.lsp.buf.formatting()
-- augroup end
