vim.cmd [[

  " This function formats markdown files with gwap, while ignoring
  " code fenced by triple backticks
  function! FormatMarkdown()
    " Save cursor position
    let save_cursor = getpos(".")
    " Ignore text inside fenced code blocks
    let code_block = 0
    let in_code_block = 0
    " Loop through each line in the buffer
    for line_num in range(1, line('$'))
      let line_content = getline(line_num)
      " Check for code block
      if line_content =~ '^```' && code_block == 0
        let code_block = 1
      elseif line_content =~ '^```' && code_block == 1
        let code_block = 0
      endif
      " Format line if not in code block and the previous line was blank
      if code_block == 0 && (line_content =~# '\v\S' || in_code_block == 1)
        if line_num > 1 && getline(line_num - 1) =~# '^\s*$'
          execute "normal! " . (line_num - 1) . "G"
          execute "normal! gwap"
        endif
        let in_code_block = 0
      elseif code_block == 1
        let in_code_block = 1
      endif
    endfor
    " Restore cursor position
    call setpos(".", save_cursor)
  endfunction

  " enable autochdir
  augroup _autochdir
    autocmd!
    autocmd VimEnter * :set autochdir
  augroup end

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
    " remove tabline from alpha buffer
    autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
  augroup end

  augroup _vimwiki
    " set vimwiki filetype to markdown
    autocmd FileType vimwiki set filetype=markdown
  augroup end

  " augroup _indent
  "   autocmd!
  "   autocmd FileType go setlocal shiftwidth=4 tabstop=4
  " augroup end

  " Autoformat
   " augroup _lsp
   "   autocmd!
   "   autocmd BufWritePre * lua vim.lsp.buf.format()
   " augroup end
]]
