vim.cmd [[

  function! FormatMarkdown()
    " Save cursor position
    let save_cursor = getpos(".")
    " Loop through each paragraph in the buffer
    let paragraphs = []
    let current_paragraph = []
    for line in getline(1, '$')
      if empty(line)
        if !empty(current_paragraph)
          call add(paragraphs, current_paragraph)
          let current_paragraph = []
        endif
      else
        call add(current_paragraph, line)
      endif
    endfor
    if !empty(current_paragraph)
      call add(paragraphs, current_paragraph)
    endif
    for para in paragraphs
      let para_lines = para
      if len(para_lines) > 0
        let para_first_line = para_lines[0]
        " Check for code block
        if para_first_line =~ '^```'
          " Skip this paragraph if it's inside a code block
          continue
        endif
        " Format paragraph
        execute "normal! " . (line(".") - 1) . "G"
        execute "normal! gwap"
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
