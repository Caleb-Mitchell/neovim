local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Assign ctrl-/ to comment out individual lines
keymap("n", "<C-_>", '<Plug>(comment_toggle_current_linewise)', opts)

-- Assign leader-d + vim direction to navigate windows, or,
-- if window doesn't exist in that direction, create one.
keymap("n", "<leader><leader>h", ":call WinMove('h')<CR>", opts)
keymap("n", "<leader><leader>j", ":call WinMove('j')<CR>", opts)
keymap("n", "<leader><leader>k", ":call WinMove('k')<CR>", opts)
keymap("n", "<leader><leader>l", ":call WinMove('l')<CR>", opts)
vim.cmd [[
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction
]]

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<C-h>", ":bprevious<CR>", opts)

-- Move to Beginning/End of line
keymap("n", "<S-h>", "0", opts)
keymap("n", "<S-l>", "$", opts)

-- Move text up and down
--keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
--keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --

-- Visual --
-- Don't overwrite value in register if pasting over other text
keymap("v", "p", '"_dP', opts)

-- Move to Beginning/End of line
keymap("v", "<S-h>", "0", opts)
keymap("v", "<S-l>", "$", opts)

-- Move text up and down
--keymap("v", "<A-j>", ":m .+1<CR>==", opts)
--keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Visual Block --
-- Assign ctrl-/ to comment out visual blocked lines
keymap("x", "<C-_>", '<Plug>(comment_toggle_linewise_visual)', opts)

-- Assign ,y to yank without newlines (useful for wrapped text in markdown files)
keymap("x", ",y", ":<C-U>let oldtw=&textwidth<cr> :<C-U>set textwidth=1000<cr> gvgqgvy :let &textwidth=oldtw<cr> :set textwidth?<cr> gvgq", opts)

-- Move text up and down
--keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
--keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
--keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
--keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
